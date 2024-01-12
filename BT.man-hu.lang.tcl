#########################################################################################################################################
#                                         _   _   _   _   _   _   _   _   _   _   _   _   _   _                                         #
#                                        / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \                                        #
#                                       ( T | C | L | S | C | R | I | P | T | S | . | N | E | T )                                       #
#                                        \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/                                        #
#                                                                                                                                       #
#########################################################################################################################################
##                                          BlackTools - The Ultimate Channel Control Script                                           ##
##                                                     One TCL. One smart Eggdrop                                                      ##
#########################################################################################################################################
# Acest fisier ruleaza impreuna cu BlackTools si este incarcat automat daca exista in folderul lang (fisier obligatoriu sa existe)      #
#########################################################################################################################################
#                                                                                                                                       #
#                                                      *** The Future is Here ***                                                       #
#                                                                                            Copyright 2008 - 2021 @ www.tclscripts.net #
#########################################################################################################################################
#                                                                                                                                       #
#   LIMBA ROMANA                                                                                                                        #
#   ######  #          #     #####  #    # ####### ####### ####### #        #####     #     #    #    #     # #     #    #    #         #
#   #     # #         # #   #     # #   #     #    #     # #     # #       #     #    ##   ##   # #   ##    # #     #   # #   #         #
#   #     # #        #   #  #       #  #      #    #     # #     # #       #          # # # #  #   #  # #   # #     #  #   #  #         #
#   ######  #       #     # #       ###       #    #     # #     # #        #####     #  #  # #     # #  #  # #     # #     # #         #
#   #     # #       ####### #       #  #      #    #     # #     # #             #    #     # ####### #   # # #     # ####### #         #
#   #     # #       #     # #     # #   #     #    #     # #     # #       #     #    #     # #     # #    ## #     # #     # #         #
#   ######  ####### #     #  #####  #    #    #    ####### ####### #######  #####     #     # #     # #     #  #####  #     # #######   #
#                                                                                                                                       #
#########################################################################################################################################


################################################# MAN COMENZI #####################################################


set black(say.hu.man.1) "\005\[BT\]\005 Használati szintaxis: \002%char%man\002 <parancs>"
set black(say.hu.man.2) "\005\[BT\]\005 Használati szintaxis: \002%botnick% man\002 <parancs>"
set black(say.hu.man.2_1) "\005\[BT\]\005 Használati szintaxis: \002man\002 <parancs>"

#Man

set black(say.hu.man.3) "\[MAN\] \002Man\002 a BlackTools második legfontosabb parancsa, amely lehetővé teszi a BlackTools felhasználói kézikönyvéből származó információk megtekintését."
set black(say.hu.man.4) "\[MAN\] Ez információkat szolgáltat a védelmi rendszerek, modulok és parancsok használatáról."
set black(say.hu.man.4_1) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.5) "\[MAN\] \002%char%man\002 <parancs> ; \002%botnick% man\002 <parancs> ; \002(PRIVMSG) man\002 <parancs>"

#h

set black(say.hu.man.6) "\[MAN\] \002h\002 a BlackTools legfontosabb parancsa."
set black(say.hu.man.7) "\[MAN\] Ez lehetővé teszi a script opciók kategóriáinak böngészését."
set black(say.hu.man.8) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.9) "\[MAN\] \002%char%h\002 <kategória> ; \002%botnick% h\002 <kategória> ; \002(PRIVMSG) h\002 \[#csatorna\] <kategória>"
set black(say.hu.man.10) "\[MAN\] Ahhoz, hogy láthasd, milyen parancsok állnak rendelkezésedre, használd: \002%char%h\002 ; %botnick% h ; \002(PRIVMSG) h\002 \[#csatorna\]"

#tip

set black(say.hu.man.6666) "\[MAN\] \002tip\002 automatikusan megjeleníti a \002véletlenszerű tippeket\002 a BlackTools használati útmutatójának minden információja végén."

#v

set black(say.hu.man.11) "\[MAN\] \002v\002 egy olyan parancs, amely lehetővé teszi, hogy \002VOICE/DEVOICE\002 (+v) jogot adj egy vagy több felhasználónak a csatornán."
set black(say.hu.man.12) "\[MAN\] Ha nincs megadva semmilyen nick, és nincs voice (+v) jogod a csatornán, akkor az eggdrop voice (+v) jogot ad neked."
set black(say.hu.man.13) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.14) "\[MAN\] \002%char%v\002 <nick1> <nick2>.. ; \002%botnick% v\002 <nick1 <nick2>.. ; \002(PRIVMSG) v\002 <#csatorna> <nick1> <nick2>.."
set black(say.hu.man.15) "\[MAN\] \002%char%v +\002 (tömeges voice) ; \002%char%v -\002 (tömeges devoice)"

#o

set black(say.hu.man.16) "\[MAN\] \002o\002 egy olyan parancs, amely lehetővé teszi, hogy \002OP/DEOP\002 (+@) jogot adj egy vagy több felhasználónak a csatornán."
set black(say.hu.man.17) "\[MAN\] Ha nincs megadva semmilyen nick, és nincs op (@) jogod a csatornán, akkor az eggdrop op (@) jogot ad neked."
set black(say.hu.man.18) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.19) "\[MAN\] \002%char%o\002 <nick1> <nick2>.. ; \002%botnick% o\002 <nick1 <nick2>.. ; \002(PRIVMSG) o\002 <#csatorna> <nick1> <nick2>.."
set black(say.hu.man.20) "\[MAN\] \002%char%o +\002 (tömeges op) ; \002%char%o -\002 (tömeges deop)"

#UserList

set black(say.hu.man.22) "\[MAN\] \002UserList\002 megjeleníti egy adott csatorna teljes hozzáférési listáját."
set black(say.hu.man.23) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.24) "\[MAN\] \002%char%userlist\002 <szint|all> ; \002%botnick% userlist\002 <szint|all> ; \002(PRIVMSG) userlist\002 <#csatorna> <szint|all>"
set black(say.hu.man.25) "\[MAN\] Az \002<szint>\002 hozzáférések a következők: \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002 ; \002%msg.4%\002"
set black(say.hu.man.26) "\[MAN\] Az \002<szint>\002 hozzáférések a következők: \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002 ; \002%msg.4%\002 ; \002%msg.12%\002"
set black(say.hu.man.27) "\[MAN\] Az \002<szint>\002 hozzáférések a következők: \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002 ; \002%msg.4%\002 ; \002%msg.12%\002 ; \002%msg.13%\002 ; \002%msg.15%\002"
set black(say.hu.man.28_1) "\[MAN\] Az \002<szint>\002 hozzáférések a következők: \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002"

#Version

set black(say.hu.man.28) "\[MAN\] \002Version\002 egy olyan parancs, amely segítségével megtekintheti az eggdrop által használt BlackTools script verzióját."
set black(say.hu.man.29) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.30) "\[MAN\] \002%char%version\002 ; %botnick% version ; \002(PRIVMSG) version\002"

#Info

set black(say.hu.man.31) "\[MAN\] \002Info\002 információkat mutat be az eggdrop adatbázisában található felhasználókról/csalásokról."
set black(say.hu.man.32) "\[MAN\] Információk, mint a hozzáférési szint, egy csatorna módjai, az üdvözlőüzenet, a felhasználók hostmaszkjai, a felfüggesztés, mikor látták őket utoljára, stb."
set black(say.hu.man.33) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.34) "\[MAN\] \002%char%info\002 <handle|#canal> ; \002%botnick% info\002 <handle|#canal> ; \002(PRIVMSG) info\002 <handle|#canal>"

#Act

set black(say.hu.man.35) "\[MAN\] \002Act\002 egy olyan parancs, amely segítségével az eggdrop elküld egy /me (ACTION) típusú üzenetet a csatornára."
set black(say.hu.man.36) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.37) "\[MAN\] \002%char%act\002 <üzenet> ; \002%botnick% act\002 <üzenet> ; \002(PRIVMSG) act\002 <#csatorna> <üzenet>"

#t

set black(say.hu.man.38) "\[MAN\] \002t\002 este egy parancs, amelynek segítségével az eggdrop megváltoztatja a CSATORNA TÉMÁJÁt a megadott szöveggel."
set black(say.hu.man.39) "\[MAN\] SZINTAXIS HASZNÁLAT:"
set black(say.hu.man.40) "\[MAN\] \002%char%t\002 \[#csatorna\] <szöveg> ; \002%botnick% t\002 \[#csatorna\] <szöveg> ; \002(PRIVMSG) t\002 <#csatorna> <szöveg>"
set black(say.hu.man.41) "\[MAN\] Az eggdrop a téma megváltoztató nevet is tartalmazza: \002%char%set +showhandle\002"

#Cycle

set black(say.hu.man.42) "\[MAN\] \002Cycle\002 egy parancs, amely azt kéri az eggdrop-tól, hogy adjon egy \002/hop\002-ot, vagy újra csatlakozzon egy adott csatornához."
set black(say.hu.man.43) "\[MAN\] SZINTAXIS HASZNÁLAT:"
set black(say.hu.man.44) "\[MAN\] \002%char%cycle\002 \[időtartam|indok\] ; \002%botnick% cycle\002 \[időtartam|indok\] ; \002(PRIVMSG) cycle\002 <#csatorna> \[időtartam|indok\]"

#Mode

set black(say.hu.man.45) "\[MAN\] \002Mode\002 beállítja vagy eltávolítja a csatorna megadott módjait."
set black(say.hu.man.46) "\[MAN\] SZINTAXIS HASZNÁLAT:"
set black(say.hu.man.47) "\[MAN\] \002%char%mode\002 (+/-)<módok> ; %botnick% mode\002 (+/-)<módok> ; \002(PRIVMSG) mode\002 <#csatorna> (+/-)<módok>"

#i

set black(say.hu.man.48) "\[MAN\] \002i\002 egy parancs, amely azt kéri az eggdrop-tól, hogy meghívja a megadott felhasználót a meghatározott csatornára."
set black(say.hu.man.49) "\[MAN\] SZINTAXIS HASZNÁLAT:"
set black(say.hu.man.50) "\[MAN\] \002%char%i\002 <nick> ; \002%botnick% i\002 <nick> ; \002(PRIVMSG) i\002 <#csatorna> <nick>"

#k

set black(say.hu.man.62) "\[MAN\] \002k\002 egy parancs, amely kickel bizonyos felhasználókat a csatornáról. Az indok opcionális."
set black(say.hu.man.63) "\[MAN\] SINTAXIS FOLOSIRE:"
set black(say.hu.man.64) "\[MAN\] \002%char%k\002 <nick|host> \[indok\] ; \002%botnick% k\002 <nick|host> \[indok\] ; \002(PRIVMSG) k\002 <#csatorna> <nick|host> \[indok\]"
set black(say.hu.man.65) "\[MAN\] Opcionális beállítások: \002k-reason\002 (alapértelmezett indok beállítása)"

#w

set black(say.hu.man.66) "\[MAN\] \002w\002 egy parancs, amely figyelmeztetést ad egy felhasználónak egy előre meghatározott indokkal ellátott kick segítségével."
set black(say.hu.man.67) "\[MAN\] SINTAXIS FOLOSIRE:"
set black(say.hu.man.68) "\[MAN\] \002%char%w\002 <nick> ; \002%botnick% w\002 <nick> ; \002(PRIVMSG) w\002 <#csatorna> <nick>"
set black(say.hu.man.69) "\[MAN\] Opcionális beállítások: \002w-reason\002 (alapértelmezett figyelmeztető indok beállítása) ; \002w-message\002 (alapértelmezett figyelmeztető üzenet beállítása)"

#Check

set black(say.hu.man.70) "\[MAN\] \002Check\002 egy parancs, amely egy felhasználót privát üzenetben ellenőriz, hogy vírusos-e vagy reklámoz-e."
set black(say.hu.man.71) "\[MAN\] SINTAXIS FOLOSIRE:"
set black(say.hu.man.72) "\[MAN\] \002%char%check\002 <nick>\002 ; \002%botnick% check\002 <nick> ; \002(PRIVMSG) check\002 \[#csatorna\] <nick>"
set black(say.hu.man.73) "\[MAN\] Opcionális beállítások: \002%char%set\002 check-message <üzenet> ; \002(PRIVMSG) set\002 check-message <üzenet> (alapértelmezett ellenőrző üzenet beállítása)"

#sb

set black(say.hu.man.74) "\[MAN\] \002sb\002 egy olyan parancs, amely segítségével keresni és megjeleníteni lehet információkat egy adott kitiltásról (támogatja a wildcard karaktereket)."
set black(say.hu.man.75) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.76) "\[MAN\] \002%char%sb\002 \[-regex\] <nick|host|id|regex> ; \002%botnick% sb\002 \[-regex\] <nick|host|id|regex> ; \002(PRIVMSG) sb\002 <#csatorna> \[-regex\] <nick|host|id|regex>"
set black(say.hu.man.77) "\[MAN\] \002%char%sb\002 \[-regex\] <nick|host|id|regex> \[global\] ; \002%botnick% sb\002 \[-regex\] <nick|host|id|regex> \[global\] ; \002(PRIVMSG) sb\002 <#csatorna> \[-regex\] <nick|host|id|regex> \[global\]"
set black(say.hu.man.78) "\[MAN\] Ha a \002<nick>\002 meg van adva, és nincs a %chan%-on, az eggdrop \002WHOIS\002-t végez, és ellenőrzi, hogy van-e tilalmazása az \002ident/host/nick\002-re, majd részleteket jelenít meg róla."

#id

set black(say.hu.man.79) "\[MAN\] \002id\002 egy olyan parancs, amellyel tilalmazhatod az \002IDENT\002-et. Ha megadod egy felhasználó nickjét, az eggdrop automatikusan elveszi az azonosítóját."
set black(say.hu.man.80) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.81) "\[MAN\] \002%char%id\002 <nick|ident> ; \002%botnick% id\002 <nick|ident> ; \002(PRIVMSG) id\002 <#csatorna> <nick|ident>"
set black(say.hu.man.82) "\[MAN\] Opcionális beállítások: \002id-reason\002 (alapértelmezett indok beállítása); \002id-bantime\002 (alapértelmezett tilalom időtartam beállítása); \002id-banmask\002 (alapértelmezett tilalom maszk beállítása)"

#n

set black(say.hu.man.83) "\[MAN\] \002n\002 egy olyan parancs, amellyel tilalmazhatod a \002NICK\002-et."
set black(say.hu.man.84) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.85) "\[MAN\] \002%char%n\002 <nick> ; \002%botnick% n\002 <nick> ; \002(PRIVMSG) n\002 <#csatorna> <nick>"
set black(say.hu.man.86) "\[MAN\] Opcionális beállítások: \002n-reason\002 (alapértelmezett indok beállítása); \002n-bantime\002 (tilalom időtartamának beállítása percekben) ; \002n-banmask\002 (alapértelmezett tilalom maszk beállítása)"

#Spam

set black(say.hu.man.87) "\[MAN\] \002Spam\002 egy olyan parancs, amellyel tilalmazhatsz egy felhasználót egy \002SPAM\002 alapú előre meghatározott indokkal."
set black(say.hu.man.88) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.89) "\[MAN\] \002%char%spam\002 <nick|host> ; \002%botnick% spam\002 <nick|host> ; \002(PRIVMSG) spam\002 <#csatorna> <nick|host>"
set black(say.hu.man.90) "\[MAN\] Opcionális beállítások: \002spam-reason\002 (alapértelmezett indok beállítása); \002spam-bantime\002 (tilalom időtartamának beállítása percekben); \002spam-banmask\002 (alapértelmezett tilalom maszk beállítása)"

#dr

set black(say.hu.man.91) "\[MAN\] \002dr\002 egy olyan parancs, amellyel tilalmazhatsz egy felhasználót egy \002DRONA\002 alapú előre meghatározott indokkal."
set black(say.hu.man.92) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.93) "\[MAN\] \002%char%dr\002 <nick|host> ; \002%botnick% dr\002 <nick|host> ; (PRIVMSG) dr\002 <#csatorna> <nick|host>\002"
set black(say.hu.man.94) "\[MAN\] Opcionális beállítások: \002dr-reason\002 (alapértelmezett indok beállítása); \002dr-bantime\002 (tilalom időtartamának beállítása percekben); \002dr-banmask\002 (alapértelmezett tilalom maszk beállítása)"

#b

set black(say.hu.man.95) "\[MAN\] \002b\002 egy olyan parancs, amellyel tilalmazhatsz egy felhasználót egy előre meghatározott időtartamú indokkal. Ha a \0020\002-et adod meg, a tilalom véglegessé válik (blacklisted)."
set black(say.hu.man.96) "\[MAN\] Időtartam formátum: <x>\002m\002 = perc, <x>\002h\002 = óra, \002d\002 = nap, \0020\002 = végleges"
set black(say.hu.man.97) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.98) "\[MAN\] \002%char%b\002 \[-regex\] <nick|host|regex> \[-szint\] \[időtartam\] \[indok\] \[-c/comment\] ; \002%botnick% b\002 \[-regex\] <nick|host|regex> \[-szint\] \[időtartam\] \[indok\] \[-c/comment\] ; \002(PRIVMSG) b\002 <#csatorna> \[-regex\] <nick|host|regex> \[-szint\] \[időtartam\] \[indok\] \[-c/comment\]"
set black(say.hu.man.98_1) "\[MAN\] ** Megjegyzés: Az \[-c/comment\] opció használatával az eggdrop második sorban megjeleníti az adott tilalommal kapcsolatos információkat, beleértve a megjegyzést is. **"
set black(say.hu.man.99) "\[MAN\] \002%char%b\002 \[-regex\] <nick|host> \[-szint\] \[időtartam\] \[global|link\] \[indok\] \[-c/comment\] ; \002%botnick% b\002 \[-regex\] <nick|host|regex> \[-szint\] \[időtartam|link\] \[global\] \[indok\] \[-c/comment\] ; \002(PRIVMSG) b\002 <#csatorna> \[-regex\] <nick|host> \[-szint\] \[időtartam\] \[global|link\] \[indok\] \[-c/comment\]"
set black(say.hu.man.100) "\[MAN\] Opcionális beállítások: \002b-reason\002 (alapértelmezett indok beállítása); \002b-bantime\002 (tilalom időtartamának beállítása percekben); \002b-banmask\002 (alapértelmezett tilalom maszk beállítása)"
set black(say.hu.man.100_1) "\[MAN\] ** Megjegyzés: Az \002REGEX\002 típusú tilalomra a \002<nick>!<ident>@<host>/\[realname\]/\[banmask típus\]\002 formátumot használhatod (a \[ \] közötti mezők opcionálisak). Az elérhető \002banmask típusok\002 megtekintéséhez használd a \001%char%man banmask\001 parancsot."

#ub

set black(say.hu.man.101) "\[MAN\] \002ub\002 egy olyan parancs, amellyel törölheted az egy vagy több tiltást egy adott csatornáról (támogatja a wildcard karaktereket). \002FIGYELEM\002: Ha CSAK a \002*\002-t adod meg, az eggdrop eltávolítja az összes csatorna tiltását."
set black(say.hu.man.102) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.103) "\[MAN\] \002%char%ub\002 \[-regex\] <nick|host|id|regex> ; \002%botnick% ub\002 \[-regex\] <nick|host|id|regex> ; \002(PRIVMSG) ub\002 <#csatorna> \[-regex\] <nick|host|id|regex>\002"
set black(say.hu.man.104) "\[MAN\] \002%char%ub\002 \[-regex\] <nick|host|id|regex> \[global\]\002 \[link\] ; \002%botnick% ub\002 \[-regex\] <nick|host|id|regex> \[global\] \[link\] ; \002(PRIVMSG) ub\002 <#csatorna> \[-regex\] <nick|host|id|regex> \[global\] \[link\]"
set black(say.hu.man.105) "\[MAN\] Ha a \002<nick>\002-t megadod, és nincs a %chan%-on, az eggdrop \002WHOIS\002-t végez, és ellenőrzi, hogy van-e tilalmazása az \002ident/host/nick\002-re, majd eltávolítja a tilalmat."

#Bot

set black(say.hu.man.106) "\[MAN\] \002Bot\002 egy olyan parancs, amellyel tilalmazhatsz egy felhasználót egy \002BOT\002 alapú előre meghatározott indokkal."
set black(say.hu.man.107) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.108) "\[MAN\] \002%char%bot\002 <nick|host>\002 ; \002%botnick% bot\002 <nick|host> ; \002(PRIVMSG) bot\002 <#csatorna> <nick|host>"
set black(say.hu.man.109) "\[MAN\] Opcionális beállítások: \002bot-reason\002 (alapértelmezett indok beállítása); \002bot-bantime\002 (tilalom időtartamának beállítása percekben); \002bot-banmask\002 (alapértelmezett tilalom maszk beállítása)"

#bw

set black(say.hu.man.110) "\[MAN\] \002bw\002 egy olyan parancs, amellyel tilalmazhatsz egy felhasználót egy \002CUVANT INTERZIS\002 alapú előre meghatározott indokkal."
set black(say.hu.man.111) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.112) "\[MAN\] \002%char%bw\002 <nick|host> ; \002%botnick% bw\002 <nick|host> ; \002(PRIVMSG) bw\002 <#csatorna> <nick|host>\002"
set black(say.hu.man.113) "\[MAN\] Opcionális beállítások: \002bw-reason\002 (alapértelmezett indok beállítása); \002bw-bantime\002 (tilalom időtartamának beállítása percekben); \002bw-banmask\002 (alapértelmezett tilalom maszk beállítása)"

#Black

set black(say.hu.man.114) "\[MAN\] \002Black\002 egy olyan parancs, amellyel tiltást adhatsz egy felhasználónak egy \002KORLÁTLAN\002 ideig tartó okkal (állandó tiltás)."
set black(say.hu.man.115) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.116) "\[MAN\] \002%char%black\002 <nick|host> \[indok\] \[-c/comment\] ; \002%botnick% black\002 <nick|host> \[indok\] \[-c/comment\] ; \002(PRIVMSG) black\002 <#csatorna> <nick|host> \[indok\] \[-c/comment\]\002"
set black(say.hu.man.116_1) "\[MAN\] ** Megjegyzés: Az \[-c/comment\] opciót használva az eggdrop egy második sort mutat meg a tiltásra vonatkozó információkkal, beleértve ezt a megjegyzést is. **"
set black(say.hu.man.117) "\[MAN\] Opcionális beállítások: \002black-reason\002 (alapértelmezett indok beállítása); \002black-banmask\002 (alapértelmezett tilalom maszk beállítása)"

#Stick

