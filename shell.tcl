
set eggshell(trigger)           "!"
set eggshell(channels)          "#chan"


bind pub o|o ${eggshell(trigger)}run execute



proc execute {nick host hand chan text} {
    global eggshell
    foreach channel $eggshell(channels) {
        if {[string match -nocase $channel $chan]} {
            set hostname [exec hostname]
            set shell_command "bash -c"
            set command "$shell_command \"$text\""

            set fp [open "| $command"]
            set data [read $fp]
            if {[catch {close $fp} err]} {
                putserv "PRIVMSG ${chan} :Execution of command: ${text} failed on ${hostname}."
            } else {
                set output [split $data "\n"]
                foreach line $output {
                    putserv "PRIVMSG ${chan} :${line}"
                }
            }
        }
    }
}


