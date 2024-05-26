# Load MySQL package
package require mysqltcl

# Define MySQL database connection parameters
set mysql_host "localhost"
set mysql_user ""
set mysql_password ""
set mysql_database "eggdropdb"

# Connect to MySQL database
set db [mysqlconnect -host $mysql_host -user $mysql_user -password $mysql_password -db $mysql_database]

# Create DateRequest table if not exists
set query {
    CREATE TABLE IF NOT EXISTS movie (
        id INT AUTO_INCREMENT PRIMARY KEY,
        User VARCHAR(255) NOT NULL,
        Title VARCHAR(255) NOT NULL,
        Pin INT NOT NULL,
        AddedDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        Done BOOLEAN DEFAULT FALSE,
        DoneDate TIMESTAMP,
        DoneBy VARCHAR(255)
    )
}


if {[catch {mysqlquery $db $query} error]} {
    putlog "Error creating movie table: $error"
} else {
    putlog "Table 'movie' created successfully."
}


proc handle_message {nick host hand chan text} {
    global botnick db

    # Check if the message matches the format [prefix]!del, [prefix]!kell, [prefix]!pin, or [prefix]!ok
    if {[regexp -nocase {\[(.*?)\]!(del|kell|pin|ok)} $text match prefix command]} {
        set without_brackets [string trim $prefix "[]"]

        # If the command is !pin, extract the pin number and call show_movie_info procedure
        if {[string tolower $without_brackets] eq "markus" && $command eq "pin"} {
            set pin [lindex [split $text] end]
            show_movie_info $nick $host $hand $chan $pin
        } elseif {[string tolower $without_brackets] eq "markus" && $command eq "del"} {
            # Call the procedure to clear the database
            clear_database $nick $host $hand $chan
        } elseif {[string tolower $without_brackets] eq "markus" && $command eq "ok"} {
            # Call the procedure to remove the movie
            set arg [lindex [split $text] end]
            ok_movie $nick $host $hand $chan $arg
        } elseif {$command eq "kell"} {
            # Extract the movie title
            set movie_title [string trim [string range $text [expr {[string first "]" $text] +6}] end]]
            
            # Call the add_movie procedure
            add_movie $without_brackets $host $hand $chan $movie_title
        } else {
            # Respond with a message indicating an invalid prefix or command
            putnow "PRIVMSG $chan :Nincs jogosultsága ehhez a parancshoz"
        }
    }
}




# Define the ok_movie procedure
proc ok_movie {nick host hand chan arg} {
    global db

    # Check if the movie with the specified pin exists
    set query "SELECT COUNT(*) FROM movie WHERE Pin=$arg"
    if {[catch {set result [mysqlsel $db $query -flatlist]} error]} {
        putnow "PRIVMSG $chan :An error occurred while checking the movie."
        putlog "Error checking movie: $error"
        return
    }
    
    # If the movie exists, update the Done, DoneDate, and DoneBy columns
    if {[lindex $result 0] > 0} {
        set update_query "UPDATE movie SET Done=TRUE, DoneDate=NOW(), DoneBy='$nick' WHERE Pin=$arg" ;# Added DoneBy update
        if {[catch {mysqlquery $db $update_query} error]} {
            putnow "PRIVMSG $chan :Hiba történt az állapot frissítésekor."
            putlog "Hiba történt: $error"
        } else {
            putnow "PRIVMSG $chan :A $arg pin-hez tartozó film státusza frissítve lett."
			putnow "PRIVMSG $chan :https://irc.ynm.hu/media"
        }
    } else {
        putnow "PRIVMSG $chan :Nincs ilyen $arg pin."
    }
}




# Bind the ok_movie procedure to the !remove command

# Procedure to add a movie
proc add_movie {nick host hand chan arg} {
    global db

    # Generate a random pin number (between 1000 and 9999)
    set pin [expr {int(rand() * 9000) + 1000}]

    # Insert movie title, user, and pin number into the DateRequest table
    set query "INSERT INTO movie (User, Title, Pin) VALUES ('$nick', '$arg', '$pin')"
    if {[catch {mysqlquery $db $query} error]} {
        putlog "Error adding movie: $error"
    } else {
        putnow "PRIVMSG $chan :Kérésed regisztráltuk *$nick* a következö *$pin* - kodot kapta."
		putnow "PRIVMSG $chan :Infót itt találhatsz a kéréseddel https://irc.ynm.hu/media."
    }
}

# Define the list_pins procedure
proc list_pins {nick host hand chan} {
    global db

    # Fetch all pins from the database
    set query "SELECT Pin FROM movie"
    set result [mysqlsel $db $query]

    # Check if any pins were fetched
    if {[llength $result] == 0} {
        putnow "PRIVMSG $chan :No movies found."
    } else {
        # Output each pin individually
        foreach pin $result {
            putnow "PRIVMSG $chan :Movie pin: $pin"
        }
    }
}
# Define the list_pins procedure
proc list_pins {nick host hand chan pin} {
    global db

    # Fetch all pins from the database
    set query "SELECT Pin FROM movie"
    set result [mysqlsel $db $query -list]

    # Check if any pins were fetched
    if {[llength $result] == 0} {
        putnow "PRIVMSG $chan :No movies found."
    } else {
        # Extract pins from the result and concatenate them into a single line
        set pins [join [lmap row $result {lindex $row 0}] ", "]
        putnow "PRIVMSG $chan :Movie pins: $pins"
    }
}

# Bind the list_pins procedure to the !listpins command
bind pub - !listpins list_pins



# Define the show_movie_info procedure
proc show_movie_info {nick host hand chan pin} {
    global db

    # Fetch details for the specified pin
    set query "SELECT User, Title, AddedDate FROM movie WHERE Pin=$pin"
    set result [mysqlsel $db $query -flatlist]

    # Check if any details were fetched
    if {[llength $result] == 0} {
        putnow "PRIVMSG $chan :No movie found with pin $pin."
    } else {
        # Extract the details
        lassign $result user title date
        putnow "PRIVMSG $chan :Movie with pin $pin added by $user. Title: '$title'. Date: $date."
    }
}
# Bind the show_movie_info procedure to the !pin command
bind pub - !pin show_movie_info


# Törlés
proc clear_database {nick host hand chan} {
    global db

    
    # Drop the movie table
    set query "DROP TABLE IF EXISTS movie"

    # Execute the query
    if {[catch {mysqlquery $db $query} error]} {
        putnow "PRIVMSG $chan :Hiba az adatbázis törlésekor: $error"
    } else {
        putnow "PRIVMSG $chan :Adatbázis sikeresen törölve."
    }
}
bind pub - "*" clear_database
bind pub - "*" handle_message
bind pub - "*" ok_movie