set black(say.hu.man.118) "\[MAN\] \002Stick\002 egy olyan parancs, amellyel \sticky\ típusú tiltást adhatsz egy vagy több felhasználónak bizonyos okkal és időtartammal. Ez a tiltás mindig fennmarad a csatorna tiltások listáján."
set black(say.hu.man.118_1) "\[MAN\] Időtartam formátum: <x>\002m\002 = perc, <x>\002h\002 = óra, <x>\002d\002 = nap, \0020\002 = állandó"
set black(say.hu.man.119) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.120) "\[MAN\] \002%char%stick\002 <nick|host> \[időtartam\] \[indok\] \[-c/comment\] ; %botnick% stick\002 <nick|host> \[időtartam\] \[indok\] \[-c/comment\] ; \002(PRIVMSG) stick\002 <#csatorna> <nick|host> \[időtartam\] \[indok\] \[-c/comment\]"
set black(say.hu.man.120_1) "\[MAN\] ** Megjegyzés: Az \[-c/comment\] opciót használva az eggdrop egy második sort mutat meg a tiltásra vonatkozó információkkal, beleértve ezt a megjegyzést is. **"
set black(say.hu.man.121) "\[MAN\] Opcionális beállítások: \002stick-reason\002 (alapértelmezett indok beállítása); \002stick-bantime\002 (tilalom időtartamának beállítása percekben); \002stick-banmask\002 (alapértelmezett tilalom maszk beállítása)"

#Gag

set black(say.hu.man.122) "\[MAN\] \002Gag\002 egy olyan parancs, amellyel elnémíthatsz egy felhasználót egy bizonyos időtartamra (ez idő alatt nem tud beszélni a csatornán)."
set black(say.hu.man.122_1) "\[MAN\] Időtartam formátum: <x>\002m\002 = perc, <x>\002h\002 = óra, <x>\002d\002 = nap"
set black(say.hu.man.123) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.124) "\[MAN\] \002%char%gag\002 <nick> \[időtartam\] \[indok\] ; \002%botnick% gag\002 <nick> \[időtartam\] \[indok\] ; \002(PRIVMSG) gag\002 <#csatorna> <nick> \[időtartam\] \[motiv\]\002."
set black(say.hu.man.125) "\[MAN\] Opcionális beállítások: \002gag-reason\002 (alapértelmezett indok beállítása); \002gag-bantime\002 (tilalom időtartamának beállítása percekben); \002gag-banmask\002 (alapértelmezett tilalom maszk beállítása)"


#Add

set black(say.hu.man.126) "\[MAN\] \002Add\002 hozzáad egy felhasználót a csatorna hozzáférési listájához."
set black(say.hu.man.127) "\[MAN\] ** Megjegyzés: Ha a felhasználó már a csatornán van, a hozzáadáskor automatikusan használt hostmaszk a jelenlegi lesz. **"
set black(say.hu.man.128) "\[MAN\] ** Megjegyzés: Ha a felhasználó nincs a csatornán, a hozzáadáskor automatikusan használt hostmaszk: *!*@%user%.users.undernet.org. **"
set black(say.hu.man.134) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.135) "\[MAN\] \002%char%add\002 <szint> <nick|Xfelhasználónév> ; \002%botnick% add\002 <szint> <nick|Xfelhasználónév> ; \002(PRIVMSG) add\002 <#csatorna> <szint> <nick|Xfelhasználónév>"

#Adduser

set black(say.hu.man.136) "\[MAN\] További információkért arról, \002hogyan adhatsz hozzáférést valakinek\002, nézd meg: \002%char%man add\002"

#DelAcc

set black(say.hu.man.142) "\[MAN\] \002DelAcc\002 egy parancs, amellyel törölheted a felhasználói hozzáférést a csatorna listáról."
set black(say.hu.man.142_1) "\[MAN\] ** Megjegyzés: Nagyobb hozzáférésednek kell lennie, mint a felhasználónak (tehát, ha az hozzáférésed \002OP\002, és a felhasználónak \002ADMIN\002, akkor nem törölheted az hozzáférését). **"
set black(say.hu.man.143) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.144) "\[MAN\] \002%char%delacc\002 <handle> ; %botnick% delacc\002 <handle> ; \002(PRIVMSG) delacc\002 <#csatorna> <handle>"
set black(say.hu.man.145) "\[MAN\] \002%char%delacc\002 <owner|master> <handle> ; \002%botnick% delacc\002 <owner|master> <handle> ; \002(PRIVMSG) delacc\002 <#csatorna> <owner|master> <handle> (globális hozzáférés törlése)"

#Del

set black(say.hu.man.146) "\[MAN\] \002Del\002 egy olyan parancs, amellyel teljesen törölheted a felhasználót az eggdrop memóriájából."
set black(say.hu.man.147) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.148) "\[MAN\] \002%char%del\002 <handle> ; \002%botnick% del\002 <handle> ; \002(PRIVMSG) del\002 <#csatorna> <handle>"

#unGag

set black(say.hu.man.149) "\[MAN\] \002unGag\002 egy olyan parancs, amellyel lehetővé teszed egy \002gag\002 visszavonását."
set black(say.hu.man.150) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.151) "\[MAN\] \002%char%ungag\002 <nick|host> ; \002%botnick% ungag\002 <nick|host> ; \002(PRIVMSG) ungag\002 <#csatorna> <nick|host>"

#BanList

set black(say.hu.man.152) "\[MAN\] \002BanList\002 egy olyan parancs, amely segítségével megtekintheted a csatorna tilalom listájának összes tilalmát."
set black(say.hu.man.153) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.154) "\[MAN\] \002%char%banlist\002 <handle|all|regex|gag|other> ; \002%botnick% banlist\002 <handle|all|regex|gag|other> ; \002(PRIVMSG) banlist\002 <#csatorna> <handle|all|regex|gag|other>"
set black(say.hu.man.155) "\[MAN\] \002%char%banlist\002 <handle|all|regex|gag|other|global> ; \002%botnick% banlist\002 <handle|all|regex|gag|other|global> ; \002(PRIVMSG) banlist\002 <#csatorna> <handle|all|regex|gag|other|global>"

#AddHost

set black(say.hu.man.156) "\[MAN\] \002AddHost\002 egy olyan parancs, amely segítségével hozzáadhatsz egy hostmaszkot egy adott felhasználóhoz."
set black(say.hu.man.157) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.158) "\[MAN\] \002%char%addhost\002 <handle> <host> ; \002%botnick% addhost\002 <handle> <host> ; \002(PRIVMSG) addhost\002 <handle> <host>"

#DelHost

set black(say.hu.man.159) "\[MAN\] \002DelHost\002 egy olyan parancs, amely segítségével törölhetsz egy hostmaszkot egy adott felhasználóról."
set black(say.hu.man.160) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.161) "\[MAN\] \002%char%delhost\002 <handle> <host> ; \002%botnick% delhost\002 <handle> <host> ; \002(PRIVMSG) delhost\002 <handle> <host>"

#chUser

set black(say.hu.man.162) "\[MAN\] \002chUser\002 egy olyan parancs, amellyel megváltoztathatod egy adott felhasználó <handle> (nevét) <új handle>-re."
set black(say.hu.man.163) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.164) "\[MAN\] \002%char%chuser\002 <handle> <új handle> ; \002%botnick% chuser\002 <handle> <új handle> ; (PRIVMSG) \002chuser\002 <handle> <új handle>"

#s

set black(say.hu.man.165) "\[MAN\] \002s\002 felfüggeszti egy felhasználó hozzáférését egy adott csatornán és egy meghatározott időszakra. Ha nincs megadva \002\[időtartam\]\002, akkor az alapértelmezett érték lesz használva."
set black(say.hu.man.165_1) "\[MAN\] ** Megjegyzés: Egy hozzáférés felfüggesztésére csak akkor van lehetőség, ha az a tiednél kisebb. **"
set black(say.hu.man.165_2) "\[MAN\] Formátum időtartam: <x>\002m\002 = perc, <x>\002h\002 = óra, <x>\002d\002 = nap"
set black(say.hu.man.166) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.167) "\[MAN\] \002%char%s\002 <handle> \[időtartam\] \[indok\] ; \002%botnick% s\002 <handle> \[időtartam\] \[indok\] ; \002(PRIVMSG) s\002 <#csatorna> <handle> \[időtartam\] \[indok\]"

#us

set black(say.hu.man.168) "\[MAN\] \002us\002 egy olyan parancs, amely segítségével eltávolíthatod egy adott felhasználó felfüggesztését egy adott csatornáról."
set black(say.hu.man.168_1) "\[MAN\] ** Megjegyzés: Az UNSUSPEND parancsot csak egy olyan felhasználóval használhatod, akinek a hozzáférése kisebb a tiédnél. Emellett a felfüggesztés szintjének kisebbnek vagy egyenlőnek kell lennie a saját hozzáférésednél. **"
set black(say.hu.man.169) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.170) "\[MAN\] \002%char%us\002 <handle> ; \002%botnick% us\002 <handle> ; \002(PRIVMSG) us\002 <#csatorna> <handle>"

#Auto

set black(say.hu.man.171) "\[MAN\] \002Auto\002 megváltoztatja egy adott felhasználó \002automode\002 értékét. FIGYELEM: A felhasználónak rendelkeznie kell hozzáféréssel a csatornához."
set black(say.hu.man.172) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.173) "\[MAN\] AutoVOICE: \002%char%auto (+/-)v\002 <handle> ; %botnick% auto (+/-)v <handle> ; \002(PRIVMSG) auto\002 <#csatorna> (+/-)v <handle>"
set black(say.hu.man.174) "\[MAN\] AutoOP: \002%char%auto (+/-)o\002 <handle> ; %botnick% auto (+/-)o <handle> ; \002(PRIVMSG) auto\002 <#csatorna> (+/-)o <handle>"
set black(say.hu.man.175) "\[MAN\] AutoVOICE: \002%char%auto (+/-)v\002 <handle> \[global\] ; %botnick% auto\002 (+/-)v <handle> \[global\] ; \002(PRIVMSG) auto\002 <#csatorna> (+/-)v <handle> \[global\]"
set black(say.hu.man.176) "\[MAN\] AutoOP: \002%char%auto (+/-)o\002 <handle> \[global\] ; %botnick% auto\002 (+/-)o <handle> \[global\] ; \002(PRIVMSG) auto\002 <#csatorna> (+/-)o <handle> \[global\]"


################################################# MAN PROTECTII #####################################################

#AntiPub

set black(say.hu.man.177) "\[MAN\] \002AntiPub\002 egy védelmi modul a \"#\" vagy \"www.*\" típusú reklámok ellen (wildcard-eket támogat)."
set black(say.hu.man.178) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.179) "\[MAN\] \002%char%set\002 (+/-)antipub ; \002%botnick% set\002 (+/-)antipub ; \002(PRIVMSG) set\002 (+/-)antipub"
set black(say.hu.man.180) "\[MAN\] \002%char%antipub\002 \[#csatorna\] add <link|#csatorna> ; \002%char%antipub\002 \[#csatorna\] list"
set black(say.hu.man.180_1) "\[MAN\] \002%char%antipub\002 \[#csatorna\] add <+szó> (kivételt ad hozzá) ; \002%char%antipub\002 \[#csatorna\] del <lista sorszáma> (antipub törlése a listáról)"
set black(say.hu.man.181) "\[MAN\] Opcionális beállítások: \002antipub-reason\002; antipub-bantime; \002antipub-warn\002; antipub-banmethod; \002antipub-banmask\002"

#AntiNotice

set black(say.hu.man.183) "\[MAN\] \002AntiNotice\002 egy védelmi modul a %chan%-en végrehajtott \"NOTICE\" típusú műveletek ellen."
set black(say.hu.man.184) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.185) "\[MAN\] \002%char%set\002 (+/-)antinotice ; \002%botnick% set\002 (+/-)antinotice ; \002(PRIVMSG) set\002 <#csatorna> (+/-)antinotice"
set black(say.hu.man.186) "\[MAN\] Opcionális beállítások: \002antinotice-reason\002; antinotice-bantime; \002antinotice-warn\002; antinotice-banmethod; \002antinotice-banmask\002"
set black(say.hu.man.187) "\[MAN\] Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#AntiCtcp

set black(say.hu.man.188) "\[MAN\] \002AntiCtcp\002 egy védelmi modul a %chan%-en végrehajtott \"CTCP\" típusú műveletek ellen."
set black(say.hu.man.189) "\[MAN\] HASZNÁLATI SZINTAKSZIS:"
set black(say.hu.man.190) "\[MAN\] \002%char%set\002 (+/-)antictcp ; \002%botnick% set\002 (+/-)antictcp ; \002(PRIVMSG) set\002 <#csatorna> (+/-)antictcp"
set black(say.hu.man.191) "\[MAN\] Opcionális beállítások: \002antictcp-reason\002, antictcp-bantime, \002antictcp-warn\002, antictcp-banmethod, \002antictcp-banmask\002"
set black(say.hu.man.192) "\[MAN\] Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"


#AntiBadWord

set black(say.hu.man.193) "\[MAN\] \002AntiRosszSzó\002 egy védelmi modul a felhasználók ellen, akik bizonyos *tiltott* szavakat/ kifejezéseket használnak a %chan%-en (támogatja a wildcard karaktereket)."
set black(say.hu.man.194) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.195) "\[MAN\] \002%char%set\002 (+/-)antibadword ; \002%botnick% set\002 (+/-)antibadword ; \002(PRIVMSG) set\002 <#csatorna> (+/-)antibadword"
set black(say.hu.man.196) "\[MAN\] \002%char%badword\002 \[#csatorna\] add <szó|kifejezés> ; \002%char%badword \[#csatorna\] list\002 ; \002%char%badword\002 \[#csatorna\] del <listaszám>"
set black(say.hu.man.197) "\[MAN\] \002%char%badword\002 \[#csatorna\] add <+szó> (kivétel hozzáadása) ; \002%char%badword\002 \[#csatorna\] add <szó:listaszám metódus> (lásd: \002%char%man banmethod\002)"
set black(say.hu.man.198) "\[MAN\] Opcionális beállítások: \002antibadword-reason\002, \002antibadword-bantime\002, \002antibadword-warn\002, \002antibadword-banmethod\002, \002antibadword-banmask\002"

#AntiLongText

set black(say.hu.man.199) "\[MAN\] \002AntiHosszúSzöveg\002 egy védelmi modul a felhasználók ellen, akik túl hosszú mondatokat írnak a %chan%-en."
set black(say.hu.man.200) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.201) "\[MAN\] \002%char%set\002 (+/-)antilongtext ; \002%botnick% set\002 (+/-)antilongtext ; \002(PRIVMSG) set\002 <#csatorna> (+/-)antilongtext"
set black(say.hu.man.202) "\[MAN\] Opcionális beállítások: \002antilongtext-reason\002, \002antilongtext-bantime\002, \002antilongtext-warn\002, \002antilongtext-banmethod\002, \002antilongtextmax\002, \002antilongtext-banmask\002"
set black(say.hu.man.203) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"


#BadQuitPart

set black(say.hu.man.204) "\[MAN\] \002AntiRosszKilépésRész\002 egy védelmi modul a felhasználók ellen, akik elhagyják a %chan%-et, és tiltott szavakat használnak a /part vagy /quit parancsban (támogatja a wildcard karaktereket)."
set black(say.hu.man.205) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.206) "\[MAN\] \002%char%set\002 (+/-)badquitpart ; \002%botnick% set\002 (+/-)badquitpart ; \002(PRIVMSG) set\002 <#csatorna> (+/-)badquitpart"
set black(say.hu.man.207) "\[MAN\] \002%char%badquitpart\002 \[#csatorna\] add <szó> ; \002%char%badquitpart\002 \[#csatorna\] list"
set black(say.hu.man.208) "\[MAN\] \002%char%badquitpart\002 \[#csatorna\] add <+szó> (kivétel hozzáadása) ; \002%char%badquitpart\002 \[#csatorna\] del <listaszám> (listaelem törlése)"
set black(say.hu.man.209) "\[MAN\] Opcionális beállítások: \002antibadquitpart-reason\002, \002antibadquitpart-bantime\002,  \002antibadquitpart-banmethod\002, \002antibadquitpart-banmask\002"

#AntiJoinPart

set black(say.hu.man.210) "\[MAN\] \002AntiCsatlakozásKilépés\002 egy védelmi modul a felhasználók ellen, akik belépnek a %chan%-re, és túl gyorsan kilépnek."
set black(say.hu.man.211) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.212) "\[MAN\] \002%char%set (+/-)antijoinpart\002 ; %botnick% set (+/-)antijoinpart ; \002(PRIVMSG) set <#csatorna> (+/-)antijoinpart\002"
set black(say.hu.man.213) "\[MAN\] Opcionális beállítások: \002antijoinpart-reason\002, \002antijoinpart-bantime\002, \002antijoinpart-banmethod\002, \002antijoinpart-banmask\002"
set black(say.hu.man.214) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"


#AntiSpam

set black(say.hu.man.215) "\[MAN\] \002AntiSpam\002 egy védelmi modul a felhasználók ellen, akik spam üzeneteket küldenek az eggdropnak \001#\001 vagy \001*www.*\001 tartalommal (lásd még: \002!man spamjoinmessage\002)."
set black(say.hu.man.216) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.217) "\[MAN\] \002%char%set\002 (+/-)antispam ; \002%botnick% set\002 (+/-)antispam ; \002(PRIVMSG) set\002 <#csatorna> (+/-)antispam"
set black(say.hu.man.217_1) "\[MAN\] \002%char%antispam\002 \[#csatorna\] add <*szöveg*> ; \002%char%antispam \[#csatorna\] list\002"
set black(say.hu.man.217_2) "\[MAN\] \002%char%antispam\002 \[#csatorna\] add <+szó> (kivétel hozzáadása) ; \002%char%antispam\002 \[#csatorna\] del <listaszám> (listaelem törlése)"
set black(say.hu.man.218) "\[MAN\] Opcionális beállítások: \002antispam-reason\002, \002antispam-message\002, \002antispam-bantime\002, \002antispam-banmask\002, \002antispam-scantime\002"
set black(say.hu.man.219) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"


#AntiRepeat

set black(say.hu.man.221) "\[MAN\] \002AntiIsmétlés\002 egy védelmi modul a felhasználók ellen, akik túl gyakran ismétlik magukat a %chan%-en."
set black(say.hu.man.222) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.223) "\[MAN\] \002%char%set\002 (+/-)antirepeat ; \002%botnick% set\002 (+/-)antirepeat ; \002(PRIVMSG) set\002 <#csatorna> (+/-)antirepeat"
set black(say.hu.man.224) "\[MAN\] Opcionális beállítások: \002antirepeat-reason\002, \002antirepeat-bantime\002, \002antirepeat-warn\002, \002antirepeat-banmethod\002, \002antirepeat-banmask\002, \002antirepeat-setting\002"
set black(say.hu.man.225) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"


#AntiColor

set black(say.hu.man.226) "\[MAN\] \002AntiSzín\002 egy védelmi modul a felhasználók ellen, akik \002SZÍNEKET\002 használnak a %chan%-en."
set black(say.hu.man.227) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.228) "\[MAN\] \002%char%set\002 (+/-)anticolor ; \002%botnick% set\002 (+/-)anticolor ; \002(PRIVMSG) set\002 <#csatorna> (+/-)anticolor"
set black(say.hu.man.229) "\[MAN\] Opcionális beállítások: \002anticolor-reason\002, \002anticolor-bantime\002, \002anticolor-warn\002, \002anticolor-banmethod\002, \002anticolor-banmask\002"
set black(say.hu.man.230) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"


#AntiBold

set black(say.hu.man.231) "\[MAN\] \002AntiVastag\002 egy védelmi modul a felhasználók ellen, akik \002VASTAG\002 stílust használnak a %chan%-en."
set black(say.hu.man.232) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.233) "\[MAN\] \002%char%set\002 (+/-)antibold ; \002%botnick% set\002 (+/-)antibold ; \002(PRIVMSG) set\002 <#csatorna> (+/-)antibold"
set black(say.hu.man.234) "\[MAN\] Opcionális beállítások: \002antibold-reason\002, \002antibold-bantime\002, \002antibold-warn\002, \002antibold-banmethod\002, \002antibold-banmask\002"
set black(say.hu.man.235) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"


#AntiUnderline

set black(say.hu.man.236) "\[MAN\] \002AntiAláhúzás\002 egy védelmi modul a felhasználók ellen, akik \002ALÁHÚZÁST\002 használnak a %chan%-en."
set black(say.hu.man.237) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.238) "\[MAN\] \002%char%set\002 (+/-)antiunderline ; \002%botnick% set\002 (+/-)antiunderline ; \002(PRIVMSG) set\002 <#csatorna> (+/-)antiunderline"
set black(say.hu.man.239) "\[MAN\] Opcionális beállítások: \002antiunderline-reason\002, \002antiunderline-bantime\002, \002antiunderline-warn\002, \002antiunderline-banmethod\002, \002antiunderline-banmask\002"
set black(say.hu.man.240) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#AntiCaps

set black(say.hu.man.241) "\[MAN\] \002AntiCaps\002 egy védelmi modul a felhasználók ellen, akik \002CSÖKKENTETT\002 módban írnak a %chan%-en."
set black(say.hu.man.242) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.243) "\[MAN\] \002%char%set\002 (+/-)anticaps ; \002%botnick% set\002 (+/-)anticaps ; \002(PRIVMSG) set\002 <#csatorna> (+/-)anticaps"
set black(say.hu.man.244) "\[MAN\] Opcionális beállítások: \002anticaps-reason\002, \002anticaps-bantime\002, \002anticaps-warn\002, \002anticaps-banmethod\002, \002anticaps-banmask\002"
set black(say.hu.man.245) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"


#BadNick

set black(say.hu.man.246) "\[MAN\] \002RosszNick\002 egy védelmi modul a felhasználók ellen, akik olyan NICK-et használnak, amely tilos karaktereket tartalmaz."
set black(say.hu.man.247) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.248) "\[MAN\] \002%char%set\002 (+/-)badnick ; \002%botnick% set\002 (+/-)badnick ; \002(PRIVMSG) set\002 <#csatorna> (+/-)badnick"
set black(say.hu.man.249) "\[MAN\] \002%char%badnick\002 \[#csatorna\] add <*szöveg*> ; \002%char%badnick \[#csatorna\] list\002"
set black(say.hu.man.250) "\[MAN\] \002%char%badnick\002 \[#csatorna\] add <+szó> (kivétel hozzáadása) ; \002%char%badnick\002 \[#csatorna\] del <listaszám> (listaelem törlése)"
set black(say.hu.man.251) "\[MAN\] Opcionális beállítások: \002badnick-reason\002, \002badnick-bantime\002, \002badnick-banmask\002, \002badnick-bmethod\002, \002badnick-banwait\002"


#BadRealname

