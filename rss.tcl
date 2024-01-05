# Define source folders and corresponding announce channels
set source_folders {
    "/media/Filmek/Kulfoldi" "#Magyar"
    "/media/Filmek/Magyar" "#Magyar"
    "/media/Filmek/Roman" "#Magyar"
    "/media/1T/regi" "#Magyar"
    "/media/1T/xxx" "#Magyar"
    "/media/YnM/Konyvek" "#Magyar"
    "/media/xxx/xxx" "#Magyar"
    "/media/xxx/Mp3" "#Magyar"
    "/media/2T/Rajzfilmek" "#Magyar"
    "/media/2T/Series" "#Magyar"
    "/media/Film/KabareHu" "#Magyar"
    "/media/Film/KabareRo" "#Magyar"







}

# Initialize an array to store databases and last check times
array set sources {}

# Initialize databases and last check times for each source folder
foreach {source_folder announce_channel} $source_folders {
    set database_file [file join $source_folder [file tail $source_folder].txt]
    set sources($source_folder) [list $announce_channel $database_file]
    set sources(${source_folder}_last_check_time) 0

    # Schedule the initial execution of the procedure for each source folder
    after 0 [list check_for_new_items $source_folder]
}

# Function to check for new items (files and directories) in a directory and its subdirectories
proc check_for_new_items {source_folder} {
    global sources

    # Extract the announce channel and database file from the array
    set source_info $sources($source_folder)
    set announce_channel [lindex $source_info 0]
    set database_file [lindex $source_info 1]

    # Get the current time
    set current_time [clock seconds]

    # Get a list of all items (files and directories) in the specified directory and its subdirectories
    set items [glob -nocomplain -tails -directory $source_folder -join *]

    # Define a custom message based on the source folder
    set custom_message ""
    switch $source_folder {
        "/media/Filmek/Kulfoldi" {
            set custom_message "Feltöltve 2022-töl"
        }
        "/media/Filmek/Magyar" {
            set custom_message "Feltoltve Magyar"
        }
        "/media/Filmek/Roman" {
            set custom_message "- Feltöltve Roman"
        }
	"/media/1T/regi" {
            set custom_message "- Feltöltve 2022-ig"
        }
	"/media/1T/xxx" {
            set custom_message "- Feltöltve xxx"
        }
	"/media/xxx/xxx" {
            set custom_message "- Feltöltve xxx"
        }
	"/media/xxx/Mp3" {
            set custom_message "- Feltöltve Mp3"
        }
        "/media/2T/Rajzfilmek" {
            set custom_message "- Feltöltve Rajzfilmek"
        }
	"/media/2T/Series" {
            set custom_message "- Feltöltve Sorozatok"
	}
        "/media/Film/KabareHu" {
            set custom_message "- Feltöltve KabareHu"
        }
        "/media/Film/KabareRo" {
            set custom_message "- Feltöltve KabareRo"
        }
	default {
            set custom_message "- Feltöltve"
        }
    }

    foreach item $items {
        # Construct the full path
        set item_path [file join $source_folder $item]

        # Check if the item has been modified since the last check
        set item_mtime [file mtime $item_path]

        if {$item_mtime > $sources(${source_folder}_last_check_time)} {
            # Check if the item is already in the database
            set item_in_database [check_database $item_path $database_file]

            if {!$item_in_database} {
                # Announce the new item in the specified channel with the custom message
                putserv "PRIVMSG $announce_channel :$custom_message: [file tail $item_path]"

                # Update the database
                update_database $item_path $database_file
            }
        }
    }

    # Check for items in the database that are no longer present in the directory
    set items_in_db [split [read_file $database_file] "\n"]
    foreach item_in_db $items_in_db {
        set item_path_db [file join $source_folder $item_in_db]

        if {$item_in_db ne "" && ![file exists $item_path_db]} {
            # Announce the removal of the item from the directory
            putserv "PRIVMSG $announce_channel :- Törölve: [file tail $item_path_db]"

            # Remove the item from the database
            remove_from_database $item_in_db $database_file
        }
    }

    # Update the last check time for the current source folder to the current time
    set sources(${source_folder}_last_check_time) $current_time

    # Reschedule the procedure to run again after a specific interval (e.g., 15 seconds)
    after 15000 [list check_for_new_items $source_folder]
}

# Function to check if an item is in the database
proc check_database {item database_file} {
    if {[file exists $database_file]} {
        set file_content [read_file $database_file]
        set items [split $file_content "\n"]
        return [expr {[lsearch -exact $items $item] != -1}]
    }
    return 0
}

# Function to update the database with a new item
proc update_database {item database_file} {
    set db_content [read_file $database_file]
    set db_content "$item\n$db_content"
    write_file $database_file $db_content
    putlog "Updated database with: $item"
}

# Function to remove an item from the database
proc remove_from_database {item database_file} {
    set db_content [read_file $database_file]
    set items [split $db_content "\n"]
    set updated_items [lsearch -all -inline -not -exact $items $item]
    set updated_content [join $updated_items "\n"]
    write_file $database_file $updated_content
    putlog "Removed item from database: $item"
}

# Function to read content from a file
proc read_file {file_path} {
    if {[file exists $file_path]} {
        set file_id [open $file_path r]
        set file_content [read $file_id]
        close $file_id
        return $file_content
    }
    return ""
}

# Function to write content to a file
proc write_file {file_path content} {
    set file_id [open $file_path w]
    puts -nonewline $file_id $content
    close $file_id
    putlog "Wrote to file: $file_path"
}

# ... (rest of the script remains unchanged)

# Output a message to the console indicating that the script is loaded
putlog "Script loaded: Monitoring multiple source folders and their subdirectories for new and removed items"
