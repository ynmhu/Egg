
set trigger "-"  ;# Triger
bind pub o|o $trigger run



proc run {nick host hand chan text} {
    global eggshell
    set command "mudslide send groupid \"$text\""

    set fp [open "| $command"]
    set data [read $fp]

   putlog "Whatsapp -> $text"
   }