set black(say.hu.man.252) "A \002BadRealname\002 az azonosított felhasználók elleni védelem modulja, akik olyan valós neveket használnak, amelyek tilalmazott szavakat/karaktereket tartalmaznak (támogatja a wildcard karaktereket)."
set black(say.hu.man.253) "SZINTAXIS:"
set black(say.hu.man.254) "\002%char%set\002 (+/-)badrealname ; \002%botnick% set\002 (+/-)badrealname ; \002(PRIVMSG) set\002 <#csatorna> (+/-)badrealname"
set black(say.hu.man.255) "\002%char%badrealname\002 \[#csatorna\] add <szó> ; \002%char%badrealname \[#csatorna\] list\002"
set black(say.hu.man.256) "\002%char%badrealname\002 \[#csatorna\] add <+szó> (kivétel hozzáadása) ; \002%char%badrealname\002 \[#csatorna\] del <lista sorszáma> (eltávolítja a badrealname-t a listáról)"
set black(say.hu.man.257) "Opcionális beállítások: \002badrealname-reason\002, \002badrealname-bantime\002, \002badrealname-banmask\002"

#AutoOp

set black(say.hu.man.258) "Az \002AutoOp\002 egy olyan opció, amelyet aktiválva minden felhasználónak ad \002OP\002-t, aki belép a %csatorna%-ra."
set black(say.hu.man.259) "SZINTAXIS:"
set black(say.hu.man.260) "\002%char%set\002 (+/-)autoop ; \002%botnick% set\002 (+/-)autoop ; \002(PRIVMSG) set\002 <#csatorna> (+/-)autoop"

#AutoVoice

set black(say.hu.man.261) "Az \002AutoVoice\002 egy olyan opció, amelyet aktiválva minden felhasználónak ad \002VOICE\002-t, aki belép a %csatorna%-ra."
set black(say.hu.man.262) "SZINTAXIS:"
set black(say.hu.man.263) "\002%char%set\002 (+/-)autovoice ; \002%botnick% set\002 (+/-)autovoice ; \002(PRIVMSG) set\002 <#csatorna> (+/-)autovoice"

#AntiJoinFlood

set black(say.hu.man.264) "Az \002AntiJoinFlood\002 egy védelmi modul a \002massjoin\002 ellen, amely blokkolja a csatornát módokkal. Emellett védekezik a felhasználók ellen, akik túl gyakran csatlakoznak vagy kilépnek a csatornából."
set black(say.hu.man.265) "SZINTAXIS:"
set black(say.hu.man.266) "\002%char%set\002 (+/-)antijoinflood ; \002%botnick% set\002 (+/-)antijoinflood ; \002(PRIVMSG) set\002 <#csatorna> (+/-)antijoinflood"
set black(say.hu.man.267) "Opcionális beállítások: \002joinflood\002 (<csatlakozások száma>:<másodpercek száma>)"
set black(say.hu.man.268) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#AntiChanFlood

set black(say.hu.man.269) "\[MAN\] Az \002AntiChanFlood\002 egy védelmi modul a %csatorna%-on történő szövegflood ellen."
set black(say.hu.man.270) "SZINTAXIS:"
set black(say.hu.man.271) "\[MAN\] \002%char%set\002 (+/-)antichanflood ; \002%botnick% set\002 (+/-)antichanflood ; \002(PRIVMSG) set\002 <#csatorna> (+/-)antichanflood"
set black(say.hu.man.272) "Opcionális beállítások: \002antichanflood-reason\002 (alapértelmezett indok beállítása), \002antichanflood-bantime\002 (alapértelmezett ban idő beállítása), \002chanflood\002 (<sorok száma>:<másodpercek száma>)"
set black(say.hu.man.273) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#BadIdent

set black(say.hu.man.274) "\[MAN\] Az \002BadIdent\002 egy védelmi modul a tiltott szavakat/karaktereket tartalmazó IDENT-ek ellen (támogatja a wildcard karaktereket)."
set black(say.hu.man.275) "SZINTAXIS:"
set black(say.hu.man.276) "\[MAN\] \002%char%set\002 (+/-)badident ; \002%botnick% set\002 (+/-)badident ; \002(PRIVMSG) set\002 <#csatorna> (+/-)badident"
set black(say.hu.man.277) "\[MAN\] \002%char%badident\002 \[#csatorna\] add <szó> ; \002%char%badident \[#csatorna\] list\002"
set black(say.hu.man.278) "\[MAN\] \002%char%badident\002 \[#csatorna\] add <+szó> (kivétel hozzáadása) ; \002%char%badident\002 \[#csatorna\] del <lista sorszáma> (eltávolítja a badident-t a listáról)"
set black(say.hu.man.279) "Opcionális beállítások: \002badident-reason\002 (alapértelmezett indok beállítása), \002badident-bantime\002 (alapértelmezett ban idő beállítása), \002badident-banmask\002 (banmask módszer beállítása)"

#ShowHandle

set black(say.hu.man.280) "\[MAN\] Az \002ShowHandle\002 egy opció, amelynek aktiválásakor a tiltások indokai mellé hozzáadja azokat a felhasználókat is, akik kiadták a tiltást, így a tiltott személy láthatja, ki tiltotta őt."
set black(say.hu.man.281) "SZINTAXIS:"
set black(say.hu.man.282) "\[MAN\] \002%char%set\002 (+/-)showhandle ; \002%botnick% set\002 (+/-)showhandle ; \002(PRIVMSG) set\002 <#csatorna> (+/-)showhandle"

#ShowCount

set black(say.hu.man.283) "\[MAN\] Az \002ShowCount\002 egy opció, amelynek aktiválásakor a tiltások indokai mellé hozzáadja azok számát."
set black(say.hu.man.284) "SZINTAXIS:"
set black(say.hu.man.285) "\[MAN\] \002%char%set\002 (+/-)showcount ; \002%botnick% set\002 (+/-)showcount ; \002(PRIVMSG) set\002 <#csatorna> (+/-)showcount"

#Showtime

set black(say.hu.man.286) "\[MAN\] Az \002Showtime\002 egy opció, amelynek aktiválásakor a tiltások indokai mellé hozzáadja azok számát."
set black(say.hu.man.287) "SZINTAXIS:"
set black(say.hu.man.288) "\[MAN\] \002%char%set\002 (+/-)showtime ; \002%botnick% set\002 (+/-)showtime ; \002(PRIVMSG) set\002 <#csatorna> (+/-)showtime"

#ShowUrl

set black(say.hu.man.289) "\[MAN\] Az \002ShowUrl\002 egy opció, amelynek aktiválásakor a tiltások indokai mellé hozzáadja azokat a felhasználókat is, akik kiadták a tiltást, így a tiltott személy láthatja, ki tiltotta őt."
set black(say.hu.man.290) "SZINTAXIS:"
set black(say.hu.man.291) "\[MAN\] \002%char%set\002 (+/-)showurl ; \002%botnick% set\002 (+/-)showurl ; \002(PRIVMSG) set\002 <#csatorna> (+/-)showurl"

#Xbantime

set black(say.hu.man.292) "\[MAN\] Az \002xbantime\002 egy opció, amelynek aktiválásakor a tiltások indokai mellé hozzáadja azokat a felhasználókat is, akik kiadták a tiltást, így a tiltott személy láthatja, ki tiltotta őt."
set black(say.hu.man.293) "SZINTAXIS:"
set black(say.hu.man.294) "\[MAN\] \002%char%set\002 xbantime <órák száma> ; \002%botnick% set\002 xbantime <órák száma> ; \002(PRIVMSG) set\002 <#csatorna> xbantime <órák száma>"

#XbanLevel

set black(say.hu.man.295) "\[MAN\] Az \002xBanLevel\002 egy opció, amelynek aktiválásakor a tiltások indokai mellé hozzáadja azokat a felhasználókat is, akik kiadták a tiltást, így a tiltott személy láthatja, ki tiltotta őt."
set black(say.hu.man.296) "SZINTAXIS:"
set black(say.hu.man.297) "\[MAN\] \002%char%set\002 xbanlevel <X szint> ; \002%botnick% set\002 xbanlevel <X szint> ; \002(PRIVMSG) set\002 <#csatorna> xbanlevel <X szint>"

#oProtect

set black(say.hu.man.298) "\[MAN\] Az \002oProtect\002 egy opció, amelynek aktiválásakor védi az \002OP (@)\002 jellel rendelkező felhasználókat a védelmi intézkedésektől."
set black(say.hu.man.299) "SZINTAXIS:"
set black(say.hu.man.300) "\[MAN\] \002%char%set\002 (+/-)oprotect ; \002%botnick% set\002 (+/-)oprotect ; \002(PRIVMSG) set\002 <#csatorna> (+/-)oprotect"

#vProtect

set black(say.hu.man.301) "\[MAN\] Az \002vProtect\002 egy opció, amelynek aktiválásakor védi a \002VOICE (+v)\002 jellel rendelkező felhasználókat a védelmi intézkedésektől."
set black(say.hu.man.302) "SZINTAXIS:"
set black(say.hu.man.303) "\[MAN\] \002%char%set\002 (+/-)vprotect ; \002%botnick% set\002 (+/-)vprotect ; \002(PRIVMSG) set\002 <#csatorna> (+/-)vprotect"

#hoProtect

set black(say.hu.man.304) "\[MAN\] Az \002hoProtect\002 egy opció, amelynek aktiválásakor védi a \002HALFOP (+h %)\002 jellel rendelkező felhasználókat a védelmi intézkedésektől."
set black(say.hu.man.305) "SZINTAXIS:"
set black(say.hu.man.306) "\[MAN\] \002%char%set\002 (+/-)hoprotect ; \002%botnick% set\002 (+/-)hoprotect ; \002(PRIVMSG) set\002 <#csatorna> (+/-)hoprotect"

#ShowID

set black(say.hu.man.307) "\[MAN\] Az \002ShowID\002 egy opció, amelynek aktiválásakor a tiltások indokai mellé hozzáadja azokat a felhasználókat is, akik kiadták a tiltást, így a tiltott személy láthatja, ki tiltotta őt."
set black(say.hu.man.308) "SZINTAXIS:"
set black(say.hu.man.309) "\[MAN\] \002%char%set\002 (+/-)showid ; \002%botnick% set\002 (+/-)showid; \002(PRIVMSG) set\002 <#csatorna> (+/-)showid"

################################################# MAN MODULE #####################################################
 
#xTools

set black(say.hu.man.407) "\[MAN\] \002xTools\002 egy modul, ami gondoskodik róla, hogy az eggdrop Op-t és Voice-t kapjon, és Unban-t, Invite-ot adjon *X*-en keresztül."
set black(say.hu.man.408) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.409) "\[MAN\] \002%char%set\002 (+/-)xtools ; \002%botnick% set\002 (+/-)xtools ; \002(PRIVMSG) set\002 <#csatorna> (+/-)xtools"

#BadChan

set black(say.hu.man.410) "\[MAN\] \002BadChan\002 egy védelmi modul, ami nem engedi a fekete listán lévő csatornákon lévő felhasználókat belépni a %chan%-ra (támogatja a wildcard karaktereket). Mostantól támogatja a \002REGEX\002 típusú csatornákat is."
set black(say.hu.man.411) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.412) "\[MAN\] \002%char%badchan\002 <BE|KI> ; \002%botnick% badchan\002 <BE|KI> ; \002(PRIVMSG) badchan\002 <#csatorna> <BE|KI>"
set black(say.hu.man.413) "\[MAN\] \002%char%badchan add\002 <#rosszcsatorna> \[indok\] (hozzáad egy rossz csatornát) ; \002%char%badchan \[#csatorna\] list\002 (listázza a rossz csatornákat)"
set black(say.hu.man.414) "\[MAN\] \002%char%badchan add\002 <#rosszcsatorna> \[globális\] \[ok]\002 ; %char%badchan del\002 <szám lista> \[globális\] ; \002%char%badchan list\002 \[globális\]"
set black(say.hu.man.415) "\[MAN\] \002%char%badchan add\002 <+#rosszcsatorna> (hozzáad egy kivételt) ; \002%char%badchan regex\002 <#regex> \[indok\] \001(példa \001regex: #\[a-z\]+\[0-9\]\[0-9\])\001 , hozzáad egy REGEX típusú rossz csatornát, azokat a csatornákat, amelyek megfelelnek az kifejezésnek, rosszcsatornának tekinti)"
set black(say.hu.man.416) "\[MAN\] Opcionális beállítások: \002badchan-reason\002, badchan-bantime, \002badchan-bmethod\002, badchan-scantime, \002badchan-banwait\002, showbadchan"

#Anunt

set black(say.hu.man.417) "\[MAN\] \002Anunt\002 egy modul, amelynek a célja, hogy hirdetéseket jelenítsen meg %chan%-on egy bizonyos időközönként és a csatorna aktivitásától függően (lásd még \002%char%man anunt-showtime & támogatja a !%chan% vagy !%botnick% parancsokat)."
set black(say.hu.man.417_1) "\[MAN\] ** Megjegyzés: Ezeket a üzeneteket egyesével jeleníti meg, ÉS CSAK akkor, ha a csatornán aktivitás van. Ellenkező esetben az eggdrop vár az első aktivitási jelzésig (join, part, chat, stb.). **"
set black(say.hu.man.418) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.419) "\[MAN\] \002%char%anunt <BE|KI>\002 ; %botnick% anunt <BE|KI> ; \002(PRIVMSG) anunt <#csatorna> <BE|KI>\002"
set black(say.hu.man.420) "\[MAN\] \002%char%anunt\002 \[#csatorna\] add <üzenet> ; \002%char%anunt \[#csatorna\] list\002 ; \002%char%anunt\002 \[#csatorna\] del <szám lista>"
set black(say.hu.man.421) "\[MAN\] Több mint 1 mondat hozzáadásához az egyik \002%char%anunt add <üzenet1>~<üzenet2>..\002 paranccsal, és az eggdrop két külön mondatként fogja megjeleníteni azokat."

#Limit

set black(say.hu.man.422) "\[MAN\] \002Limit\002 egy modul, ami a csatorna limitájáról gondoskodik."
set black(say.hu.man.423) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.424) "\[MAN\] \002%char%limit\002 <BE|KI> ; \002%botnick% limit\002 <BE|KI> ; \002(PRIVMSG) limit\002 <#csatorna> <BE|KI>"
set black(say.hu.man.425) "\[MAN\] \002%char%limit set <szám>\002 (beállítja a csatorna alapértelmezett limitjét)"
set black(say.hu.man.426) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#Topic

set black(say.hu.man.427) "\[MAN\] \002Topic\002 egy modul, amely lehetővé teszi a topic beállítását, amelyet a \002%char%info #csatorna\002 parancs segítségével lehet megtekinteni. Ha nincs megadva szöveg, az eggdrop automatikusan hozzáadja a csatorna jelenlegi topic-ját."
set black(say.hu.man.427_1) "\[MAN\] ** Megjegyzés: Ha vissza akarja állítani/törölni a topicot, használja: \002%char%topic unset\002. **"
set black(say.hu.man.428) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.429) "\[MAN\] \002%char%topic\002 \[#csatorna\] set <szöveg> ; \002%botnick% topic\002 \[#csatorna\] set <szöveg> ; \002(PRIVMSG) topic\002 \[#csatorna\] set <szöveg>"
set black(say.hu.man.430) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#CloneScan

set black(say.hu.man.431) "\[MAN\] \002CloneScan\002 egy modul, amely aktiválás esetén időközönként beolvasztja a %csatorna%-t klónok számára."
set black(say.hu.man.432) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.433) "\[MAN\] \002%char%set\002 (+/-)clonescan ; \002%botnick% set\002 (+/-)clonescan ; \002(PRIVMSG) set\002 <#csatorna> (+/-)clonescan"
set black(say.hu.man.433_1) "\[MAN\] \002%char%clonescan add\002 <ip|host> ; \002%char%clonescan del\002 <szám lista> ; \002%char%clonescan list\002"
set black(say.hu.man.434) "\[MAN\] Opcionális beállítások: \002clonescan-maxclone\002 (maximális klónszám beállítása), \002clonescan-bantime\002 (alapértelmezett kitiltási idő beállítása), \002clonescan-reason\002 (alapértelmezett kitiltási indok beállítása)"
set black(say.hu.man.435) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#Seen

set black(say.hu.man.436) "\[MAN\] \002Seen\002 egy modul, amely aktiválás esetén rögzíti a csatorna felhasználóinak join/part/quit/netsplit/nickchange/lastmsg eseményeit. Minden csatornához egy adatbázis tartozik."
set black(say.hu.man.437) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.438) "\[MAN\] \002%char%set\002 (+/-)seen ; \002%botnick% set\002 (+/-)seen ; \002(PRIVMSG) set\002 <#csatorna> (+/-)seen"
set black(say.hu.man.438_2) "\[MAN\] \002%char%seen\002 <nick|ip|host> ; \002%botnick% seen\002 <nick|ip|host> ; \002(PRIVMSG) seen\002 \[#csatorna\] <nick|ip|host>"
set black(say.hu.man.438_3) "\[MAN\] \002%char%seen\002 \[global\] <nick|ip|host> ; \002%botnick% seen\002 \[global\] <nick|ip|host> ; \002(PRIVMSG) seen\002 \[#csatorna|global\] <nick|ip|host>"
set black(say.hu.man.439) "\[MAN\] Opcionális beállítások: \002seenreply\002"
set black(say.hu.man.440) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#Greet

set black(say.hu.man.441) "\[MAN\] \002Greet\002 egy modul, amely lehetővé teszi üdvözlő üzenet hozzáadását a %csatorna%-ra csatlakozó felhasználók számára (lásd még: \002%char%man infoline\002 vagy \002%char%man count\002)."
set black(say.hu.man.442) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.443) "\[MAN\] \002%char%greet\002 <BE|KI> ; \002%botnick% greet\002 <BE|KI> ; \002(PRIVMSG) greet\002 <#csatorna> <BE|KI>"
set black(say.hu.man.444) "\[MAN\] \002%char%greet\002 \[#csatorna\] set <szöveg>\002 ; \002%botnick% greet\002 \[#csatorna\] set <szöveg> ; \002(PRIVMSG) greet\002 \[#csatorna\] set <szöveg>"
set black(say.hu.man.445) "\[MAN\] Opcionális beállítások: \002%char%set greet-method <mód>\002 (NOTICE | PRIVMSG)"
set black(say.hu.man.446) "\[MAN\] Több mint 1 mondat hozzáadásához egy greet-hez használja a \002%char%set \[#csatorna\] greet <szöveg1>~<szöveg2>..\002 parancsot, és az eggdrop két különálló mondatként adja meg a greet-et (támogatja a %countchan%, %nick%, %time% és %count%)."

#Leave

set black(say.hu.man.447) "\[MAN\] \002Leave\002 egy modul, amely lehetővé teszi üzenetek hozzáadását a %csatorna%-ról kilépő felhasználók számára."
set black(say.hu.man.448) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.449) "\[MAN\] \002%char%leave\002 <BE|KI> ; \002%botnick% leave\002 <BE|KI> ; \002(PRIVMSG) leave\002 <#csatorna> <BE|KI>"
set black(say.hu.man.450) "\[MAN\] \002%char%leave\002 \[#csatorna\] set <szöveg>\002 ; \002%botnick% leave\002 \[#csatorna\] set <szöveg> ; \002(PRIVMSG) leave\002 \[#csatorna\] set <szöveg>"
set black(say.hu.man.451) "\[MAN\] Opcionális beállítások: \002%char%set leave-method <mód>\002 (NOTICE | PRIVMSG)"
set black(say.hu.man.452) "\[MAN\] Több mint 1 mondat hozzáadásához egy leave-hez használja a \002%char%set \[#csatorna\] leave <szöveg1>~<szöveg2>..\002 parancsot, és az eggdrop két különálló mondatként adja meg a leave-et."

#Idle

set black(say.hu.man.453) "\[MAN\] \002Idle\002 egy modul, amelynek aktiválásakor megakadályozza az inaktív felhasználókat abban, hogy \002op (@)\002 vagy \002voice (+v)\002 jogokkal rendelkezzenek."
set black(say.hu.man.453_1) "\[MAN\] Formátum az időszakhoz: <x>\002m\002 = perc, <x>\002h\002 = óra, <x>\002d\002 = nap"
set black(say.hu.man.454) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.455) "\[MAN\] \002%char%idle\002 <(+/-)o / (+/-)v / (+/-)ho> ; \002%botnick% idle\002 <(+/-)o / (+/-)v / (+/-)ho> ; \002(PRIVMSG) idle\002 <#csatorna> <(+/-)o / (+/-)v / (+/-)ho>"
set black(say.hu.man.456) "\[MAN\] \002%char%idle add\002 <nick> (kivétel hozzáadása az idle-hez), \002%char%idle <list>\002 (kivételek listázása), \002%char%idle del\002 <nick> (kivétel törlése)"
set black(say.hu.man.457) "\[MAN\] Opcionális beállítások: \002idleopmax\002 <időszak> (időszak az idleop-hez) ; \002idlevoicemax\002 <időszak> (időszak az idlevoice-hez) ; \002idlehalfopmax\002 <időszak> (időszak az idlehalfop-hez) ; \002idle-scantime\002 <időszak> (szkennelési idő)"
set black(say.hu.man.458) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"
set black(say.hu.man.458_1) "\[MAN\] Az \002idlevoice\002 információiért lásd: \002%char%man idle\002"
set black(say.hu.man.458_2) "\[MAN\] Az \002idleop\002 információiért lásd: \002%char%man idle\002"
set black(say.hu.man.458_3) "\[MAN\] Az \002idlehalfop\002 információiért lásd: \002%char%man idle\002"

#BackChan

set black(say.hu.man.459) "\[MAN\] \002BackChan\002 egy modul, amelynek aktiválásakor a csatornának lehetősége van egy backchan létrehozására, ahol az eggdrop bejelenti a főcsatornán adott tiltásokat."
set black(say.hu.man.460) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.461) "\[MAN\] \002%char%set\002 \[#csatorna\] backchan <#backchan> ; \002%botnick% set\002 \[#csatorna\] backchan <#backchan> ; \002(PRIVMSG) set\002 <#csatorna> backchan <#backchan>"
set black(say.hu.man.462) "\[MAN\] Miután beállította a \002backchan\002 csatornát, az összes tiltási parancsot használhatja rajta, és ezek a tiltások a \002<#csatorna>\002 (főcsatorna) esetében lesznek érvényesek. Nem támogatja a 2 vagy több főcsatornát egyetlen backchan esetén. Minden főcsatornának saját backchan-je van."
set black(say.hu.man.463) "\[MAN\] Az \002ChanReport\002 (BackChan) egy olyan modul, amelynek aktiválásakor a csatornának lehetősége van egy backchan létrehozására, ahol az eggdrop bejelenti a csatornán adott tiltásokat a \002<#csatorna>\002 (főcsatorna)."

#TopWords

set black(say.hu.man.464) "\[MAN\] \002TopWords\002 egy modul, amelynek aktiválásakor rögzíti a felhasználók aktivitását a %csatorna%-on (írt szavak számát)."
set black(say.hu.man.465) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.466) "\[MAN\] \002%char%set\002 (+/-)topwords ; \002%botnick% set\002 (+/-)topwords ; \002(PRIVMSG) set\002 <#csatorna> (+/-)topwords"
set black(say.hu.man.467) "\[MAN\] \002%char%topwords\002 \[#csatorna\] <nick> \[teljes\] ; \002%char%topwords\002 \[#csatorna\] <nick> \[teljes\] ; \002(PRIVMSG) topwords\002 \[#csatorna\] <nick> \[teljes\]"
set black(say.hu.man.467_1) "\[MAN\] \002%char%topwords\002 \[#csatorna\] <nick> \[teljes|reset\]  ; \002(PRIVMSG) topwords\002 \[#csatorna\] <nick> \[teljes|reset\]"
set black(say.hu.man.467_2) "\[MAN\] \002%char%topwords\002 \[#csatorna\] add <nick> (kivétel hozzáadása) ; \002%char%topwords\002 \[#csatorna\] list (kivételek listázása) ; \002%char%topwords\002 \[#csatorna\] del <nick> (kivétel törlése)"

#AntiTake

set black(say.hu.man.473) "\[MAN\] \002Antitake\002 egy modul, amely két részből áll: Az első védelmet nyújt az Eggdrop-hoz hozzáférők ellen, akik DEOP-t adnak, míg a második védelmet nyújt az Eggdrop-hoz hozzáférők ellen, akik OP-t adnak."
set black(say.hu.man.474) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.475) "\[MAN\] \002%char%set\002 (+/-)dontdeop ; \002%botnick% set\002 (+/-)dontdeop (védelem a deop ellen) ; \002%char%set\002 (+/-)dontop ; \002%botnick% set\002 (+/-)dontop (védelem az op ellen)"
set black(say.hu.man.475_1) "\[MAN\] Az \002dontdeop\002 információiért lásd: \002%char%man antitake\002"
set black(say.hu.man.475_2) "\[MAN\] Az \002dontop\002 információiért lásd: \002%char%man antitake\002"

#Private

set black(say.hu.man.476) "\[MAN\] \002Private\002 egy modul, amelynek aktiválásakor nem engedi azokat, akik nem rendelkeznek Eggdrop hozzáféréssel vagy nincsenek felsorolva a kivételek listáján, hogy csatlakozzanak a %csatorna%-hoz."
set black(say.hu.man.477) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.478) "\[MAN\] \002%char%set\002 (+/-)private ; \002%botnick% set\002 (+/-)private ; \002(PRIVMSG) set\002 <#csatorna> (+/-)private"
set black(say.hu.man.479) "\[MAN\] \002%char%private add\002 <nick> <host> (kivétel hozzáadása), \002%char%private list\002 (kivételek listázása), \002%char%private del\002 <nick> (kivétel törlése)"
set black(say.hu.man.480) "\[MAN\] Opcionális beállítások: \002private-reason\002 (alapértelmezett indok beállítása); \002private-bantime\002 (alapértelmezett kitiltási idő percben)"
set black(say.hu.man.481) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"


#AutoBroadcast

set black(say.hu.man.482) "\[MAN\] \002AutoBroadCast\002 egy modul, amelynek aktiválásakor időközönként üzeneteket küld az eggdrop összes csatornájára."
set black(say.hu.man.483) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.484) "\[MAN\] \002%char%bt\002 <BE|KI> ; \002%botnick% bt\002 <BE|KI> ; \002(PRIVMSG) bt\002 <#csatorna> <BE|KI>"
set black(say.hu.man.485) "\[MAN\] \002%char%bt add\002 <szöveg> ; \002%char%bt\002 list ; \002%char%bt del\002 <lista sorszáma>"
set black(say.hu.man.486) "\[MAN\] \002%char%set\002 <#csatorna> (+/-)silent (nem küld broadcastot a csatornára)"
set black(say.hu.man.486_1) "\[MAN\] Az \002silent\002 információiért lásd: \002%char%man autobroadcast\002"

#Language

set black(say.hu.man.487) "\[MAN\] \002Lang\002 lehetővé teszi az eggdrop nyelvének megváltoztatását, valamint egy adott csatorna kick/ban indokainak alapértelmezett nyelvének beállítását."
set black(say.hu.man.487_1) "\[MAN\] Elérhető nyelvek: \002RO\002 = román ; \002EN\002 = angol ; \002ES\002 = spanyol"
set black(say.hu.man.488) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.489) "\[MAN\] \002%char%set\002 \[#csatorna\] lang <nyelv> ; \002%botnick% set\002 \[#csatorna\] lang <nyelv> ; \002(PRIVMSG) set\002 \[#csatorna\] lang <nyelv>"
set black(say.hu.man.489_1) "\[MAN\] \002%char%myset\002 lang <nyelv> ; \002%botnick% myset\002 lang <nyelv> ; \002(PRIVMSG) myset\002 lang <nyelv> (felhasználó alapértelmezett nyelvének beállítása)"

#TCL

set black(say.hu.man.490) "\[MAN\] \002TCL\002 egy modul, amely lehetővé teszi tcl-ek betöltését és megjelenítését mind az aktuálisan betöltött, mind a scriptekből származóakat (feltöltés csak .tcl fájlokra korlátozva)."
set black(say.hu.man.491) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.492) "\[MAN\] \002%char%tcl <lista>\002 (tcl-ek megjelenítése); %char%tcl wget <link/nevet.tcl>; \002%char%tcl load\002 <nevet.tcl> (tcl betöltése); \002%char%tcl \002unload\002 <nevet.tcl> (tcl letiltása); \002%char%tcl info\002 <nevet.tcl> (tcl információk)"

#Next

set black(say.hu.man.493) "\[MAN\] \002Next\002 egy modul, amelyet a segítségcsatornákra használnak, és segíthetnek azoknak a felhasználóknak, akiknek segítségre van szükségük."
set black(say.hu.man.494) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.495) "\[MAN\] \002%char%set\002 (+/-)next ; \002%botnick% set\002 (+/-)next ; \002(PRIVMSG) set\002 <#csatorna> (+/-)next"
set black(say.hu.man.496) "\[MAN\] \002%char%next\002 (következő user voice-ja) ; \002%char%next list\002 (lista megjelenítése), \002%char%helped\002 <nick>, \002%char%noidle\002 <nick>, \002%char%skip\002 <nick>"
set black(say.hu.man.497) "\[MAN\] Opcionális beállítások: \002next-reason\002 (alapértelmezett indok beállítása), \002next-bantime\002 (alapértelmezett kitiltási idő percben)"
set black(say.hu.man.498) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

################################################# MAN COMENZI #####################################################

#upTime

set black(say.hu.man.608) "\[MAN\] \002Status\002 egy olyan parancs, amely segítségével megtudhatod mind az %char%uptime parancs információit, mind az eggdrop csatornáit és a szerver uptime-ét, amelyen fut."
set black(say.hu.man.609) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.610) "\[MAN\] \002%char%status\002 ; %botnick% status ; \002(PRIVMSG) status\002"

#Set

set black(say.hu.man.611) "\[MAN\] \002Set\002 beállítja bizonyos zászlókat a csatornához (beállítások, amelyek segítik az eggdrop működését bizonyos helyzetekben)."
set black(say.hu.man.612) "\[MAN\] HASZNÁLATI SZINTAXISOK:"
set black(say.hu.man.613) "\[MAN\] \002%char%set\002 (+/-)flag / <flag|str|opció> <leírás> ; \002%botnick% set\002 (+/-)flag / <flag|str|opció> <leírás> ; \002(PRIVMSG) set\002 <#csatorna> (+/-)flag / <flag|str|opció> <leírás>"
set black(say.hu.man.614) "\[MAN\] \002%char%set\002 global <flag|str|opció> <leírás> (beállítás minden csatornán)"
set black(say.hu.man.615) "\[MAN\] Példa: \002%char%set\002 chanmode +k <kulcs> (csatorna kulcsának beállítása)"

#Jump

set black(say.hu.man.620) "\[MAN\] \002Jump\002 egy olyan parancs, amely segítségével megváltoztathatod az eggdrop által használt szervert."
set black(say.hu.man.621) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.622) "\[MAN\] \002%char%jump\002 <irc szerver> ; \002%botnick% jump\002 <irc szerver> ; \002(PRIVMSG) jump\002 <irc szerver>"

#msg

set black(say.hu.man.623) "\[MAN\] \002msg\002 egy olyan parancs, amely segítségével üzenetet küldhetsz egy csatornának vagy egy felhasználónak."
set black(say.hu.man.624) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.625) "\[MAN\] \002%char%msg\002 <nick> <üzenet> ; \002%botnick% msg\002 <nick> <üzenet> ; \002(PRIVMSG) msg\002 <nick> <üzenet>"

#Broadcast

set black(say.hu.man.626) "\[MAN\] \002Broadcast\002 egy olyan parancs, amely segítségével üzenetet küldhetsz az eggdrop összes csatornájára."
set black(say.hu.man.627) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.628) "\[MAN\] \002%char%broadcast\002 <üzenet> ; \002%botnick% broadcast\002 <üzenet> ; \002(PRIVMSG) broadcast\002 <üzenet>"

#Ignore

set black(say.hu.man.629) "\[MAN\] \002Ignore\002 egy olyan parancs, amely segítségével listázhatod, hozzáadhatod vagy törölheted az \002ignore\002 típusú bejegyzéseket."
set black(say.hu.man.629_1) "\[MAN\] Időtartam formátuma: <x>\002m\002 = perc, <x>\002h\002 = óra, \002d\002 = nap"
set black(say.hu.man.630) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.631) "\[MAN\] \002%char%ignore list\002 ; \002%char%ignore add\002 <ip|host> \[időtartam\] \[indok\] ; \002%char%ignore del\002 <ip|host>"

#Chat

set black(say.hu.man.632) "\[MAN\] \002Chat\002 egy olyan parancs, amely segítségével csatlakozhatsz az eggdrop botnetjéhez."
set black(say.hu.man.633) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.634) "\[MAN\] \002%char%chat\002 ; %botnick% chat ; \002(PRIVMSG) chat\002"

#Channels

set black(say.hu.man.638) "\[MAN\] \002Channels\002 egy olyan parancs, amely segítségével megtekintheted az eggdrop memóriájában lévő csatornákat."
set black(say.hu.man.639) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.640) "\[MAN\] \002%char%channels\002 ; %botnick% channels ; \002(PRIVMSG) channels\002"

#Nick

set black(say.hu.man.641) "\[MAN\] \002Nick\002 egy olyan parancs, amely segítségével megváltoztathatod az eggdrop nevét."
set black(say.hu.man.642) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.643) "\[MAN\] \002%char%nick\002 <újnick> ; \002%botnick% nick\002 <újnick> ; \002(PRIVMSG) nick\002 <újnick>"
set black(say.hu.man.643_1) "\[MAN\] \002%char%set nick\002 <újnick> ; \002%botnick% set nick\002 <újnick> ; \002(PRIVMSG) set nick\002 <újnick> (állandó beállítás)"

#Restart 

set black(say.hu.man.644) "\[MAN\] \002Restart\002 egy olyan parancs, amely segítségével újraindíthatod az eggdrop botod."
set black(say.hu.man.645) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.646) "\[MAN\] \002%char%restart\002 ; %botnick% restart ; \002(PRIVMSG) restart\002"
set black(say.hu.man.647) "\[MAN\] \002Megjegyzés:\002 Ezt CSAK akkor használd, ha az eggdrop-nak túl sok a késése vagy hibásan működik."

#Rehash

set black(say.hu.man.648) "\[MAN\] \002Rehash\002 egy olyan parancs, amely segítségével újratöltheted az eggdrop fájljait."
set black(say.hu.man.649) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.650) "\[MAN\] \002%char%rehash\002 ; %botnick% rehash ; \002(PRIVMSG) rehash\002"

#Die

set black(say.hu.man.651) "\[MAN\] \002Die\002 egy olyan parancs, amely segítségével leállíthatod az eggdrop-ot."
set black(say.hu.man.652) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.653) "\[MAN\] \002%char%die\002 ; %botnick% die ; \002(PRIVMSG) die\002"

#Suspend

set black(say.hu.man.654) "\[MAN\] \002Suspend\002 egy olyan parancs, amely segítségével felfüggesztheted egy csatorna működését az eggdrop listájában."
set black(say.hu.man.655) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.656) "\[MAN\] \002%char%suspend\002 <#csatorna> \[indok\] ; \002%botnick% suspend\002 <#csatorna> \[indok\] ; \002(PRIVMSG) suspend\002 <#csatorna> \[indok\]"

#unSuspend

set black(say.hu.man.657) "\[MAN\] \002unSuspend\002 egy olyan parancs, amely segítségével feloldhatod egy csatorna felfüggesztését az eggdrop listájában."
set black(say.hu.man.658) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.659) "\[MAN\] \002%char%unsuspend\002 <#csatorna> ; \002%botnick% unsuspend\002 <#csatorna> ; \002(PRIVMSG) unsuspend\002 <#csatorna>"

#Save

set black(say.hu.man.660) "\[MAN\] \002Save\002 egy olyan parancs, amely segítségével mentheted az eggdrop fájljait."
set black(say.hu.man.661) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.662) "\[MAN\] \002%char%save\002 ; %botnick% save ; \002(PRIVMSG) save\002"

#AddChan

set black(say.hu.man.663) "\[MAN\] \002AddChan\002 egy olyan parancs, amely segítségével hozzáadhatsz egy csatornát az eggdrop listához."
set black(say.hu.man.664) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.665) "\[MAN\] \002%char%addchan\002 <#csatorna> \[kulcs\] ; \002%botnick% addchan\002 <#csatorna> \[\kulcs\] ; \002(PRIVMSG) addchan\002 <#csatorna> \[\kulcs\]\002"
set black(say.hu.man.666) "\[MAN\] Ha meg van adva a \002 \[kulcs\] \002, az eggdrop a megadott kulcs segítségével csatlakozik a \002<#csatorna>\002 csatornához."

#DelChan

set black(say.hu.man.667) "\[MAN\] \002DelChan\002 egy olyan parancs, amely segítségével törölheted egy csatornát az eggdrop listájából."
set black(say.hu.man.668) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.669) "\[MAN\] \002%char%delchan\002 <#csatorna> <indok> ; \002%botnick% delchan\002 <#csatorna> <indok> ; \002(PRIVMSG) delchan\002 <#csatorna> <indok>"

#Purge

set black(say.hu.man.670) "\[MAN\] \002Purge\002 egy olyan parancs, amely segítségével egy csatornát csak a csatorna vezetője törölhet az eggdrop listájáról."
set black(say.hu.man.671) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.672) "\[MAN\] \002%char%purge\002 <#csatorna> <indok> ; \002%botnick% purge\002 <#csatorna> <indok> ; \002(PRIVMSG) purge\002 <#csatorna> <indok>"

#AddInfo

set black(say.hu.man.676) "\[MAN\] \002AddInfo\002 egy olyan parancs, amely segítségével hozzáadhatsz egy személyre szabott üzenetet a felhasználódhoz. Ez elérhető lesz a \002%char%info\002 parancsnál, és a csatornába belépéskor is megjelenik."
set black(say.hu.man.677) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.678) "\[MAN\] \002%char%addinfo\002 <szöveg|reset> ; \002%botnick% addinfo\002 <szöveg|reset> ; \002(PRIVMSG) addinfo\002 <szöveg|reset>"

#Invite

set black(say.hu.man.679) "\[MAN\] \002Invite\002 egy olyan parancs, amelyet PRIVMSG-en keresztül küldhetsz el, hogy meghívást kapj egy adott csatornára."
set black(say.hu.man.680) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.680) "\[MAN\] \002%char%invite\002 <#csatorna> <nick> ; \002%botnick% invite\002 <#csatorna> <nick> ; \002(PRIVMSG) invite\002 <#csatorna> <nick>"

#Say

set black(say.hu.man.681) "\[MAN\] \002Say\002 egy olyan parancs, amelyet használhatsz az eggdrop egy adott csatornára küldött üzenetének irányításához."
set black(say.hu.man.682) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.683) "\[MAN\] %char%say\002 \[#csatorna\] <szöveg> ; \002%botnick% say\002 \[#csatorna\] <szöveg> ; \002(PRIVMSG) say\002 <#csatorna> <szöveg>"

#Refresh

set black(say.hu.man.684) "\[MAN\] \002Topicrefresh\002 segít a %csatorna% témájának fenntartásában azáltal, hogy újra alkalmazza azt egy meghatározott időközönként."
set black(say.hu.man.685) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.686) "\[MAN\] \002%char%set\002 (+/-)refresh | \002%botnick% set\002 (+/-)refresh ; \002(PRIVMSG) set\002 <#csatorna> (+/-)refresh"

################################################# MAN MODULE/COMENZI NOI #####################################################

#NoLogged

set black(say.hu.man.687) "\[MAN\] \002NoLogged\002 az \002voiceme\002 modul egy extra opciója, amelynek aktiválása után a \002/msg %botnick% voiceme <#csatorna>\002 parancs használata engedélyezett azoknak a felhasználóknak is, akiknek nincs Cservice felhasználónevük."
set black(say.hu.man.688) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.689) "\[MAN\] \002%char%set\002 (+/-)nologged | \002%botnick% set\002 (+/-)nologged ; \002(PRIVMSG) set\002 <#csatorna> (+/-)nologged"

#Colors

set black(say.hu.man.771) "\[MAN\] \002Colors\002 lehetővé teszi a felhasználók számára, hogy saját \002színeket\002 állítsanak be az eggdrop által kapott üzenetekben."
set black(say.hu.man.772) "\[MAN\] Színlista: bold, underline, red, blue, green, yellow, orange, cyan, grey, brown, purple, pink, black"
set black(say.hu.man.773) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.774) "\[MAN\] \002%char%myset\002 colors <szín1 szín2 szín3 szín4> ; \002%botnick% myset\002 colors <szín1 szín2 szín3 szín4> ; \002(PRIVMSG) myset\002 colors <szín1 szín2 szín3 szín4>"

#ReportNick

set black(say.hu.man.775) "\[MAN\] \002ReportNick\002 egy olyan parancs, amely lehetővé teszi a rendszeres felhasználók számára, hogy bejelentsenek egy adott nicknevet, ami reklámozást vagy spam üzeneteket küld (szintén a \002voice\002 és \002protect\002 hozzáférésű felhasználók is használhatják)."
set black(say.hu.man.776) "\[MAN\] \002Megjegyzés:\002 Ha szeretné, hogy ez a parancs működjön, az eggdropnak feltétlenül operátornak (@) kell lennie a csatornán (használja az @onotice parancsot az operátorok értesítéséhez)."
set black(say.hu.man.777) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.778) "\[MAN\] \002%char%set\002 (+/-)reportnick ; \002%botnick% set\002 (+/-)reportnick ; \002(PRIVMSG) set\002 <#csatorna> (+/-)reportnick"
set black(say.hu.man.779) "\[MAN\] \002%char%report\002 <nick> <megjegyzés> ; \002%botnick% report\002 <nick> <megjegyzés> ; \002(PRIVMSG) report\002 <#csatorna> <nick> <megjegyzés>"

#InviteBan

set black(say.hu.man.780) "\[MAN\] \002InviteBan\002 egy védekező modul, amely megakadályozza a felhasználókat abban, hogy meghívásokat küldjenek az eggdropnak más csatornákra."
set black(say.hu.man.781) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.782) "\[MAN\] \002%char%set\002 (+/-)inviteban ; \002%botnick% set\002 (+/-)inviteban ; \002(PRIVMSG) set\002 <#csatorna> (+/-)inviteban"
set black(say.hu.man.783) "\[MAN\] Opcionális beállítások: \002inviteban-reason\002 (alapértelmezett indok beállítása); \002inviteban-bantime\002 (tilalom idejének beállítása percekben)"

#BadHost

set black(say.hu.man.784) "\[MAN\] \002BadHost\002 egy védelmi modul azok ellen a felhasználók ellen, akik „tiltott” IP-címeket/vhostokat használnak (támogatja a wildcard karaktereket)."
set black(say.hu.man.785) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.786) "\[MAN\] \002%char%set\002 (+/-)badhost ; \002%botnick% set\002 (+/-)badhost ; \002(PRIVMSG) set\002 <#csatorna> (+/-)badhost"
set black(say.hu.man.787) "\[MAN\] \002%char%badhost\002 \[#csatorna\] add <ip|host>\002 ; \002%char%badhost \[#csatorna\] list\002"
set black(say.hu.man.787_1) "\[MAN\] \002%char%badhost\002 \[#csatorna\] add <+szó> (kivételt ad hozzá) ; \002%char%badhost\002 \[#csatorna\] del <listaszám> (eltávolítja a badhostot a listáról)"
set black(say.hu.man.788) "\[MAN\] Opcionális beállítások: \002badhost-reason\002; \002badhost-bantime\002; \002badhost-bmethod\002"

#NickFlood

set black(say.hu.man.789) "\[MAN\] \002NickFlood\002 egy védelmi modul azok ellen a felhasználók ellen, akik túl gyakran változtatják a felhasználónevüket egy adott időintervallumon belül."
set black(say.hu.man.790) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.791) "\[MAN\] \002%char%set\002 (+/-)nickflood ; \002%botnick% set\002 (+/-)nickflood ; \002(PRIVMSG) set\002 <#csatorna> (+/-)nickflood"
set black(say.hu.man.792) "\[MAN\] Opcionális beállítások: \002nickflood-reason\002; \002nickflood-bantime\002; \002nickflood-warn\002; \002nickflood-repeat\002; \002nickflood-banmethod\002; \002nickflood-banmask\002"

#SecureMode

set black(say.hu.man.793) "\[MAN\] \002SecureMode\002 egy védelmi modul, amely megakadályozza a botok által okozott join/part flódot (az hozzáféréssel rendelkező felhasználók kizártak a ellenőrzés alól). Ez a modul kifejezetten az Undernet számára készült."
set black(say.hu.man.794) "\[MAN\] Csak a \002+mD\002 csatornamódokkal működik, és egy olyan rendszeren alapul, amely minden felhasználó számára generál egy bizonyos kódot a csatornára belépéskor, amit egyszer (az első belépéskor) be kell erősíteniük, hogy engedélyezzék a belépést a csatornára."
set black(say.hu.man.795) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.796) "\[MAN\] \002%char%set\002 (+/-)securemode ; \002%botnick% set\002 (+/-)securemode ; \002(PRIVMSG) set\002 <#csatorna> (+/-)securemode"
set black(say.hu.man.797) "\[MAN\] \002%char%securemode add\002 <ip|host> (wildcardokat támogat) ; \002%char%securemode del\002 <listaszám> ; \002%char%securemode list\002"

#VoiceMe

set black(say.hu.man.820) "\[MAN\] \002VoiceMe\002 egy modul, amely lehetőséget ad azoknak a felhasználóknak, akik be vannak jelentkezve a \002*X*\002 rendszerbe, hogy \002voice (+v)\002-t kapjanak a \002/msg %botnick% voiceme <#csatorna>\002 paran keresztül (lásd még \002%char%man onlyonmode\002)."
set black(say.hu.man.821) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.822) "\[MAN\] \002%char%set\002 (+/-)voiceme ; \002%botnick% set\002 (+/-)voiceme ; \002(PRIVMSG) set\002 <#csatorna> (+/-)voiceme"
set black(say.hu.man.823) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#OnlyOnMode

set black(say.hu.man.824) "\[MAN\] \002OnlyOnMode\002 a \002voiceme\002 modul extra opciója, amelyet aktiválva csak akkor lehet használni a \002/msg %botnick% voiceme <#csatorna>\002 parancsot, HA a csatornán be van állítva a \002+m\002 (moderált) mód."
set black(say.hu.man.825) "\[MAN\] Ezenkívül az eggdrop előre meghatározott időközönként egy üzenetet küld a csatornára, amely tájékoztat minden felhasználót arról, hogy ha regisztráltak és be vannak jelentkezve a \002*X*\002 rendszerbe, akkor használhatják a fent említett parancsot a \002voice (+v)\002 megkapásához a csatornán. Ha nincs \002Cservice felhasználónevé\002, ugyanabban az üzenetben tájékoztatják arról, hol hozhatnak létre egyet."
set black(say.hu.man.826) "\[MAN\] \002Megjegyzés:\002 Ez az extra opció CSAK a \002voiceme\002 modullal működik és csak a \002+m\002 (moderált) csatornákon (lásd még \002%char%man voiceme\002)."
set black(say.hu.man.827) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.828) "\[MAN\] \002%char%set\002 (+/-)onlyonmode ; \002%botnick% set\002 (+/-)onlyonmode ; \002(PRIVMSG) set\002 <#csatorna> (+/-)onlyonmode"

#BanStats

set black(say.hu.man.834) "\[MAN\] \002BanStats\002 egy modul, amely lehetővé teszi az eggdrop számára, hogy statisztikát vezessen minden kickről és bannról egy adott csatornán."
set black(say.hu.man.835) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.836) "\[MAN\] \002%char%set\002 (+/-)banstats ; \002%botnick% set\002 (+/-)banstats ; \002(PRIVMSG) set\002 <#csatorna> (+/-)banstats"
set black(say.hu.man.837) "\[MAN\] \002%char%banstats\002 <total|reset> ; \002%botnick% banstats\002 <total|reset> ; \002(PRIVMSG) banstats\002 <#csatorna> <total|reset>"

#cp

set black(say.hu.man.842) "\[MAN\] \002cp\002 egy modul, amely lehetővé teszi egy csatorna beállításainak másolását egy másik csatornára, beleértve mind a hozzáférésű felhasználókat, mind a kitiltási listát, mind a csatornabeállításokat, mind a rossz csatornalistát."
set black(say.hu.man.843) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.844) "\[MAN\] %char%cp\002 <beállítás> <#csatorna1> <#csatorna2> ; \002%botnick% cp\002 <beállítás> <#csatorna1> <#csatorna2> ; \002(PRIVMSG) cp\002 <beállítás> <#csatorna1> <#csatorna2>"
set black(say.hu.man.845) "\[MAN\] \002<Beállítások>\002 lehetőségek: \002<userlist>\002 (másolja a csatorna felhasználói listáját); \002<banlist>\002 (másolja a csatorna kitiltási listáját); \002<settings>\002 (másolja a csatornabeállításokat); \002<badchans>\002 (másolja a rossz csatornalistát)"

#VoiceOnMsg 

set black(say.hu.man.846) "\[MAN\] \002VoiceOnMsg\002 egy modul, amely aktiválásakor az eggdrop megadja a voice (+v)-t az aktív felhasználóknak, akik meghatározott előre meghatározott sorokat írnak a csatornán."
set black(say.hu.man.847) "\[MAN\] Ugyanakkor elveszi a voice (-v)-t az inaktív felhasználóktól, akiknek az idle ideje meghaladja a meghatározott időszakot."
set black(say.hu.man.848) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.849) "\[MAN\] \002%char%set\002 (+/-)voiceonmsg ; \002%botnick% set\002 (+/-)voiceonsmg ; \002(PRIVMSG) set <#csatorna> (+/-)voiceonsmg"
set black(say.hu.man.850) "\[MAN\] Opcionális beállítások: \002%char%set voiceonmsg-linenum\002 <sorok száma> (alapértelmezett sorok beállítása) ; \002%char%set voiceonmsg-idletime\002 <időtartam> (alapértelmezett inaktivitási időtartam beállítása)"

#Troll

set black(say.hu.man.851) "\[MAN\] \002Troll\002 egy olyan parancs, amelynek segítségével egy felhasználó ban-t kap egy alapértelmezett \002troll\002 indokkal (lásd még \002%char%man showtroll\002)."
set black(say.hu.man.852) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.853) "\[MAN\] \002%char%troll\002 <nick> ; \002%botnick% troll\002 <nick> ; \002(PRIVMSG) troll\002 <#csatorna> <nick>"
set black(say.hu.man.854) "\[MAN\] Opcionális beállítások: \002%char%set\002 troll-reason (alapértelmezett ban indok) ; \002(PRIVMSG) set\002 <#csatorna> troll-reason (alapértelmezett ban indok)"

#vr

set black(say.hu.man.856) "\[MAN\] \002vr\002 egy olyan parancs, amelynek segítségével egy vagy több felhasználó alapértelmezett \002vírus/trójai\002 indokkal kap kitiltást."
set black(say.hu.man.857) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.858) "\[MAN\] \002%char%vr\002 <nick|host> ; \002%botnick% vr\002 <nick|host> ; \002(PRIVMSG) vr\002 <#csatorna> <nick|host>"
set black(say.hu.man.859) "\[MAN\] Opcionális beállítások: \002vr-reason\002 (alapértelmezett ban indok); \002vr-banmask\002 (alapértelmezett banmask metódus); \002vr-bantime\002 (alapértelmezett ban időtartam)"
set black(say.hu.man.860) "Opciók megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#XOnly

set black(say.hu.man.861) "\[MAN\] \002XOnly\002 egy csatornakezelési modul az Undernet hivatalos \002*X*\002 botján keresztül."
set black(say.hu.man.862) "\[MAN\] Ez a modul lehetővé teszi, hogy az eggdrop-ja minden BlackToolS parancsot az \002*X*\002 -en keresztül hajtson végre, még akkor is, ha nem rendelkezik operátori jogosultsággal (@)."
set black(say.hu.man.863) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.864) "\[MAN\] \002%char%set\002 (+/-)xonly ; \002%botnick% set\002 (+/-)xonly ; \002(PRIVMSG) set\002 <#csatorna> (+/-)xonly"
set black(say.hu.man.865) "Opciók megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#AutoTopic

set black(say.hu.man.866) "\[MAN\] \002AutoTopic\002 egy olyan modul, amely lehetővé teszi az eggdropnak, hogy minden alkalommal visszaállítsa a csatorna TOPIC és URL-je, amikor valaki megváltoztatta azt."
set black(say.hu.man.867) "\[MAN\] Ha a csatorna inaktív, a topicot nem állítja vissza az adott időközön belül. (inaktív = egyik felhasználó sem lépett be a csatornára)."
set black(say.hu.man.868) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.869) "\[MAN\] \002%char%set\002 (+/-)autotopic ; \002%botnick% set\002 (+/-)autotopic ; \002(PRIVMSG) autotopic\002 <#csatorna> (+/-)autotopic"
set black(say.hu.man.870) "Opciók megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#MySet

set black(say.hu.man.871) "\[MAN\] \002MySet\002 egy parancs, amellyel minden hozzáféréssel rendelkező felhasználó testreszabhatja bizonyos beállításait."
set black(say.hu.man.872) "\[MAN\] HASZNÁLATI PÉLDA:"
set black(say.hu.man.873) "\[MAN\] \002%char%myset\002 <beállítás> \[leírás\] <show|reset> ; \002(PRIVMSG) myset\002 <beállítás> \[leírás\] <show|reset>"
set black(say.hu.man.874) "\[MAN\] Az \002<beállítás>\002 lehetőségek:"
set black(say.hu.man.875) "\[MAN\] \002lang\002 <nyelv> ; \002output\002 <mód> ; \002mychar\002 <trigger> ; \002colors\002 <színek> ; \002noteexpire\002 <időtartam> ; \002autoinvite\002 <ON|OFF>"
set black(say.hu.man.877) "\[MAN\] \002auto\002 (+/-)v/o (AUTOMÓD OP/VOICE) ; \002greet\002 <személyes üdvözlő üzenet> ; \002mychan\002 <#csatorna>"
set black(say.hu.man.878) "\[MAN\] \002auto\002 (+/-)v/o \[-global\] (AUTOMÓD OP/VOICE) ; \002addhost/delhost\002 <host> ; \002handle\002 <új név> ; \002greet\002 <személyes üdvözlő üzenet> ; \002mychan\002 <#csatorna> ; \002notes\002 <ON|OFF>"

#Ho

set black(say.hu.man.882) "\[MAN\] \002ho\002 egy parancs, amellyel adhat/vehet \002halfop\002 (+h %)-ot a csatorna felhasználóitól (ritkán használt)."
set black(say.hu.man.882_1) "\[MAN\] Ha nem ad meg nevet és nincs \002halfop\002 (+h %) joga a csatornán, akkor az eggdrop megadja a \002halfop\002 (+h %)-ot."
set black(say.hu.man.883) "\[MAN\] HASZNÁLATI PÉLDA:"
set black(say.hu.man.884) "\[MAN\] \002%char%ho\002 <név> ; \002%botnick% ho\002 <név> ; \002(PRIVMSG) ho\002 <#csatorna> <név>"
set black(say.hu.man.884_1) "\[MAN\] \002%char%ho +\002 (tömeges halfop) ; \002%char%ho -\002 (tömeges halfdeop)"

#R

set black(say.hu.man.885) "\[MAN\] \002r\002 egy parancs, amellyel frissítheti/afrissítheti egy csatorna jelenlegi témáját (ha van téma)."
set black(say.hu.man.886) "\[MAN\] HASZNÁLATI PÉLDA:"
set black(say.hu.man.887) "\[MAN\] \002%char%r\002 \[#csatorna\] ; \002%botnick% r\002 \[#csatorna\] ; \002(PRIVMSG) r\002 <#csatorna>"

#SeenLastMsg

set black(say.hu.man.888) "\[MAN\] \002SeenLastMsg\002 további beállítás a \002seen modulhoz\002, amely megjeleníti a keresett nick által utoljára írt üzenetet is a csatornán."
set black(say.hu.man.889) "\[MAN\] HASZNÁLATI PÉLDA:"
set black(say.hu.man.890) "\[MAN\] \002%char%set\002 (+/-)seenlastmsg ; \002%botnick% set\002 (+/-)seenlastmsg ; \002(PRIVMSG) set\002 <#csatorna> (+/-)seenlastmsg"
set black(say.hu.man.891) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#Quote

set black(say.hu.man.892) "\[MAN\] \002Quote\002 egy idézetmodul, nyilvános parancsokkal idézetek hozzáadására, törlésére és megjelenítésére (tartalmaz keresési funkciót is)."
set black(say.hu.man.893) "\[MAN\] HASZNÁLATI PÉLDA:"
set black(say.hu.man.894) "\[MAN\] \002%char%set\002 (+/-)quote ; \002%botnick% set\002 (+/-)quote ; \002(PRIVMSG) set\002 <#csatorna> (+/-)quote"
set black(say.hu.man.895) "\[MAN\] \002%char%q\002 \[#csatorna\] <idézet> (idézet hozzáadása) ; \002%char%q\002 \[#csatorna\] <szó> (idézet keresése) ; \002%char%q\002 \[#csatorna\] <list> ; \002%char%q\002 \[#csatorna\] del <szám>"
set black(say.hu.man.896) "\[MAN\] Több mondat hozzáadásához használja: \002%char%q add \[#csatorna\] <idézet1>~<idézet2>..\002, és az eggdrop két különböző mondatként fogja megjeleníteni."
set black(say.hu.man.896_2) "\[MAN\] \002%char%set\002 (+/-)quote ; \002%botnick% set\002 (+/-)quote ; \002(PRIVMSG) set\002 <#csatorna> (+/-)quote ; \002%char%set\002 quote-usage <1/0> ; \002%botnick% set\002 quote-usage <1/0> ; \002(PRIVMSG) set\002 <#csatorna> quote-usage <1/0> (\0010\001 - mindenki használhatja a modult ; \0011\001 - csak hozzáférési jogosultsággal rendelkezők)"

#QuoteOfDay

set black(say.hu.man.897) "\[MAN\] \002QuoteOfDay\002 egy modul, amely aktiválásakor időnként véletlenszerű idézeteket jelenít meg, bizonyos időközönként."
set black(say.hu.man.898) "\[MAN\] HASZNÁLATI PÉLDA:"
set black(say.hu.man.899) "\[MAN\] %char%set\002 (+/-)quoteofday ; \002%botnick% set\002 (+/-)quoteofday ; \002(PRIVMSG) set\002 <#csatorna> (+/-)quoteofday"
set black(say.hu.man.900) "\[MAN\] Beállítások megtekintése: \002%char%set\002 quoteofday-showtime <időtartam> ; \002(PRIVMSG) set\002 <#csatorna> quoteofday-showtime <időtartam> (X\002h\002 = óra ; X\002m\002 = perc)"

#Note

set black(say.hu.man.901) "\[MAN\] \002Note\002 egy modul, amely aktiválása után lehetővé teszi a felhasználóknak, hogy jegyzeteket tároljanak és üzeneteket küldjenek egymásnak."
set black(say.hu.man.902) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.903) "\[MAN\] \002%char%set\002 (+/-)note ; \002%botnick% set\002 (+/-)note ; \002(PRIVMSG) set\002 <#csatorna> (+/-)note"
set black(say.hu.man.904) "\[MAN\] \002%char%note\002 send <felhasználónév> <üzenet> ; \002%char%note\002 <read|list|inbox> ; \002%char%note\002 del <jegyzet sorszáma|mind>"
set black(say.hu.man.905) "\[MAN\] Több mondat hozzáadásához használja: \002%char%note send <felhasználónév> <üzenet1>~<üzenet2>\002.. és az eggdrop két különböző mondatként fogja kezelni."

#bMethod

set black(say.hu.man.906) "\[MAN\] \002bMethod\002 (BanMethod) meghatározza, hogyan bünteti az eggdrop a felhasználókat (figyelmeztetés/kick/ban). Először figyelmeztetés, majd kick, végül ban (ha az illető ismételten szabálysértést követ el)."
set black(say.hu.man.907) "\[MAN\] A következő ban módszereket használhatja:"
set black(say.hu.man.908) "\[MAN\] \002#1\002 warn ; \002#2\002 kick ; \002#3\002 ban ; \002#4\002 warn -> kick ; \002#5\002 warn -> kick -> ban ; \002#6\002 kick -> ban ; \002#7\002 warn -> ban"
set black(say.hu.man.909) "\[MAN\] HASZNÁLATI SZINTAXIS: \002%char%set\002 <beállítás> <szám> ; \002%botnick% set\002 <beállítás> <szám> ; \002(PRIVMSG) set\002 <#csatorna> <beállítás> <szám>"
set black(say.hu.man.910) "\[MAN\] \002BanMethod\002 (bMethod) meghatározza, hogyan bünteti az eggdrop a felhasználókat (figyelmeztetés/kick/ban). Először figyelmeztetés, majd kick, végül ban (ha az illető ismételten szabálysértést követ el)."

#BanMask

set black(say.hu.man.911) "\[MAN\] \002BanMask\002 meghatározza, hogy az eggdrop hogyan ad hozzá banokat."
set black(say.hu.man.912) "\[MAN\] A következő banmask módszereket használhatja a banhoz:"
set black(say.hu.man.913) "\[MAN\] \002#1\002 *!*@host ; \002#2\002 *!user@host ; \002#3\002 nick!user@host ; \002#4\002 nick!*@* ; \002#5\002 *!user@*"
set black(say.hu.man.914) "\[MAN\] HASZNÁLATI SZINTAXIS: \002%char%set\002 <beállítás> <szám> ; \002%botnick% set\002 <beállítás> <szám> ; \002(PRIVMSG) set\002 <#csatorna> <beállítás> <szám>"

#Url

set black(say.hu.man.916) "\[MAN\] \002Url\002 megadja a csatorna webhelyének URL-jét (legfeljebb 50 karakter hosszú). Az URL cím megtekinthető a \002%char%info <#csatorna>\002 paranccsal. Ha nincs megadva URL, akkor a jelenlegi URL beállítás üres lesz."
set black(say.hu.man.917) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.918) "\[MAN\] \002%char%set\002 url \[url(ek)\] ; \002%botnick% set\002 url \[url(ek)\] ; \002(PRIVMSG) set\002 <#csatorna> url \[url(ek)\]"
set black(say.hu.man.919) "\[MAN\] Az URL megjelenítéséhez a tiltások indokánál használja: \002%char%set\002 +showurl ; \002%botnick% set\002 +showurl ; \002(PRIVMSG) set\002 <#csatorna> +showurl"
set black(say.hu.man.920) "\[MAN\] Beállítások opciók megjelenítése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#Timer

set black(say.hu.man.921) "\[MAN\] \002Timer\002 egy \002PRO\002 modul, amely lehetővé teszi a folyamatok időzítőkkel történő be- és kikapcsolását, valamint az aktív időzítők listájának megtekintését."
set black(say.hu.man.921_1) "\[MAN\] \002FIGYELEM!\002 Csak akkor módosítsa ezt a modult, ha jól ismeri a működését!"
set black(say.hu.man.922) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.923) "\[MAN\] \002%char%timer\002 start \[#csatorna\] <időzítő:beállítás> ; \002%char%timer\002 kill \[#csatorna\] <időzítő sorszáma a listán> ; \002%char%timer\002 list"

#Enable

set black(say.hu.man.924) "\[MAN\] \002Enable\002 egy parancs, amely AKTIVÁL egy letiltott parancsot. Ha a \002global\002 opciót használja, a parancs az eggdrop összes csatornáján aktiválva lesz."
set black(say.hu.man.924_1) "\[MAN\] \002FIGYELEM\002: A globális aktiválási opció csak parancsokra érvényes, nem felhasználókra."
set black(say.hu.man.925) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.926) "\[MAN\] %char%enable\002 \[#csatorna\] <parancs|mind> \[felhasználó\] \[global\] ; \002(PRIVMSG) enable\002 <#csatorna> <parancs|mind> \[felhasználó\] \[global\]"

#Disable

set black(say.hu.man.927) "\[MAN\] \002Disable\002 egy parancs, amely LETILT egy adott parancsot. Ha a \002global\002 opciót használja, a parancs az eggdrop összes csatornáján letiltásra kerül."
set black(say.hu.man.927_1) "\[MAN\] \002FIGYELEM\002: A globális letiltási opció csak parancsokra érvényes, nem felhasználókra."
set black(say.hu.man.928) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.929) "\[MAN\] %char%disable\002 \[#csatorna\] <parancs|mind> \[felhasználó\] \[global\] ; \002(PRIVMSG) disable\002 <#csatorna> <parancs|mind> \[felhasználó\] \[global\]"

#Stats

set black(say.hu.man.930) "\[MAN\] \002Stats\002 megjeleníti egy hozzáférésű felhasználó tevékenységével kapcsolatos információkat (bantörténet, használt parancsok stb.)."
set black(say.hu.man.930_1) "\[MAN\] A \002felhasználó tevékenységével\002 kapcsolatos információkért lásd: \002%char%man stats\002"
set black(say.hu.man.931) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.932) "\[MAN\] \002%char%stats\002 \[#csatorna>\] <nick> \[összes\] ; \002%botnick% stats\002 \[#csatorna>\] <nick> \[összes\] ; \002(PRIVMSG) stats\002 \[#csatorna>\] <nick> \[összes\]"
set black(say.hu.man.932_1) "\[MAN\] \002%char%stats\002 \[#csatorna>\] <nick> \[összes|reset\] ; \002(PRIVMSG) stats\002 \[#csatorna>\] <nick> \[összes|reset\]"

#Output

set black(say.hu.man.933) "\[MAN\] \002Output\002 egy parancs, amely meghatározza, hogyan válaszol az eggdrop a használt üzenetekre vagy parancsokra."
set black(say.hu.man.934) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.935) "\[MAN\] \002%char%myset output\002 <módszer> ( CHAN | NOTICE ) ; \002(PRIVMSG) myset output\002 <módszer> ( CHAN | NOTICE )"

#GreetLine

set black(say.hu.man.936) "\[MAN\] \002Greet\002 beállítja az üdvözlő üzenetedet, amely megjelenik a \002%char%info\002 paranccsal és/vagy amikor belépsz egy csatornára (a második csak akkor érvényes, ha a \002+greet\002 aktív)."
set black(say.hu.man.937) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.938) "\[MAN\] \002%char%myset greet\002 <üzenet|reset> ; \002%botnick% myset\002 greet <üzenet|reset> ; \002(PRIVMSG) myset greet\002 <üzenet|reset>  (\002reset\002 törli az üdvözlő üzenetet)"

#UnSet

set black(say.hu.man.939) "\[MAN\] \002UnSet\002 egy parancs, amely visszaállíthat bármilyen eggdrop opciót (vagy zászlókat)."
set black(say.hu.man.940) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.hu.man.941) "\[MAN\] \002%char%unset\002 <zászló|str|opció> ; \002%botnick% unset\002 <zászló|str|opció> ; \002(PRIVMSG) unset\002 <#csatorna> <zászló|str|opció>"
set black(say.hu.man.942) "\[MAN\] \002%char%unset\002 global <zászló|str|opció> (minden csatornán unset)"
set black(say.hu.man.943) "\[MAN\] Beállítások opciók megjelenítése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#NextShortCmd

set black(say.hu.man.944) "\[MAN\] \002NextShortCmd\002 a \002next\002 modul rövidített változata, amelyet segítségnyújtásra használnak a segítségért folyamodó felhasználók támogatására a segítségcsatornákon."
set black(say.hu.man.945) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.hu.man.946) "\[MAN\] %char%set\002 (+/-)nextshortcmd ; \002%botnick% set\002 (+/-)nextshortcmd ; \002(PRIVMSG) set\002 <#csatorna> (+/-)nextshortcmd"
set black(say.hu.man.947) "\[MAN\] Parancsok: \002%char%n\002 (következő felhasználó voice) ; \002%char%n\002 list (lista megjelenítése) ; \002%char%h\002 <nick> (segített); \002%char%b\002 <nick> (noidle ban); \002%char%skip\002 <nick>"

#AutoInvite

set black(say.hu.man.948) "\[MAN\] \002AutoInvite\002 egy új személyre szabott beállítás, az első ilyen, amely lehetővé teszi, hogy bármely hozzáférésű felhasználó kick/ban esetén az eggdrop eltávolítsa a tiltást és meghívót küldjön neki abba a csatornába."
set black(say.hu.man.949) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.hu.man.950) "\[MAN\] \002%char%myset autoinvite\002 <#csatorna> <BE|KI> ; \002%botnick% autoinvite\002 <#csatorna> <BE|KI> ; \002(PRIVMSG) <#csatorna> autoinvite\002 <#csatorna> <BE|KI>"

#Show

set black(say.hu.man.952) "\[MAN\] \002Show\002 egy olyan parancs, amely segítségével megtekintheted/ellenőrizheted az egyes beállítások értékeit, valamint azt, hogy egy adott modul be van-e kapcsolva a csatornán."
set black(say.hu.man.953) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.954) "\[MAN\] \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#Link

set black(say.hu.man.955) "\[MAN\] \002Link\002 egy modul, amely lehetővé teszi a védelem moduljainak összehangolását egyszerre 2 vagy több csatorna között."
set black(say.hu.man.956) "\[MAN\] Aktiválása után az eggdrop egyszerre hozzáadja ugyanazokat a tiltásokat egy adott csatornáról az összes többi csatornához és fordítva (csak a linkelt csatornák között működik, nem az összes többi csatorna között)."
set black(say.hu.man.957) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.958) "\[MAN\] \002%char%link\002 <#csatorna1> <#csatorna2> / <mind> ; \002%char%link del\002 <#csatorna> ; \002%char%link <lista|reset>\002"
set black(say.hu.man.958_1) "\[MAN\] Emellett működik így is: \002%char%b\002 <nick|host> \[időtartam\] link \[indok\] ; \002%char%ub\002 <nick|host> link"

#AccessOnly

set black(say.hu.man.959) "\[MAN\] \002AccessOnly\002 egy extra opció a \002topwords\002 modulnak, amely csak azoknak a felhasználóknak engedi meg a működését, akiknek hozzáférésük van az eggdrophoz."
set black(say.hu.man.960) "\[MAN\] Ha ez az extra opció nincs bekapcsolva, akkor a \002topwords\002 modul minden csatorlakó számára működni fog (mindenki számára, aki hozzáféréssel rendelkezik, valamint a többiek számára is)."
set black(say.hu.man.961) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.962) "\[MAN\] \002%char%set\002 (+/-)accessonly ; \002%botnick% set\002 (+/-)accessonly ; \002(PRIVMSG) set\002 <#csatorna> (+/-)accessonly"
set black(say.hu.man.963) "\[MAN\] Beállítások opciók megjelenítése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#SeenReply

set black(say.hu.man.964) "\[MAN\] \002SeenReply\002 egy extra opció a \002seen\002 modulnak, amely azt eredményezi, hogy az eggdrop küld egy tájékoztató üzenetet annak a személynek, akit éppen keresett a \002%char%seen\002 parancs segítségével."
set black(say.hu.man.965) "\[MAN\] Az említett figyelmeztető üzenet tartalmazza azokat az információkat, akik keresik, valamint az időpontot, az órát vagy a csatornát, ahol a keresés történt."
set black(say.hu.man.966) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.967) "\[MAN\] \002%char%set\002 (+/-)seenreply ; \002%botnick% set\002 (+/-)seenreply ; \002(PRIVMSG) set\002 <#csatorna> (+/-)seenreply"

#SpamJoinMessage

set black(say.hu.man.968) "\[MAN\] \002SpamJoinMessage\002 egy extra opció az \002antispam\002 védelmi modulnak, amely azt eredményezi, hogy az eggdrop küld egy privát üzenetet ellenőrzés céljából, egy előre meghatározott szöveggel, minden olyan felhasználónak, aki belép a csatornára."
set black(say.hu.man.969) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.970) "\[MAN\] \002%char%set\002 (+/-)spamjoinmessage ; \002%botnick% set\002 (+/-)spamjoinmessage ; \002(PRIVMSG) set\002 <#csatorna> (+/-)spamjoinmessage"
set black(say.hu.man.971) "\[MAN\] \002%char%set\002 antispam-message <üzenet> ; \002%botnick% set\002 antispam-message <üzenet> ; \002(PRIVMSG) set\002 <#csatorna> <üzenet> (alapértelmezett csatlakozási üzenet)"
set black(say.hu.man.972) "\[MAN\] Beállítások opciók megjelenítése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#StrictSecured

set black(say.hu.man.973) "\[MAN\] \002StrictSecured\002 egy extra opció a \002securemode\002 védelmi modulnak, amely megakadályozza a botok által okozott join/part flódot."
set black(say.hu.man.974) "\[MAN\] Miután aktiválódik, ez az extra opció minden belépő felhasználó számára egy véletlenszerű kódot generál, amelyet minden alkalommal, amikor újra belép, meg kell erősítenie ahhoz, hogy engedélyezze a csatornára való belépést."
set black(say.hu.man.975) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.976) "\[MAN\] \002%char%set\002 (+/-)strictsecured ; \002%botnick% set\002 (+/-)strictsecured ; \002(PRIVMSG) set\002 <#csatorna> (+/-)strictsecured"

#NoteExpire

set black(say.hu.man.977) "\[MAN\] \002NoteExpire\002 egy extra opció a \002note\002 modulnak, amely lehetővé teszi minden felhasználó számára, hogy meghatározza azokat az alapértelmezett időtartamokat, amikor a megjegyzések lejárnak (automatikus törlésüket az adatbázisból)."
set black(say.hu.man.977_1) "\[MAN\] Időtartam formátuma: X\002d\002 = napok ; X\002h\002 = órák"
set black(say.hu.man.978) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.979) "\[MAN\] \002%char%myset\002 noteexpire <időtartam> ; \002%botnick% myset\002 noteexpire <időtartam> ; \002(PRIVMSG) myset\002 noteexpire <időtartam>"

#MyChan

set black(say.hu.man.980) "\[MAN\] \002MyChan\002 egy parancs, amely lehetővé teszi minden felhasználó számára, hogy meghatározza az \002alapcsatornáját\002 (mychan), amikor PRIVMSG-n keresztül parancsokat küld az eggdrop-nak, nem kell specifikálnia egy <#csatorna>-t, az eggdrop automatikusan alkalmazza a parancsokat közvetlenül az \002mychan\002-re."
set black(say.hu.man.981) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.982) "\[MAN\] \002%char%myset\002 mychan <#csatorna> ; \002%botnick% myset\002 mychan <#csatorna> ; \002(PRIVMSG) myset\002 mychan <#csatorna>"

#Invisible

set black(say.hu.man.983) "\[MAN\] \002Invisible\002 lehetővé teszi, hogy egy adott csatorna láthatatlanná váljon az access-szel rendelkező többi felhasználó előtt, és ne jelenjen meg az eggdrop csatornalistájában."
set black(say.hu.man.984) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.985) "\[MAN\] \002%char%set\002 (+/-)invisible ; \002%botnick% set\002 (+/-)invisible ; \002(PRIVMSG) set\002 (+/-)invisible"
set black(say.hu.man.986) "\[MAN\] Beállítások opciók megjelenítése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#MyChar

set black(say.hu.man.987) "\[MAN\] \002MyChar\002 lehetővé teszi minden felhasználó számára, hogy válassza és állítsa be a \002triggerjét\002, amelyre az eggdrop válaszolni fog (parancsokra válaszolva)."
set black(say.hu.man.988) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.989) "\[MAN\] \002%char%myset\002 mychar <trigger> ; \002%botnick% myset\002 mychar <trigger> ; \002(PRIVMSG) myset\002 mychar <trigger>"

#Omsg

set black(say.hu.man.1207) "\[MAN\] \002Omsg\002 küld egy meghatározott üzenetet minden felhasználónak, aki rendelkezik \002OP (@/&/)\002 az adott csatornán."
set black(say.hu.man.1208) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1209) "\[MAN\] %char%omsg\002 <#csatorna|mind> <üzenet> ; \002%botnick% omsg\002 <#csatorna|mind> <üzenet> ; \002(PRIVMSG) omsg\002 <#csatorna|mind> <üzenet>"

#ShowBadChan

set black(say.hu.man.1210) "\[MAN\] \002ShowBadChan\002 az \002BadChan\002 modul egy extra opciója, amely egy meghatározott csatornán lévő minden \002OP (@/&/)\002 felhasználónak küld egy meghatározott üzenetet a kitiltott felhasználóról és az eltiltott csatornákról."
set black(say.hu.man.1211) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1212) "\[MAN\] \002%char%set\002 (+/-)showbadchan ; \002%botnick% set\002 (+/-)showbadchan ; \002(PRIVMSG) set\002 <#csatorna> (+/-)showbadchan"
set black(say.hu.man.1213) "\[MAN\] Beállítások opciók megjelenítése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#ShowTroll

set black(say.hu.man.1214) "\[MAN\] \002ShowTroll\002 a \002Troll\002 parancs egy extra opciója, amely aktiválásakor az eggdrop naponta egyszer, éjfélkor, a csatlakozáskor értesíti az access-szel rendelkező felhasználókat a nap trolljairól (a lista minden nap nullázódik)."
set black(say.hu.man.1215) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1216) "\[MAN\] \002%char%set\002 (+/-)showtroll ; \002%botnick% set\002 (+/-)showtroll ; \002(PRIVMSG) set\002 <#csatorna> (+/-)showtroll"
set black(say.hu.man.1217) "\[MAN\] Beállítások opciók megjelenítése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#Forward

set black(say.hu.man.1218) "\[MAN\] \002Forward\002 minden az eggdrop által fogadott privát üzenetet egy meghatározott csatornára irányít át (kivéve az access-szel rendelkező felhasználóktól származó privát üzeneteket)."
set black(say.hu.man.1219) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1220) "\[MAN\] \002%char%set\002 (+/-)forward ; \002%botnick% set\002 (+/-)forward ; \002(PRIVMSG) set\002 <#csatorna> (+/-)forward"

#ExpireBans

#ExpireBans

set black(say.hu.man.1221) "\[MAN\] \002ExpireBans\002 beállítja azt az előre meghatározott időtartamot, amely után az összes kitiltás a csatornáról eltávolításra kerül. Ha ezen beállításnál \0020\002-át adja meg, az eggdrop sosem fogja eltávolítani a kitiltásokat."
set black(say.hu.man.1222) "\[MAN\] Időtartam formátuma: X\002ó\002 = óra ; X\002p\002 = perc"
set black(say.hu.man.1223) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1224) "\[MAN\] \002%char%set\002 expirebans <időtartam> ; \002%botnick% set\002 expirebans <időtartam> ; \002(PRIVMSG) set\002 <#csatorna> expirebans <időtartam>"
set black(say.hu.man.1225) "Beállítások opciók megjelenítése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#mb

set black(say.hu.man.1226) "\[MAN\] \002mb\002 automatikusan kitilt egy adott felhasználót az IDENT-en és egy adott okkal (IRC kliensekhez, mint például: mibbit, irccloud, stb.)."
set black(say.hu.man.1227) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1228) "\[MAN\] \002%char%mb\002 <nick> \[ok\] ; \002%botnick% mb\002 <nick> \[ok\] ; \002(PRIVMSG) mb\002 <#csatorna> <nick> \[ok]"
set black(say.hu.man.1229) "\[MAN\] Opcionális beállítások: \002mb-reason\002 (előre meghatározott ok); \002mb-bantime\002 (előre meghatározott kitiltási idő)"


################################################# MAN EGG #####################################################

#Egg

set black(say.hu.man.990) "\[MAN\] \002Egg\002 egy modul, amely lehetővé teszi a bizonyos beállítások/opciók konfigurálását az eggdrop \002.conf\002 fájl struktúrájában."
set black(say.hu.man.991) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.992) "\[MAN\] \002%char%egg\002 <opció> <beállítás> ; \002%botnick% egg\002 <opció> <beállítás> ; \002(PRIVMSG) egg\002 <opció> <beállítás>"

#Egg CmdChar

set black(say.hu.man.994) "\[MAN\] \002CmdChar\002 egy olyan parancs, amellyel megváltoztathatja a \002cmdchar default\002 karaktert, amelyre az eggdrop reagál (több cmdchar is hozzáadható)."
set black(say.hu.man.995) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.996) "\[MAN\] \002%char%set cmdchar\002 <trigger1 trigger2 ..> ; \002%botnick% set cmdchar\002 <trigger1 trigger2 ..> ; \002(PRIVMSG) set cmdchar\002 <trigger1 trigger2 ..>"

#Egg DefaultLang

set black(say.hu.man.998) "\[MAN\] \002DefaultLang\002 egy olyan parancs, amellyel megváltoztathatja a BlackToolS script alapnyelvét."
set black(say.hu.man.998_1) "\[MAN\] Elérhető nyelvek: \002RO\002 = ROMÁN ; \002EN\002 = ANGOL"
set black(say.hu.man.999) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1100) "\[MAN\] \002%char%set defaultlang\002 <nyelv> ; \002%botnick% set defaultlang\002 <nyelv> ; \002(PRIVMSG) set defaultlang\002 <nyelv>"

#Egg HomeChan

set black(say.hu.man.1102) "\[MAN\] \002HomeChan\002 egy olyan parancs, amellyel megváltoztathatja az eggdrop alapcsatornáját (homechan). A csatorna, ahol az eggdrop belép vagy bizonyos információkat jelenít meg, jelentést tesz a kick/ban-ekről és az abúzusokról."
set black(say.hu.man.1103) "\[MAN\] \002Megjegyzés\002: ez a csatorna \002statikus\002 (az eggdrop sosem nem végzi el a purge/cycle műveletet ezen a csatornán) és általában privát/titkos csatorna (csak egyetlen \002homechan\002 típusú csatornát támogat)."
set black(say.hu.man.1104) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1105) "\[MAN\] \002%char%set homechan\002 <#csatorna> ; \002%botnick% set homechan\002 <#csatorna> ; \002(PRIVMSG) set homechan\002 <#csatorna>"

#Egg RealName

set black(say.hu.man.1107) "\[MAN\] \002RealName\002 egy olyan parancs, amellyel megváltoztathatja azt a szöveget, amelyet az eggdrop az IRC-en megjelenít a \002real-name\002 mezőben (újraindítás szükséges az aktiváláshoz)."
set black(say.hu.man.1108) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1109) "\[MAN\] \002%char%set realname\002 <szöveg> ; \002%botnick% set realname\002 <szöveg> ; \002(PRIVMSG) set realname\002 <szöveg>"

#Egg Away

set black(say.hu.man.1111) "\[MAN\] \002Away\002 egy olyan parancs, amely lehetővé teszi egy away üzenet beállítását, amit az eggdrop automatikusan beállít a IRC-re történő csatlakozáskor."
set black(say.hu.man.1112) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1113) "\[MAN\] \002%char%set away\002 <away üzenet> ; \002%botnick% set away\002 <away üzenet> ; \002(PRIVMSG) set away\002 <away üzenet>"
set black(say.hu.man.1113_1) "\[MAN\] \002%char%set away\002; \002%botnick% set away\002; \002(PRIVMSG) set away\002 (away üzenet kikapcsolása)"

#Egg DefaultOutput

set black(say.hu.man.1115) "\[MAN\] \002DefaultOutput\002 egy olyan parancs, amely lehetővé teszi az eggdrop-ra érkező üzenetek alapértelmezett fogadási módjának megváltoztatását (az alapértelmezett mód a \002CHAN\002)."
set black(say.hu.man.1115_1) "\[MAN\] Elérhető módok: \0020\002 = NOTICE ; \002 1\002 = CHAN ; \002 2\002 = PRIVMSG"
set black(say.hu.man.1116) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1117) "\[MAN\] \002%char%set defaultoutput\002 <mód> ; \002(PRIVMSG) set defaultoutput\002 <mód>"

#Egg FloodMenuProt

set black(say.hu.man.1119) "\[MAN\] \002FloodMenuProt\002 egy olyan parancs, amely a \002flood\002 elleni védelem szolgálatában áll az eggdrop számára. Meghatározza, hogy egy felhasználó mennyi parancsot küldhet másodpercenként az eggdrophoz, mielőtt árvíznek tekintenék, majd az eggdrop rövid ideig figyelmen kívül hagyja az összes üzenetét."
set black(say.hu.man.1120) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1121) "\[MAN\] \002%char%set floodmenuprot\002 <parancsok:mp> ; \002%botnick% set floodmenuprot\002 <parancsok:mp> ; \002(PRIVMSG) set floodmenuprot\002 <parancsok:mp>"

#Egg UserFloodMsgProt

set black(say.hu.man.1135) "\[MAN\] \002UserFloodMsgProt\002 egy olyan parancs, amely a \002PRIVMSG flood\002 elleni védelem szolgálatában áll az eggdrop számára. Meghatározza, hogy egy felhasználó mennyi üzenetet küldhet másodpercenként privátban az eggdrophoz, mielőtt árvíznek tekintenék, majd az eggdrop rövid ideig figyelmen kívül hagyja az összes üzenetét."
set black(say.hu.man.1136) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1137) "\[MAN\] \002%char%set floodmsgprot\002 <üzenetek:mp> ; \002%botnick% set floodmsgprot\002 <üzenetek:mp> ; \002(PRIVMSG) set floodmsgprot\002 <üzenetek:mp>"

#Egg FloodNotcProt

set black(say.hu.man.1139) "\[MAN\] \002FloodNotcProt\002 egy olyan parancs, amely a \002NOTICE flood\002 elleni védelem szolgálatában áll az eggdrop számára. Meghatározza, hogy egy felhasználó mennyi üzenetet küldhet másodpercenként privátban az eggdrophoz, mielőtt árvíznek tekintenék, majd az eggdrop rövid ideig figyelmen kívül hagyja az összes üzenetét."
set black(say.hu.man.1140) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1141) "\[MAN\] \002%char%set floodnotcprot\002 <üzenetek:mp> ; \002%botnick% set floodnotcprot\002 <üzenetek:mp> ; \002(PRIVMSG) set floodnotcprot\002 <üzenetek:mp>"

#Egg ChanRemove-Setting

set black(say.hu.man.1143) "\[MAN\] \002ChanRemove-Setting\002 egy olyan opció, amelyet aktiválva, amikor egy csatorna törlődik a csatornalistáról, az eggdrop törli az összes adatot, amely a csatornához kapcsolódik, például a felhasználók listája, a kitiltások listája, a seen adatbázis stb."
set black(say.hu.man.1143_1) "\[MAN\] \0021\002 = igen ; \0020\002 = nem"
set black(say.hu.man.1144) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1145) "\[MAN\] \002%char%set chanremove-setting\002 <1|0> ; \002%botnick% set chanremove-setting\002 <1|0> ; \002(PRIVMSG) set chanremove-setting\002 <1|0>"

#Egg User-Expire

set black(say.hu.man.1147) "\[MAN\] \002User-Expire\002 egy olyan parancs, amellyel meghatározhatja, hogy az eggdrop mennyi ideig tárolja a felhasználókat a seen listában, és azokat automatikusan törli, akik ennél régebbi időponthoz kapcsolódnak."
set black(say.hu.man.1147_1) "\[MAN\] Időtartam formátuma: X\002d\002 = napok"
set black(say.hu.man.1148) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1149) "\[MAN\] \002%char%set user-expire\002 <időtartam> ; \002%botnick% set user-expire\002 <időtartam> ; \002(PRIVMSG) set user-expire\002 <időtartam>"

#Egg PageLimit

set black(say.hu.man.1139) "\[MAN\] \002PageLimit\002 egy olyan parancs, amellyel meghatározhatja az \002alapértelmezett megjelenítések számát oldalanként\002 azokhoz a modulokhoz, amelyek a \002- list -\002 funkciót használják."
set black(say.hu.man.1140) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1141) "\[MAN\] \002%char%set pagelimit\002 <bejegyzésszám> ; \002%botnick% set pagelimit\002 <bejegyzésszám> ; \002(PRIVMSG) set pagelimit\002 <bejegyzésszám>"

#Egg Login

set black(say.hu.man.1143) "\[MAN\] \002Login\002 egy olyan parancs, amellyel kézi bejelentkezést végezhet el eggdrop-jával a Chanservhez (X, Q stb.)."
set black(say.hu.man.1144) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1145) "\[MAN\] \002%char%login\002 ; %botnick% login ; \002(PRIVMSG) login\002"

#Egg Chanserv

set black(say.hu.man.1147) "\[MAN\] \002Chanserv\002 egy olyan parancs, amellyel beállíthatja az \002alapértelmezett nick nevét\002, amelyet a ChanServ (X, Q stb.) az IRC hálózattól függően használ az eggdrop csatlakozásakor."
set black(say.hu.man.1148) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1149) "\[MAN\] \002%char%set chanserv\002 <nickchanserv> ; \002\002%botnick% set chanserv\002 <nickchanserv> ; \002(PRIVMSG) set chanserv\002 <nickchanserv>"

#Egg HostChanserv

set black(say.hu.man.1151) "\[MAN\] \002HostChanserv\002 egy olyan parancs, amellyel beállíthatja az \002alapértelmezett host nevét\002, amelyet a ChanServ (X, Q stb.) az IRC hálózattól függően használ az eggdrop csatlakozásakor."
set black(say.hu.man.1152) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1153) "\[MAN\] \002%char%egg hostchanserv\002 <hostchanserv> ; \002%botnick% egg hostchanserv\002 <hostchanserv> ; \002(PRIVMSG) set hostchanserv\002 <hostchanserv>"

#Egg UserLogin

set black(say.hu.man.1155) "\[MAN\] \002UserLogin\002 egy olyan parancs, amellyel beállíthatja az \002alapértelmezett felhasználónevet\002, amellyel az eggdrop automatikusan bejelentkezik a ChanServhez (X, Q stb.)."
set black(say.hu.man.1156) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1157) "\[MAN\] \002%char%set userlogin\002 <userchanserv> ; \002%botnick% set userlogin\002 <userchanserv> ; \002(PRIVMSG) set userlogin\002 <userchanserv>"

#Egg UserPass

set black(say.hu.man.1159) "\[MAN\] \002UserPass\002 egy olyan parancs, amellyel beállíthatja az \002alapértelmezett jelszót\002, amellyel az eggdrop automatikusan bejelentkezik a ChanServhez (X, Q stb.)."
set black(say.hu.man.1160) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1161) "\[MAN\] \002%char%set userpass\002 <passchanserv> ; \002%botnick% set userpass\002 <passchanserv> ; \002(PRIVMSG) set userpass\002 <passchanserv>"

#Egg Add-Mask

set black(say.hu.man.1163) "\[MAN\] \002Add-Mask\002 egy olyan parancs, amellyel beállíthatja az \002alapértelmezett host nevet\002, amelyet az eggdrop használ az új hozzáférésű felhasználók hozzáadásakor."
set black(say.hu.man.1163_1) "\[MAN\] Elérhető hostmaszkok:"
set black(say.hu.man.1163_2) "\[MAN\] \002#1\002 *!*@host ; \002#2\002 *!user@host ; \002#3\002 nick!user@host ; \002#4\002 nick!*@* ; \002#5\002 *!user@*"
set black(say.hu.man.1164) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1165) "\[MAN\] \002%char%set add-mask\002 <hostmaszk sorszám> ; \002%botnick% set add-mask\002 <hostmaszk sorszám> ; \002(PRIVMSG) set add-mask\002 <hostmaszk sorszám>"

#Egg Adduser-Mask

set black(say.hu.man.1167) "\[MAN\] \002Adduser-Mask\002 egy olyan parancs, amellyel beállíthatja az \002alapértelmezett hostnevet\002, például \001 *!*@%user%.users.undernet.org\001, amelyet az eggdrop használ az új hozzáférésű felhasználók hozzáadásakor."
set black(say.hu.man.1168) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1169) "\[MAN\] \002%char%set adduser-mask\002 <hostmaszk> ; \002%botnick% set adduser-mask\002 <hostmaszk> ; \002(PRIVMSG) set adduser-mask\002 <hostmaszk>"

#AntiSpam-ScanTime

set black(say.hu.man.1175) "\[MAN\] \002AntiSpam-ScanTime\002 az \002antispam\002 modul egy extra opciója, amellyel beállíthatja a maximális időt az egyes \002/cycle\002-ek között, amelyeket az eggdrop a spam üzenetek észleléséhez használ."
set black(say.hu.man.1175_1) "\[MAN\] Időformátum: X\002m\002 = perc ; X\002h\002 = óra"
set black(say.hu.man.1176) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1177) "\[MAN\] \002%char%set\002 antispam-scantime <időtartam> ; \002%botnick% set\002 antispam-scantime <időtartam> ; \002(PRIVMSG) set\002 antispam-scantime <időtartam>"

#Idle-ScanTime

set black(say.hu.man.1179) "\[MAN\] \002Idle-ScanTime\002 az \002idle\002 modul egy extra opciója, amellyel beállíthatja a maximális időt az \002op (@)\002 vagy \002voice (+ v)\002 állapotú felhasználók idle szkennelése között."
set black(say.hu.man.1179_1) "\[MAN\] Időformátum: X\002m\002 = perc ; X\002h\002 = óra"
set black(say.hu.man.1180) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1181) "\[MAN\] \002%char%set\002 idle-scantime <időtartam> ; \002%botnick% set\002 idle-scantime <időtartam> ; \002(PRIVMSG) set\002 idle-scantime <időtartam>"

#CloneScan-ScanTime

set black(say.hu.man.1183) "\[MAN\] \002CloneScan-ScanTime\002 egy extra opció a \002clonescan\002 modulban, amely segítségével beállíthatja a maximális időt az egyes klónozott felhasználókra történő szkennelések között."
set black(say.hu.man.1183_1) "\[MAN\] Időformátum: X\002m\002 = perc ; X\002h\002 = óra"
set black(say.hu.man.1184) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1185) "\[MAN\] \002%char%set\002 clonescan-scantime <időtartam> ; \002%botnick% set\002 clonescan-scantime <időtartam> ; \002(PRIVMSG) set\002 clonescan-scantime <időtartam>"

#Broadcast-ShowTime

set black(say.hu.man.1187) "\[MAN\] \002Broadcast-ShowTime\002 egy extra opció a \002broadcast\002 modulban, amely segítségével beállíthatja a maximális időt a csatornán történő \002broadcast üzenetek\002 között."
set black(say.hu.man.1187_1) "\[MAN\] Időformátum: X\002m\002 = perc ; X\002h\002 = óra"
set black(say.hu.man.1188) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1189) "\[MAN\] \002%char%egg\002 broadcast-showtime <időtartam> ; \002%botnick% egg\002 broadcast-showtime <időtartam> ; \002(PRIVMSG) egg\002 broadcast-showtime <időtartam>"

#BadChan-ScanTime

set black(say.hu.man.1191) "\[MAN\] \002BadChan-ScanTime\002 egy extra opció a \002badchan\002 modulban, amely segítségével beállíthatja a maximális időt a tiltott csatornákon található felhasználókra történő szkennelések között."
set black(say.hu.man.1191_1) "\[MAN\] Időformátum: X\002m\002 = perc ; X\002h\002 = óra"
set black(say.hu.man.1192) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1193) "\[MAN\] \002%char%set\002 badchan-scantime <időtartam> ; \002%botnick% set\002 badchan-scantime <időtartam> ; \002(PRIVMSG) set\002 badchan-scantime <időtartam>"

#QuoteOfDay-ShowTime

set black(say.hu.man.1199) "\[MAN\] \002QuoteOfDay-ShowTime\002 egy extra opció az \002quote\002 modulban, amely segítségével beállíthatja a maximális időt a csatornán történő \002napi idézetek\002 között."
set black(say.hu.man.1199_1) "\[MAN\] Időformátum: X\002m\002 = perc ; X\002h\002 = óra"
set black(say.hu.man.1200) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1201) "\[MAN\] \002%char%set\002 quoteofday-showtime <időtartam> ; \002%botnick% set\002 quoteofday-showtime <időtartam> ; \002(PRIVMSG) set\002 quoteofday-showtime <időtartam>"

#QuitPartColor

set black(say.hu.man.1203) "\[MAN\] \002QuitPartColor\002 egy extra opció az \002AntiBadQuitPart\002 modulban, amely azok ellen hat, akik a *színeket* használják a %chan% elhagyásához a /part vagy /quit parancsokban."
set black(say.hu.man.1204) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1205) "\[MAN\] \002%char%set\002 (+/-)quitpartcolor ; \002%botnick% set\002 (+/-)quitpartcolor ; \002(PRIVMSG) set\002 <#csatorna> (+/-)quitpartcolor"
set black(say.hu.man.1206) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#VoiceMe-ShowTime

set black(say.hu.man.1230) "\[MAN\] \002VoiceMe-ShowTime\002 egy extra opció a \002VoiceMe\002 modulban, amely segítségével beállíthatja a maximális időt a csatornán történő \002speciális üzenetek\002 között."
set black(say.hu.man.1231) "\[MAN\] Időformátum: X\002m\002 = perc ; X\002h\002 = óra"
set black(say.hu.man.1232) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1233) "\[MAN\] \002%char%set\002 voiceme-showtime <időtartam> ; \002%botnick% set\002 voiceme-showtime <időtartam> ; \002(PRIVMSG) set\002 voiceme-showtime <időtartam>"

#BadChan-BanWait

set black(say.hu.man.1234) "\[MAN\] \002BadChan-BanWait\002 egy extra opció a \002BadChan\002 modulban, amely segítségével beállíthatja a maximális időt a tiltott csatornákról történő kilépés után kapott kitiltás előtt."
set black(say.hu.man.1235) "\[MAN\] Időformátum: X\002s\002 = másodperc"
set black(say.hu.man.1236) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1237) "\[MAN\] \002%char%set\002 badchan-banwait <időtartam> ; \002%botnick% set\002 badchan-banwait <időtartam> ; \002(PRIVMSG) set\002 \[#csatorna\] badchan-banwait <időtartam>"

#BadNick-BanWait

set black(say.hu.man.1238) "\[MAN\] \002Badnick-BanWait\002 egy extra opció a \002BadNick\002 modulban, amely segítségével beállíthatja a maximális időt a tiltott nevű felhasználók általános kitiltása előtt."
set black(say.hu.man.1239) "\[MAN\] Időformátum: X\002s\002 = másodperc"
set black(say.hu.man.1240) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1241) "\[MAN\] \002%char%set\002 badnick-banwait <időtartam> ; \002%botnick% set\002 badnick-banwait <időtartam> ; \002(PRIVMSG) set\002 \[#csatorna\] badnick-banwait <időtartam>"

#BadNick-BMethod

set black(say.hu.man.1242) "\[MAN\] \002BadNick-BMethod\002 egy extra opció a \002BadNick\002 modulban, amely lehetővé teszi a kitiltási módszer kiválasztását."
set black(say.hu.man.1243) "\[MAN\] Módszer formátuma:\002 #1\002 - figyelmeztetési üzenet -> kitiltás ;\002 #2\002 - kitiltás"
set black(say.hu.man.1244) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1245) "\[MAN\] \002%char%set\002 badnick-bmethod <szám> ; \002%botnick% set\002 badnick-bmethod <szám> ; \002(PRIVMSG) set\002 \[#csatorna\] badnick-bmethod <szám>"

#BadChan-BMethod

set black(say.hu.man.1246) "\[MAN\] \002BadChan-BMethod\002 egy extra opció a \002BadChan\002 modulban, amely lehetővé teszi a kitiltási módszer kiválasztását."
set black(say.hu.man.1247) "\[MAN\] Módszer formátuma:\002 #1\002 - figyelmeztetési üzenet -> kitiltás ;\002 #2\002 - kitiltás"
set black(say.hu.man.1248) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1249) "\[MAN\] \002%char%set\002 badchan-bmethod <szám> ; \002%botnick% set\002 badchan-bmethod <szám> ; \002(PRIVMSG) set\002 \[#csatorna\] badchan-bmethod <szám>"

#RepetitiveChars

set black(say.hu.man.1250) "\[MAN\] \002RepetitiveChars\002 egy modul, amely aktiválásakor az eggdrop intézkedéseket tesz bármely olyan felhasználóval szemben, aki ismétlődő és egymást követő karaktereket használ."
set black(say.hu.man.1251) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1252) "\[MAN\] \002%char%set\002 (+/-)repetitivechars ; \002%botnick% set\002 (+/-)repetitivechars ; \002(PRIVMSG) set\002 \[#csatorna\] (+/-)repetitivechars"
set black(say.hu.man.1253) "\[MAN\] Opcionális beállítások: \002repetitivechars-reason\002 ; repetitivechars-bantime ; \002repetitivechars-warn\002 ; repetitivechars-banmethod ; \002repetitivechars-banmask\002 ; repetitivechars-char"
set black(say.hu.man.1254) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#QuitPartMsgFlood

set black(say.hu.man.1255) "\[MAN\] \002QuitPartMsgFlood\002 egy extra opció a \002AntiBadQuitPart\002 modulban, amely fellép a felhasználókkal szemben, akik %chan%-t elhagyva *flódszövegeket* használnak a /part vagy /quit parancsnál."
set black(say.hu.man.1256) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1257) "\[MAN\] \002%char%set (+/-)quitpartmsgflood\002 ; %botnick% set (+/-)quitpartmsgflood ; \002(PRIVMSG) set <#csatorna> (+/-)quitpartmsgflood\002"
set black(say.hu.man.1258) "\[MAN\] Opcionális beállítások: \002quitpartmsgflood-char\002"
set black(say.hu.man.1259) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#MassFloodSilenceTime

set black(say.hu.man.1260) "\[MAN\] \002MassFloodSilenceTime\002 védi az eggdrop-ot a ctcp/ctcr, notice vagy msg tömeges flódtól a silence parancs használatával."
set black(say.hu.man.1261) "\[MAN\] ** Megjegyzés: Ez egy automatikus botvédelem, amely akkor lép életbe, amikor a bot tömeges flódot kap a botnetből vagy privátban. **"
set black(say.hu.man.1262) "\[MAN\] Időformátum: <X>\002s\002 = másodperc"
set black(say.hu.man.1263) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1264) "\[MAN\] \002%char%set\002 massfloodsilencetime <időtartam> ; \002%botnick% set\002 massfloodsilencetime <időtartam> ; \002(PRIVMSG) set\002 massfloodsilencetime <időtartam>"

#BanMethod-Expire

set black(say.hu.man.1265) "\[MAN\] \002BanMethod-Expire\002 lehetővé teszi az intervallum meghatározását minden védekezési számlálás után bekövetkező lejárat előtt."
set black(say.hu.man.1266) "\[MAN\] Időformátum: <X>\002m\002 = perc"
set black(say.hu.man.1267) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1268) "\[MAN\] \002%char%set\002 banmethod-expire <időtartam> ; \002%botnick% set\002 banmethod-expire <időtartam> ; \002(PRIVMSG) set\002 <#csatorna> banmethod-expire <időtartam>"

#Count

set black(say.hu.man.1269) "\[MAN\] \002Count\002 lehetővé teszi, hogy meghatározz egy üdvözlő üzenetet a csatlakozáskor, bizonyos \002változók\002 használatával. Ehhez szükséges, hogy aktiválva legyen a \001+greet\001, további információért lásd a \002%char%man greet\002-t."
set black(say.hu.man.1270) "\[MAN\] Elérhető változók: \002%countchan%\002 = csatorna neve ; \002%nick%\002 = csatlakozó nick ; \002%count%\002 = csatlakozások száma ; \002%time%\002 = csatorna létrehozásának dátuma"
set black(say.hu.man.1271) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1272) "\[MAN\] \002%char%greet\002 set <szöveg> ; \002%botnick% greet\002 set <szöveg> ; \002(PRIVMSG) greet\002 <#csatorna> set <szöveg>"
set black(say.hu.man.1273) "\[MAN\] \001Példa\001: Üdv %nick%, te vagy a(z) %count%. csatlakozó a %countchan% csatornán %time% óta."

#Exempt

set black(say.hu.man.1278) "\[MAN\] \002Exempt\002 Hozzáad egy kivételt az eggdrop által tárolt kitiltásokhoz, opcionális indokkal és időtartammal."
set black(say.hu.man.1279) "\[MAN\] ** MEGJEGYZÉS: Ha a <global> meg van adva, akkor a kivétel az eggdrop összes csatornájára vonatkozik. **"
set black(say.hu.man.1280) "\[MAN\] Formátum időtartam: <X>\002h\002 = óra ; <X>\002m\002 = perc ; <X>\002d\002 = nap"
set black(say.hu.man.1281) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1282) "\[MAN\] \002%char%exempt\002 \[#csatorna\] add <ip/host> <időtartam> <indok> (kivétel hozzáadása) ; \002%char%exempt\002 \[#csatorna\] list ; \002%char%exempt\002 \[#csatorna\] del <ip/host> (kivétel eltávolítása a listából)"
set black(say.hu.man.1283) "\[MAN\] \002%char%exempt\002 \[#csatorna\] add <ip/host> <időtartam> \[global\] <indok> (kivétel hozzáadása) ; \002%char%exempt\002 \[#csatorna\] list \[global\] ; \002%char%exempt\002 \[#csatorna\] del <ip/host> \[global\] (kivétel eltávolítása a listából)"

#For

set black(say.hu.man.1284) "\[MAN\] \002For\002 Lehetővé teszi, hogy több eggdrop egyidejűleg hajtson végre ugyanazt a parancsot/parancsokat."
set black(say.hu.man.1285) "\[MAN\] HASZNÁLATI SZINTAXIS:"
set black(say.hu.man.1286) "\[MAN\] \002for\002 <botnick1>,<botnick2>.. <parancs> <opció>"

##################################### MAN TIPS #############################################


set black(say.hu.man.showtip) {
 "\[TIP\] Tudtad, hogy használhatsz \002különböző időformátumokat\002 a kitiltásoknál? Például: \00210m\002 (perc) ; \00210h\002 (óra) ; \00210d\002 (nap)?"
 "\[TIP\] Ha problémába ütközöl a \002Blacktools scripttel\002, vagy találtál egy \002BUG\002-ot, posztold azt a \002tclscripts.net\002 fórumán egy részletes leírással."
 "\[TIP\] Tudtad, hogy használhatsz \002CIDR\002-t a kitiltásoknál? Például: \002%char%b <ip/cidr>\002 | %char%b *!*@192.168.0.1/17"
 "\[TIP\] \002FIGYELEM!!\002 Azok, akik \002egyszerre\002 használják mind az \002a&a\002, mind a \002Blacktools\002 scriptet, tudniuk kell, hogy ez elméletileg működik. Tehát \002ne kérj segítséget\002 ehhez a szkripthez, ha együtt használod az \002a&a scripttel\002."
 "\[TIP\] Tudtad, hogy hozzáadhatsz \002több mint egy mondatot\002 egy bejelentéshez? Például: \002%char%anunt add <anunt1>~<anunt2>~<anunt3>\002 | %char%anunt add Bine ai venit pe %chan%~Distractie placuta~The Next Generation TCL"
 "\[TIP\] Keresd fel a fórumunkat az \002http://tclscripts.net\002 oldalon a legfrissebb frissítésekért és információkért."
 "\[TIP\] Tudtad, hogy másolhatod mind a beállításokat, mind a tiltási vagy felhasználói listát egyik csatornáról a másikra? Például: \002%char%cp userlist <#csatorna1> <#csatorna2>\002 | További részletekért: \002%char%man cp\002"
 "\[TIP\] Használj olyan TCL szkripteket, amelyekre tényleg szükséged van az eggdrop-odon. Az interneten található mindenféle szép és vicces szkript tönkreteheti és bizonytalan lehet az eggdropod működését!" 
 "\[TIP\] Tudtad, hogy mostantól letöltheted a\002*.tcl\002 fájlokat közvetlenül egy URL-ről az eggdrop \002scripts\002 mappájába? Például: \002%char%tcl wget <link/nume.tcl>\002 | További részletekért: \002%char%man tcl\002"
 "\[TIP\] Az \002WwW.TclScripts.Net\002 számos TCL-t kínál letöltésre az eggdrop-odhoz (BlackIP.tcl, YoutubeTitle.tcl, BlackCountry.tcl, CSC.tcl és sok más), hogy professzionális és modern BOT-od legyen."
 "\[TIP\] Tudtad, hogy mostantól használhatod a \002for\002 parancsot több eggdropon ugyanazzal a parancsokkal? Például: for Bot1,Bot2,Bot3 say bla bla | További részletekért: \002%char%man for\002"
 "\[TIP\] \002(\$)\002 Szeretnél egy \002személyre szabott TCL szkriptet\002 az eggdrop-odhoz? Semmi könnyebb, csak \002mond el, mit szeretnél\002! Készíthetünk \002majdnem mindenféle TCL-t\002 az ötleteid és adományaid alapján. Küldd el az \002blackshadow@tclscripts.net\002 vagy az \002info@tclscripts.net\002 e-mail címre a kért információkat, és felvesszük veled a kapcsolatot \002amint csak lehetséges\002."
 "\[TIP\] Tudtad, hogy mostantól hozzáadhatsz \002kivételeket bizonyos szavakhoz\002 a szkript védelmeihez, hogy elkerüld a felhasználók felesleges kick-jét vagy kitiltását, amikor valójában nem szükséges? További részletekért: \002%char%man exempt\002"
 "\[TIP\] Tudtad, hogy mostantól hozzáadhatsz \002egy megjegyzést\002 néhány kitiltási parancshoz\002, amelyet az eggdrop elérhetővé tesz\002, amikor más felhasználók azonban ezt lekérdezik a kitiltásokról? Például: \002%char%b nick just a test -c do not remove\002 | \[BT\] Motiváció: just a test | \[BT\] \002\[KITILTÁSI MEGJEGYZÉS\]\002 ne távolítsa el"
}

####################################### MAN SETARI INTERNE EGGDROP #############################################


#Ban-Time

set black(say.hu.man.2101) "\[MAN\] \002Ban-Time/BanTime\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, de meghatározza a ideiglenes kitiltások időtartamát (percben). Ha \0020\002 van megadva, az eggdrop sosem fogja feloldani ezeket a kitiltásokat."
set black(say.hu.man.2102) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2103) "\[MAN\] \002%char%set\002 ban-time <időtartam> ; \002%botnick% set\002 ban-time <időtartam> ; \002(PRIVMSG) set\002 <#csatorna> ban-time <időtartam>"

#ChanMode

set black(say.hu.man.2104) "\[MAN\] \002ChanMode\002 az eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, de kényszeríti a megadott csatorna módokat az eggdropra."
set black(say.hu.man.2105) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2106) "\[MAN\] \002%char%set\002 chanmode (+/-)<módok> ; \002%botnick% set\002 chanmode (+/-)<módok> ; \002(PRIVMSG) set\002 <#csatorna> chanmode (+/-)<módok>"

#DontKickOps

set black(say.hu.man.2107) "\[MAN\] \002DontKickOps\002 az eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, de megakadályozza az eggdropot abban, hogy kiállítsa azokat a felhasználókat, akik rendelkeznek az \002+o\002 zászlóval, és lehetővé teszi nekik, hogy flood-kicket alkalmazzanak a csatorna védelme érdekében klóntámadás esetén."
set black(say.hu.man.2108) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2109) "\[MAN\] \002%char%set\002 (+/-)dontkickops ; \002%botnick% set\002 (+/-)dontkickops ; \002(PRIVMSG) set\002 <#csatorna> (+/-)dontkickops"

#EnforceBans 

set black(say.hu.man.2110) "\[MAN\] \002EnforceBans\002 az eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, és amikor egy kitiltás meg van adva, kickeléseket hajt végre azokra a csatornában lévő felhasználókra, akik megfelelnek az adott kitiltásnak (az accessszel rendelkező felhasználók nem kapnak kicket)."
set black(say.hu.man.2111) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2112) "\[MAN\] \002%char%set\002 (+/-)enforcebans ; \002%botnick% set\002 (+/-)enforcebans ; \002(PRIVMSG) set\002 <#csatorna> (+/-)enforcebans"

#DynamicBans 

set black(say.hu.man.2113) "\[MAN\] \002DynamicBans\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, de a csatorna kitiltásait csak akkor aktiválja, amikor szükséges. Ez a beállítás megakadályozza, hogy a csatorna kitiltási listája túlságosan hosszú legyen. Az eggdrop még mindig megjegyzi minden kitiltást, de csak akkor aktiválja a csatorna kitiltását, amikor lát egy olyan felhasználót, aki megfelel egy kitiltásnak."
set black(say.hu.man.2114) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2115) "\[MAN\] \002%char%set\002 (+/-)dynamicbans ; \002%botnick% set\002 (+/-)dynamicbans ; \002(PRIVMSG) set\002 <#csatorna> (+/-)dynamicbans"

#UserBans 

set black(say.hu.man.2116) "\[MAN\] \002UserBans\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, de lehetővé teszi, hogy a kitiltásokat közvetlenül a felhasználók hajtsák végre. Ha letiltva van, az eggdrop azt fogja kérni, hogy minden kitiltást a konzolon keresztül végezzenek."
set black(say.hu.man.2117) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2118) "\[MAN\] \002%char%set\002 (+/-)userbans ; \002%botnick% set\002 (+/-)userbans ; \002(PRIVMSG) set\002 <#csatorna> (+/-)userbans"

#AutoOp 

set black(say.hu.man.2119) "\[MAN\] \002AutoOp\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, de kötelezi az eggdropot, hogy automatikusan adjon op (@) zászlóval rendelkező felhasználóknak, amint belépnek a csatornára (ez a beállítás nem biztonságos és nem ajánlott)."
set black(say.hu.man.2120) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2121) "\[MAN\] \002%char%set\002 (+/-)autoop ; \002%botnick% set\002 (+/-)autoop ; \002(PRIVMSG) set\002 <#csatorna> (+/-)autoop"

#AutoHalfOp 

set black(say.hu.man.2122) "\[MAN\] \002AutoHalfOp\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, de kötelezi az eggdropot, hogy automatikusan adjon half-op (%/+h) zászlóval rendelkező felhasználóknak, amint belépnek a csatornára (ez a beállítás nem biztonságos és nem ajánlott)."
set black(say.hu.man.2123) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2124) "\[MAN\] \002%char%set\002 (+/-)autohalfop ; \002%botnick% set\002 (+/-)autohalfop ; \002(PRIVMSG) set\002 <#csatorna> (+/-)autohalfop"

#AutoVoice 

set black(say.hu.man.2125) "\[MAN\] \002AutoVoice\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, de kötelezi az eggdropot, hogy automatikusan adjon voice (+v) zászlóval rendelkező felhasználóknak, amint belépnek a csatornára."
set black(say.hu.man.2126) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2127) "\[MAN\] \002%char%set\002 (+/-)autovoice ; \002%botnick% set\002 (+/-)autovoice ; \002(PRIVMSG) set\002 <#csatorna> (+/-)autovoice"

#Bitch 

set black(say.hu.man.2128) "\[MAN\] \002Bitch\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, és amely lehetővé teszi, hogy az eggdrop csak az op (@) zászlóval rendelkező felhasználókat hagyja meg a csatornában. Ha a csatornán van \002X\002 vagy \002ChanServ\002, a felhasználók biztosan megpróbálják kivonni/deop/kickelni az eggdropot bosszúból (ez a parancs nem ajánlott)."
set black(say.hu.man.2129) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2130) "\[MAN\] \002%char%set\002 (+/-)bitch ; \002%botnick% set\002 (+/-)bitch ; \002(PRIVMSG) set\002 <#csatorna> (+/-)bitch"

#Greet 

set black(say.hu.man.2131) "\[MAN\] \002Greet\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, és lehetővé teszi, hogy az eggdrop üzenetet küldjön minden olyan felhasználónak, aki belép a csatornába, a beállított köszöntőüzenettel (lásd még \002%char%man myset\002)."
set black(say.hu.man.2132) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2133) "\[MAN\] \002%char%set\002 (+/-)greet ; \002%botnick% set\002 (+/-)greet ; \002(PRIVMSG) set\002 <#csatorna> (+/-)greet"

#ProtectOps 

set black(say.hu.man.2134) "\[MAN\] \002ProtectOps\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, és amely lehetővé teszi, hogy az eggdrop automatikusan ismét megadja az op (@) zászlóval rendelkező felhasználóknak, ha elveszítik."
set black(say.hu.man.2135) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2136) "\[MAN\] \002%char%set\002 (+/-)protectops ; \002%botnick% set\002 (+/-)protectops ; \002(PRIVMSG) set\002 <#csatorna> (+/-)protectops"

#ProtectFriends 

set black(say.hu.man.2137) "\[MAN\] \002ProtectFriends\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, és amely lehetővé teszi, hogy az eggdrop automatikusan ismét megadja a barátoknak jelölt felhasználóknak, ha elveszítik."
set black(say.hu.man.2138) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2139) "\[MAN\] \002%char%set\002 (+/-)protectfriends ; \002%botnick% set\002 (+/-)protectfriends ; \002(PRIVMSG) set\002 <#csatorna> (+/-)protectfriends"

#ProtectHalfOps 

set black(say.hu.man.2140) "\[MAN\] \002ProtectHalfOps\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, és lehetővé teszi, hogy az eggdrop automatikusan újra half-op (%/+h) zászlóval rendelkező felhasználókat adjon meg, ha elveszítik azt."
set black(say.hu.man.2141) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2142) "\[MAN\] \002%char%set\002 (+/-)protecthalfops ; \002%botnick% set\002 (+/-)protecthalfops ; \002(PRIVMSG) set\002 <#csatorna> (+/-)protecthalfops"

#Inactive 

set black(say.hu.man.2143) "\[MAN\] \002Inactive\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, és lehetővé teszi, hogy az eggdrop ne lépjen be egy adott csatornába (vagy távozzon onnan, ha már ott van). Hasznos lehet, mert az eggdropot el lehet küldeni a csatornáról anélkül, hogy elveszítené a beállításokat, a csatorna felhasználóinak hozzáférését és a tiltólistát."
set black(say.hu.man.2144) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2145) "\[MAN\] \002%char%set\002 (+/-)inactive ; \002%botnick% set\002 (+/-)inactive ; \002(PRIVMSG) set\002 <#csatorna> (+/-)inactive"

#StatusLog 

set black(say.hu.man.2146) "\[MAN\] \002StatusLog\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, és amely naplózza a csatorna állapotát minden 5 percben. Ez a beállítás megmutatja az eggdrop státuszát a csatornán (@, +v), a csatorna módjait és a csatornán lévő felhasználók számát, akik rendelkeznek \002+m/+o/+v/+n/+b/+e/+l\002 zászlókkal."
set black(say.hu.man.2147) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2148) "\[MAN\] \002%char%set\002 (+/-)statuslog\002 ; \002%botnick% set\002 (+/-)statuslog ; \002(PRIVMSG) set\002 <#csatorna> (+/-)statuslog"

#Static 

set black(say.hu.man.2149) "\[MAN\] \002Static\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, és lehetővé teszi, hogy csak a tulajdonosok törölhessék az adott csatornát."
set black(say.hu.man.2150) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2151) "\[MAN\] \002%char%set\002 (+/-)static ; \002%botnick% set\002 (+/-)static ; \002(PRIVMSG) set\002 <#csatorna> (+/-)static"

#Revenge 

set black(say.hu.man.2152) "\[MAN\] \002Revenge\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, és lehetővé teszi, hogy az eggdrop emlékezzen azokra a felhasználókra, akik deop/kick/ban (jelenlegi op-k és/vagy barátok) és megbüntesse őket. (A \002+f\002 zászlóval rendelkező felhasználókat kivéve)."
set black(say.hu.man.2153) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2154) "\[MAN\] \002%char%set\002 (+/-)revenge ; \002%botnick% set\002 (+/-)revenge ; \002(PRIVMSG) set\002 <#csatorna> (+/-)revenge"

#RevengeBot 

set black(say.hu.man.2155) "\[MAN\] \002RevengeBot\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, hasonlóan a \002Revenge\002-hoz, de csak akkor indul el, amikor az eggdrop deop-ot, kick-et vagy bant kap."
set black(say.hu.man.2156) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2157) "\[MAN\] \002%char%set\002 (+/-)revengebot ; \002%botnick% set\002 (+/-)revengebot ; \002(PRIVMSG) set\002 <#csatorna> (+/-)revengebot"

#Secret 

set black(say.hu.man.2158) "\[MAN\] \002Secret\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, és megakadályozza az eggdropot abban, hogy megjelenítse a csatornát a botnetben és a látott adatbázisban (beavatkozik a statisztika parancsokba is)."
set black(say.hu.man.2159) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2160) "\[MAN\] \002%char%set\002 (+/-)secret ; \002%botnick% set\002 (+/-)secret ; \002(PRIVMSG) set\002 <#csatorna> (+/-)secret"

#Shared 

set black(say.hu.man.2161) "\[MAN\] \002Shared\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, és lehetővé teszi, hogy az eggdrop megossza az információkat a felhasználókról vagy a csatornával kapcsolatos információkat."
set black(say.hu.man.2162) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2163) "\[MAN\] \002%char%set\002 (+/-)shared ; \002%botnick% set\002 (+/-)shared ; \002(PRIVMSG) set\002 <#csatorna> (+/-)shared"

#Cycle 

set black(say.hu.man.2164) "\[MAN\] \002Cycle\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, és arra kényszeríti az eggdropot, hogy kilépjen és belépjen a csatornáról, amikor nincs op (@)."
set black(say.hu.man.2165) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2166) "\[MAN\] \002%char%set\002 (+/-)cycle ; \002%botnick% set\002 (+/-)cycle ; \002(PRIVMSG) set\002 <#csatorna> (+/-)cycle"

#NodeSynch 

set black(say.hu.man.2167) "\[MAN\] \002NodeSynch\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, de lehetővé teszi a felhasználók számára, akik nem rendelkeznek op-pal, hogy állítsanak be módokat a csatornán. (Ez a beállítás megakadályozhatja az eggdropot abban, hogy összetűzésbe kerüljön olyan szolgáltatásokkal, mint az \002X\002 vagy \002ChanServ\002, vagy hogy kickelje az IRC operátorokat, amikor módokat állít be op nélkül)."
set black(say.hu.man.2168) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2169) "\[MAN\] \002%char%set\002 (+/-)nodesynch ; \002%botnick% set\002 (+/-)nodesynch ; \002(PRIVMSG) set\002 <#csatorna> (+/-)nodesynch"

#DynamicExempts 

set black(say.hu.man.2170) "\[MAN\] \002DynamicExempts\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, de amely csak akkor aktiválja a mentességeket a csatornán, amikor szükséges. Ez megakadályozza, hogy a csatorna mentességi listája túl hosszú legyen. Az eggdrop megjegyzi az összes mentességet, de csak akkor aktivál egy mentességet a csatornán, ha lát egy olyan ban-t, amely megfelel annak a mentességnek. A mentesség aktív marad a csatornán, amíg a ban aktív."
set black(say.hu.man.2171) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2172) "\[MAN\] \002%char%set\002 (+/-)dynamicexempts ; \002%botnick% set\002 (+/-)dynamicexempts ; \002(PRIVMSG) set\002 <#csatorna> (+/-)dynamicexempts"

#UserExempts 

set black(say.hu.man.2173) "\[MAN\] \002UserExempts\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, de lehetővé teszi a mentességek közvetlenül a felhasználók által történő létrehozását. Ha letiltva van, az eggdrop azt fogja kérni, hogy az összes mentességet a konzolon keresztül hozzák létre."
set black(say.hu.man.2174) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2175) "\[MAN\] \002%char%set\002 (+/-)userexempts ; \002%botnick% set\002 (+/-)userexempts ; \002(PRIVMSG) set\002 <#csatorna> (+/-)userexempts"

#DynamicInvites 

set black(say.hu.man.2176) "\[MAN\] \002DynamicInvites\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, de csak akkor aktiválja a meghívásokat a csatornán, amikor szükséges. Megakadályozza, hogy a meghívások listája túl hosszú legyen. Az eggdrop megjegyzi minden meghívást, de a meghívásokat csak akkor aktiválja, amikor a csatorna +i módban van, és egy felhasználó belép, miután meghívást kért. Miután beállították, a meghívás addig marad érvényben, amíg a mód vissza nem vált -i módba."
set black(say.hu.man.2177) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2178) "\[MAN\] \002%char%set\002 (+/-)dynamicinvites ; \002%botnick% set\002 (+/-)dynamicinvites ; \002(PRIVMSG) set\002 <#csatorna> (+/-)dynamicinvites"

#UserInvites 

set black(say.hu.man.2179) "\[MAN\] \002UserInvites\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, de lehetővé teszi a felhasználók számára, hogy közvetlenül hozzanak létre meghívásokat. Ha ez letiltva van, az eggdrop azt fogja kérni, hogy az összes meghívást a konzolon keresztül hozzák létre."
set black(say.hu.man.2180) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2181) "\[MAN\] \002%char%set\002 (+/-)userinvites ; \002%botnick% set\002 (+/-)userinvites ; \002(PRIVMSG) set\002 <#csatorna> (+/-)userinvites"

#Flood-Ctcp

set black(say.hu.man.2182) "\[MAN\] \002Flood-Ctcp\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, és meghatározza, hogy hány ctcp-t tartalmazó üzenet számít árvíznek egy adott időszak alatt ugyanazon a hosztról (+f felhasználók nem fognak kickelni). Ennek letiltásához adja meg a \0020\002 vagy \0020:0\002 értéket."
set black(say.hu.man.2183) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2184) "\[MAN\] \002%char%set\002 flood-ctcp <ctcp:mpásodperc> ; \002%botnick% set\002 flood-ctcp <ctcp:mpásodperc> ; \002(PRIVMSG) set\002 <#csatorna> flood-ctcp <ctcp:mpásodperc>"
set black(say.hu.man.2185) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#Flood-Join

set black(say.hu.man.2186) "\[MAN\] \002Flood-Join\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, és meghatározza, hogy hány csatlakozás a csatornára egy adott időszak alatt ugyanazon a hosztról számít árvíznek (a +f felhasználók nem fognak kickelni). Ennek letiltásához adja meg a \0020\002 vagy \0020:0\002 értéket."
set black(say.hu.man.2187) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2188) "\[MAN\] \002%char%set\002 flood-join <csatlakozások:mpásodperc> ; \002%botnick% set\002 flood-join <csatlakozások:mpásodperc> ; \002(PRIVMSG) set\002 <#csatorna> flood-join <csatlakozások:mpásodperc>"
set black(say.hu.man.2189) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#Flood-Kick 

set black(say.hu.man.2190) "\[MAN\] \002Flood-Kick\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, és meghatározza, hogy hány kick egy adott időszak alatt ugyanazon a hosztról számít árvíznek (a +f felhasználók nem fognak kickelni). Ennek letiltásához adja meg a \0020\002 vagy \0020:0\002 értéket."
set black(say.hu.man.2191) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2192) "\[MAN\] \002%char%set\002 flood-kick <kick:mpásodperc> ; \002%botnick% set\002 flood-kick <kick:mpásodperc> ; \002(PRIVMSG) set\002 <#csatorna> flood-kick <kick:mpásodperc>"
set black(say.hu.man.2193) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#Flood-Deop 

set black(say.hu.man.2194) "\[MAN\] \002Flood-Deop\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, és meghatározza, hogy hány deop egy adott időszak alatt ugyanazon a hosztról számít árvíznek (a +f felhasználók nem fognak kickelni). Ennek letiltásához adja meg a \0020\002 vagy \0020:0\002 értéket."
set black(say.hu.man.2195) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2196) "\[MAN\] \002%char%set\002 flood-deop <deop:mpásodperc> ; \002%botnick% set\002 flood-deop <deop:mpásodperc> ; \002(PRIVMSG) set\002 <#csatorna> flood-deop <deop:mpásodperc>"
set black(say.hu.man.2197) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#Flood-Nick 

set black(say.hu.man.2198) "\[MAN\] \002Flood-Nick\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, és meghatározza, hogy hány nickváltoztatás egy adott időszak alatt ugyanazon a hosztról számít árvíznek (a +f felhasználók nem fognak kickelni). Ennek letiltásához adja meg a \0020\002 vagy \0020:0\002 értéket."
set black(say.hu.man.2199) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2200) "\[MAN\] \002%char%set\002 flood-nick <nickváltoztatások:mpásodperc> ; \002%botnick% set\002 flood-nick <nickváltoztatások:mpásodperc> ; \002(PRIVMSG) set\002 <#csatorna> flood-nick <nickváltoztatások:mpásodperc>"
set black(say.hu.man.2201) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#Flood-Chan 

set black(say.hu.man.2202) "\[MAN\] \002Flood-Chan\002 egy eggdrop belső beállítása, ami nem kapcsolódik a \002BlackToolS\002 szkripthez, és meghatározza, hogy hány üzenet a csatornára küldve egy adott időszak alatt ugyanazon a hosztról számít árvíznek (a +f felhasználók nem fognak kickelni). Ennek letiltásához adja meg a \0020\002 vagy \0020:0\002 értéket."
set black(say.hu.man.2203) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2204) "\[MAN\] \002%char%set\002 flood-chan <sorok:mpásodperc> ; \002%botnick% set\002 flood-chan <sorok:mpásodperc> ; \002(PRIVMSG) set\002 <#csatorna> flood-chan <sorok:mpásodperc>"
set black(say.hu.man.2205) "Beállítások megtekintése: \002%char%show\002 <beállítás> ; \002%botnick% show\002 <beállítás> ; \002(PRIVMSG) show\002 <#csatorna> <beállítás>"

#AutoUpdate

set black(say.hu.man.2206) "\[MAN\] \002AutoUpdate\002 egy modul, amely lehetővé teszi számára, hogy automatikusan \001frissítse\001 magát (ha új verzió vagy hiba javítása van a BT-hez) egy parancs vagy \002AUTOMATIKUS\002 (időzítő segítségével). A BT fájljai és a \001BlackTools.tcl\001-ben beállított változók el vannak mentve és visszaállítva."
set black(say.hu.man.2207) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2208) "\[MAN\] \002%char%update <on>\002 (autofrissítés engedélyezése); \002%char%update off\002 (autofrissítés letiltása); \002%char%update check\002 (új frissítések ellenőrzése); \002%char%update start\002 (frissítés indítása); \002%char%update time\002 \[idő\] (frissítés ellenőrzési időköz beállítása, használható X\001p\001, X\001ó\001, X\001n\001 ; ha \001\[idő\]\001 nincs megadva, akkor a jelenleg beállított időt jeleníti meg)"

#Alias

set black(say.hu.man.2209) "\[MAN\] \002ALIAS\002 egy modul, amely lehetővé teszi saját testreszabott parancsok létrehozását az BT rendelkezésre álló parancsok alapján. Az összes rendelkezésre álló parancs használható."
set black(say.hu.man.2210) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2211) "\[MAN\] \002%char%alias add\002 <parancs> <BT parancs> \[argumentumok\] ; \002%char%alias del\002 <parancs>"
set black(say.hu.man.2212) "\[MAN\] Példa 1 : \002%char%alias add\002 lamer \001b\001 %1% 0 Lamer vagy !! \[%1% - nick vagy hoszt\]"
set black(say.hu.man.2213) "\[MAN\] Példa 2 : \002%char%alias add\002 bere \001cycle\001 %1% %2% Me megyek egy sörre, majd visszatérek ! \[%1% - csatorna ;  %2% - cycle idő\]"

#NoProxy

set black(say.hu.man.2214) "\[MAN\] \002NoProxy\002 tiltja azokat a felhasználókat, akiknek az IP-címe \001PROXY\001"
set black(say.hu.man.2215) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2216) "\[MAN\] \002%char%set\002 (+/-)noproxy ; \002%botnick% set\002 (+/-)noproxy ; \002(PRIVMSG) set\002 <#csatorna> (+/-)noproxy"
set black(say.hu.man.2217) "\[MAN\] Opcionális beállítások: \noproxy-reason\002; noproxy-bantime (Az \001noproxy-reason\001 opcióban a \"%isp%\" kulcsszót használhatja, és az IP ISP-vel lesz helyettesítve.)"

#Egg AntiBotIdle

set black(say.hu.man.2218) "\[MAN\] \002AntiBotIdle\002 egy opció, amely meghatározza, hogy az eggdrop \002IDLE\002 legyen-e az IRC-n vagy sem."
set black(say.hu.man.2218_1) "\[MAN\] \0021\002 = nincs idle ; \0020\002 = idle"
set black(say.hu.man.2219) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2220) "\[MAN\] \002%char%set antibotidle\002 <1|0> ; \002%botnick% set antibotidle\002 <1|0> ; \002(PRIVMSG) set antibotidle\002 <1|0>"

#Vote

set black(say.hu.man.2221) "\[MAN\] \002Vote\002 egy modul, amely lehetőséget nyújt a felhasználóknak arra, hogy szavazási folyamatot indítsanak, amelyre a felhasználók (a hozzáféréssel rendelkezők vagy mindenki) előre meghatározott lehetőségekkel válaszolhatnak."
set black(say.hu.man.2222) "\[MAN\] HASZNÁLAT:"
set black(say.hu.man.2223) "\[MAN\] \002%char%set\002 (+/-)vote ; \002%botnick% set\002 (+/-)vote ; \002(PRIVMSG) set\002 <#csatorna> (+/-)vote"
set black(say.hu.man.2224) "\[MAN\] \002%char%vote \002\[#csatorna\] add\002 <szavazás_neve> -option <opció1> -option <opció2>.. \[-time \[DD/MM/YY HH:MM\]\] (lejárat idő) \[-type 1/0\] (1 - hozzáféréssel rendelkező felhasználók, 0 - minden felhasználó)"
set black(say.hu.man.2225) "\[MAN\] \002%char%vote \002\[#csatorna\] \002list \[ID\]\002 (szavazások listázása, ha az ID-t megadják, azonosítóhoz tartozó szavazatok listázódnak ki) ; \002%char%vote \002\[#csatorna\] \002del\002 <ID> (szavazás törlése)"
set black(say.hu.man.2226) "\[MAN\] \002%char%vote \002\[#csatorna\]\002 <ID> <betű> (betű megadása a választott opcióhoz azonosítóhoz) ; \002%char%vote \002\[#csatorna\] time\002 <ID> <DD/MM/YY HH:MM> (új lejárat idő megadása) ; \002%char%vote \002\[#csatorna\] end\002 <ID> (szavazás befejezése)"
set black(say.hu.man.2227) "\[MAN\] Opcionális beállítások: \002vote-mask\002 (lásd \002%char%vote man\002 maszk) ; \002(+/-)votegreet\002 (üdvözlő üzenetek engedélyezése, hogy a felhasználók értesüljenek a futó szavazásokról)"
set black(say.hu.man.2228) "\[MAN\] \002%char%vote \002\[#csatorna\] list\002 \[ID\]\002 (szavazások listázása, ha az ID-t megadják \[csak admin+\], azonosítóhoz tartozó szavazatok listázódnak ki)"
set black(say.hu.man.2229) "\[MAN\] \002%char%vote \002\[#csatorna\] <ID> <betű> (betű megadása a választott opcióhoz azonosítóhoz)"

#Mask

set black(say.hu.man.2230) "\[MAN\] Az alábbi maszk-módszerek állnak rendelkezésre:"
set black(say.hu.man.2231) "\[MAN\] \002#1\002 *!*@host ; \002#2\002 *!user@host ; \002#3\002 nick!user@host ; \002#4\002 nick!*@* ; \002#5\002 *!user@*"
set black(say.hu.man.2232) "\[MAN\] HASZNÁLAT: \002%char%set\002 <beállítás> <szám_metódus> ; \002%botnick% set\002 <beállítás> <szám_metódus> ; \002(PRIVMSG) set\002 <#csatorna> <beállítás> <szám_metódus>"


##############################
############################################################################################################
#   Vége :)                                                                                                #
############################################################################################################
