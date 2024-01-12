##################################################################################################################################
#                                   _   _   _   _   _   _   _   _   _   _   _   _   _   _                                        #
#                                  / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \                                       #
#                                 ( T | C | L | S | C | R | I | P | T | S | . | N | E | T )                                      #
#                                  \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/                                       #
#                                                                                                                                #
##################################################################################################################################
##                                     BlackTools - The Ultimate Channel Control Script                                         ##
##                                                 One TCL. One smart Eggdrop                                                   ##
##################################################################################################################################
#Acest fisier ruleaza impreuna cu BlackTools si este incarcat automat daca exista in folderul lang (fisier obligatoriu sa existe)#
##################################################################################################################################
#                                                                                                                                #
#                                                   *** The Future is Here ***                                                   #
#                                                                                     Copyright 2008 - 2021 @ www.tclscripts.net #
##################################################################################################################################
#                                                                                                                         �      #
#     ######  #          #     #####  #    # ####### ####### ####### #        #####        #          #    #     #  #####        #
#     #     # #         # #   #     # #   #     #    #     # #     # #       #     #       #         # #   ##    # #     #       #
#     #     # #        #   #  #       #  #      #    #     # #     # #       #             #        #   #  # #   # #             #
#     ######  #       #     # #       ###       #    #     # #     # #        #####   ###  #       #     # #  #  # #  ####       #
#     #     # #       ####### #       #  #      #    #     # #     # #             #       #       ####### #   # # #     #       #
#     #     # #       #     # #     # #   #     #    #     # #     # #       #     #       #       #     # #    ## #     #       #
#     ######  ####### #     #  #####  #    #    #    ####### ####### #######  #####        ####### #     # #     #  #####        #
#                                                                                                                                #
##################################################################################################################################
#   				           #                                                                                     #
#             LIMBA ROMANA (RO)	           #                        revizuita si actualizata de Florian | florian@tclscripts.net #
#				           #	                                                        Data: 25.02.2018 11:31AM #
##################################################################################################################################

##################################################################################################################################
#                                                                                                                                #
#                                                         NIVELE ACCESS                                                          #
#                                                                                                                                #
##################################################################################################################################

set black(say.hu.level.1) "TULAJDONOS FŐNÖK"
set black(say.hu.level.2) "TULAJDONOS"
set black(say.hu.level.3) "VEZETŐ"
set black(say.hu.level.4) "ADMINISZTRÁTOR"
set black(say.hu.level.5) "OPERÁTOR"
set black(say.hu.level.6) "HANG"
set black(say.hu.level.7) "VÉDELEM"
set black(say.hu.level.8) "MESTER"
set black(say.hu.level.9) "TILTÁS"

##################################################################################################################################
#                                                                                                                                #
#                                                         MESAJE STANDARD                                                        #
#                                                                                                                                #
##################################################################################################################################

set black(say.hu.gl.instr) "\005\[BT\]\005 Az használati utasításokért kérlek használd: \002%char%man %msg.1%\002"
set black(say.hu.gl.instr_nick) "\005\[BT\]\005 Az használati utasításokért kérlek használd: \002%botnick% man %msg.1%\002"
set black(say.hu.gl.instr_priv) "\005\[BT\]\005 Az használati utasításokért kérlek használd: \002man %msg.1%\002"
set black(say.hu.gl.noban) "\005\[BT\]\005 Nem hajtható végre, mert nincs hozzáférés."
set black(say.hu.gl.notonchan) "Nem vagy \001%chan%\001-n."
set black(say.hu.gl.suspend) "\005\[BT\]\005 Felfüggesztve a \002%chan%\002-n, nem használhatod ezt a parancsot."
set black(say.hu.gl.glsuspend) "\005\[BT\]\005 Globális felfüggesztés, nem használhatod ezt a parancsot."
set black(say.hu.gl.novalidchan) "\005\[BT\]\005 Érvénytelen csatorna."
set black(say.hu.gl.nomem) "\005\[BT\]\005 A felhasználó nincs az emlékezetemben."
set black(say.hu.gl.noaccess) "\005\[BT\]\005 Nincs hozzáférése a \002%chan%\002-hez."
set black(say.hu.gl.noop) "\005\[BT\]\005 Nincs OP jogosultsága a \002%chan%\002-n."
set black(say.hu.gl.nomodif) "\005\[BT\]\005 Nem módosíthatod ezen felhasználó jellemzőit, mert a hozzáférési szintje nagyobb vagy egyenlő a tiédével."
set black(say.hu.gl.usernotonchan) "\005\[BT\]\005 \002%msg.1%\002 nincs \002%chan%\002-n."
set black(say.hu.gl.nocmem) "\005\[BT\]\005 Nincs meg az emlékezetemben a \001%msg.1%\001 csatorna."
set black(say.hu.gl.isowner) "\005\[BT\]\005 \002%msg.1%\002 már rendelkezik \002%msg.set%\002 hozzáféréssel."
set black(say.hu.gl.usernotexist) "\005\[BT\]\005 \002%msg.1%\002 nem létezik."
set black(say.hu.gl.hostnotexist) "\005\[BT\]\005 Nem találtam információt ehhez a hoszthoz."
set black(say.hu.gl.reason) "ok"
set black(say.hu.gl.invalidlevel) "\005\[BT\]\005 Nem állíthatod be a tiltást a megadott szinten (szükséged van \001%msg%\001)"
set black(say.hu.gl.nounban) "\005\[BT\]\005 Nem távolíthatod el \002%msg.1%\002 tiltását, mert annak a szintje nagyobb, mint a tiéd."
set black(say.hu.gl.hasop) "\005\[BT\]\005 OP-jogosultsága van, nem hajthatom végre."
set black(say.hu.gl.notonline) "\005\[BT\]\005 \002%msg.1%\002 nem ONLINE."
set black(say.hu.gl.xonlyban) "\005\[BT\]\005 Ban hozzáadva a \001%msg.1%\001-en keresztül \002%msg.2%\002 a \001%chan%\001-n \[Az \002XonlY\002 mód be van kapcsolva.\]"
set black(say.hu.gl.showline) "#\004%msg.1%\004) %msg.8%"
set black(say.hu.gl.wordexists) "\005\[BT\]\005 A \001%msg.1%\001 szó már szerepel a \002%chan%\002 csatorna listájában."
set black(say.hu.gl.noset) "Nem alkalmazható"
set black(say.hu.gl.validuser) "\005\[BT\]\005 Parancs tiltva (a host a \002%msg.1%\002 felhasználóhoz tartozik)."
set black(say.hu.gl.banexists) "\005\[BT\]\005 \002%msg.1%\002 már tiltva van a \002%msg.2%\002 hoszton keresztül."
set black(say.hu.gl.noipv4) "\005\[BT\]\005 \002%msg.1%\002 nem ipv4, így a CIDR tiltás nem lehetséges."
set black(say.hu.gl.fullbans) "\005\[BT\]\005 \002FIGYELMEZTETÉS\002: A \002%chan%\002 csatorna tiltáslistája észlelt \002%numbans%\002 bejegyzéssel, amely megtelt. Az csatorna tiltáslistája kiürítve."
set black(say.hu.gl.noxonly) "\005\[BT\]\005 Nem állíthatod be az \002+xonly\002-t, mert nincs bejelentkezve."
set black(say.hu.gl.banblack) "\005\[BT\]\005 Nem hajtható végre, mert tiltólistán van."
set black(say.hu.gl.protexcept) "\002kivétel\002"
set black(say.hu.gl.nobanlevel) "\005\[BT\]\005 Nem tiltanod \002%msg.1%\002-t, mert annak a szintje már nagyobb, mint a tiéd."


#############################################################################################################################
#                                                                                                                           #
#                                              Protectii Interne AntiFlood                                                  #
#                                                                                                                           #
#############################################################################################################################

set black(say.hu.antiflood.1) "\005\[BT\]\005 Túl gyorsan küldöd a kéréseket. Nyugodj meg és próbáld újra \002%msg.1%\002 perc múlva. Köszönöm!"
set black(say.hu.antiflood.2) "\002\005\[BT\]\005\002 Hozzáadtam \001%msg.1%\001-t az ignore listához. Indok: \002%msg.8%\002"
set black(say.hu.antiflood.3) "\002\005\[BT\]\005\002 A CSEND be van kapcsolva. Indok: \002%msg%\002"
set black(say.hu.antiflood.4) "\002\005\[BT\]\005\002 A CSEND ki van kapcsolva."

#############################################################################################################################
#                                                                                                                           #
#                                                    IESIRI TIMP                                                            #
#                                                                                                                           #
#############################################################################################################################

set black(say.hu.timeout.1) "év"
set black(say.hu.timeout.2) "évek"
set black(say.hu.timeout.3) "nap"
set black(say.hu.timeout.4) "napok"
set black(say.hu.timeout.5) "ora"
set black(say.hu.timeout.6) "orák"
set black(say.hu.timeout.7) "perc"
set black(say.hu.timeout.8) "percek"
set black(say.hu.timeout.9) "másodperc"

#############################################################################################################################
#                                                                                                                           #
#                                                    MAX UPTIME                                                             #
#                                                                                                                           #
#############################################################################################################################

set black(say.hu.maxup.1) "\005\[BT\]\005 Indítási idő: \002%msg.1% %msg.2% %msg.3%\002 - Maximális Üzemidő: \001%msg.9%\001"
set black(say.hu.maxon.1) "\005\[BT\]\005 Online idő: \002%msg.1% %msg.2% %msg.3%\002 - Maximális Online Idő: \001%msg.9%\001"


#############################################################################################################################
#                                                                                                                           #
#                                                      STATS                                                                #
#                                                                                                                           #
#############################################################################################################################

set black(say.hu.stats.1) "\005\[BT\]\005 Nincsenek statisztikák \002%msg.1%\002-ról."
set black(say.hu.stats.2) "\002Statisztika\002 Ma: (\001%msg.1%\001) Kitiltások: \002%msg.2%\002 Kirúgások: \002%msg.3%\002 Parancsok: %msg.6%"
set black(say.hu.stats.3) "\002Statisztika\002 Összesen: (\001%msg.1%\001) Helyi kitiltások: \002%msg.2%\002 ; Kirúgások: \002%msg.3%\002 ; Parancsok: %msg.6%"
set black(say.hu.stats.4) "\002Statisztika\002 Összesen: (\001%msg.1%\001) Helyi kitiltások: \002%msg.2%\002 ; Globális kitiltások: \002%msg.3%\002 ; Kirúgások: \002%msg.4%\002 ; Parancsok: %msg.10%" 
set black(say.hu.stats.5) "\005\[BT\]\005 Az \001%msg.1%\001 statisztikáit nulláztam \002%chan%\002-n."

#############################################################################################################################
#                                                                                                                           #
#                                                    PROTECTII                                                              #
#                                                                                                                           #
#############################################################################################################################

#################################### InviteBan #################################

set black(say.hu.inviteban.1) "\[INVITEBAN\] Nem tartottad be a szabályokat a(z) %chan% csatornán az INVITE-kkal kapcsolatban."

#################################### AntiPub ###################################

set black(say.hu.antipub.1) "Nem tartottad be a szabályokat a(z) %chan% csatornán a REKLÁMokkal kapcsolatban."
set black(say.hu.antipub.2) "Figyelem! Figyelmeztetlek, hogy ne reklámozd tovább a(z) %chan% csatornán."
set black(say.hu.antipub.3) "\005\[BT\]\005 *** Antireklám lista vége ***"
set black(say.hu.antipub.4) "\005\[BT\]\005 Nincs \002bejegyzés\002 az antireklám listán a(z) \001%msg.1%\001 számára a(z) \002%chan%\002 csatornán."
set black(say.hu.antipub.5) "\005\[BT\]\005 Töröltem az antireklám listáról a(z) \002%msg.1%\002 számú bejegyzést a(z) \002%chan%\002 csatornán."
set black(say.hu.antipub.6) "\005\[BT\]\005 Hozzáadtam az antireklám listához a(z) \001%msg.8%\001 számú bejegyzést a(z) \002%msg.1%\002 számmal a(z) \002%chan%\002 csatornán."
set black(say.hu.antipub.7) "\005\[BT\]\005 Az \002antireklám\002 lista a(z) \001%chan%\001 csatornán:"
set black(say.hu.antipub.8) "\005\[BT\]\005 A következő bejegyzések megjelenítéséhez használd: \001%char%antipub list -next\001 (még \002%counter%\002 bejegyzés hátravan)"
set black(say.hu.antipub.9) "\005\[BT\]\005 A következő bejegyzések megjelenítéséhez használd: \001%char%antipub %chan% list -next\001 (még \002%counter%\002 bejegyzés hátravan)"
set black(say.hu.antipub.10) "\005\[BT\]\005 Hozzáadtam az antireklám kivételek listájához a(z) \001%msg.8%\001 számú bejegyzést a(z) \002%msg.1%\002 számmal a(z) \002%chan%\002 csatornán."

#################################### BadHost ###################################

set black(say.hu.badhost.1) "Nem tartottad be a szabályokat a(z) %chan% csatornán a HOST-okkal kapcsolatban."
set black(say.hu.badhost.3) "\005\[BT\]\005 *** RosszHostok lista vége ***"
set black(say.hu.badhost.4) "\005\[BT\]\005 Nincs \002rosszhost\002 a(z) \001%msg.1%\001 számára a(z) \002%chan%\002 csatornán."
set black(say.hu.badhost.5) "\005\[BT\]\005 Töröltem a(z) \002%msg.1%\002 számú rosszhostot a(z) \002%chan%\002 csatornáról."
set black(say.hu.badhost.6) "\005\[BT\]\005 Hozzáadtam a RosszHostok listához a(z) \001%msg.8%\001 számú rosszhostot a(z) \002%msg.1%\002 számmal a(z) \002%chan%\002 csatornán."
set black(say.hu.badhost.7) "\005\[BT\]\005 A(z) \002RosszHostok\002 lista a(z) \001%chan%\001 csatornán:"
set black(say.hu.badhost.8) "\005\[BT\]\005 A következő \002RosszHostok\002 megjelenítéséhez használd: \001%char%badhost list -next\001 (még \002%counter%\002 rosszhost van hátralévő)"
set black(say.hu.badhost.9) "\005\[BT\]\005 A következő \002RosszHostok\002 megjelenítéséhez használd: \001%char%badhost %chan% list -next\001 (még \002%counter%\002 rosszhost van hátralévő)"
set black(say.hu.badhost.10) "\005\[BT\]\005 Hozzáadtam a RosszHostok kivételek listájához a(z) \001%msg.8%\001 számú rosszhostot a(z) \002%msg.1%\002 számmal a(z) \002%chan%\002 csatornán."

#################################### AntiNotice ################################

set black(say.hu.antinotice.1) "Nem tartottad be a szabályokat a(z) %chan% csatornán a NOTICE-okkal kapcsolatban."
set black(say.hu.antinotice.2) "Figyelem! Figyelmeztetlek, hogy ne használd a NOTICE parancsot tovább a(z) %chan% csatornán."

#################################### AntiCtcp ##################################

set black(say.hu.antictcp.1) "Nem tartottad be a szabályokat a(z) %chan% csatornán a CTCP-vel kapcsolatban."
set black(say.hu.antictcp.2) "Figyelem! Figyelmeztetlek, hogy ne használd a CTCP parancsot tovább a(z) %chan% csatornán."


#################################### AntiBadWord ###############################

set black(say.hu.antibadword.1) "Nem tartottad be a szabályokat a(z) %chan% csatornán a NYELVEZETTEL kapcsolatban."
set black(say.hu.antibadword.2) "Figyelem! Figyelmeztetlek, hogy ne használd tovább az ilyen szavakat a(z) %chan% csatornán."
set black(say.hu.antibadword.3) "\005\[BT\]\005 *** RosszSzavak lista vége ***"
set black(say.hu.badword.4) "\005\[BT\]\005 Nincs \002rosszszó\002 az \001%msg.1%\001 számára a(z) \002%chan%\002 csatornán."
set black(say.hu.badword.5) "\005\[BT\]\005 Töröltem a(z) \002%msg.1%\002 számú rosszszót a(z) \002%chan%\002 csatornáról."
set black(say.hu.badword.6) "\005\[BT\]\005 Hozzáadtam a RosszSzavak listához a(z) \001%msg.8%\001 számú rosszszót a(z) \002%msg.1%\002 számmal a(z) \002%chan%\002 csatornán."
set black(say.hu.antibadword.7) "\005\[BT\]\005 A \002RosszSzavak\002 lista a(z) \002%chan%\002 csatornán:"
set black(say.hu.antibadword.8) "\005\[BT\]\005 A következő \002RosszSzavak\002 megjelenítéséhez használd: \001%char%badword list -next\001 (még \002%counter%\002 rosszszó van hátralévő)"
set black(say.hu.antibadword.9) "\005\[BT\]\005 A következő \002RosszSzavak\002 megjelenítéséhez használd: \001%char%badword %chan% list -next\001 (még \002%counter%\002 rosszszó van hátralévő)"
set black(say.hu.badword.7) "\005\[BT\]\005 Hozzáadtam a RosszSzavak listához a(z) \001%msg.18%\001 számú rosszszót a(z) \002%msg.1%\002 számmal és a(z) \002%msg.2%\002 számú tiltási módszerrel a(z) \002%chan%\002 csatornán."
set black(say.hu.badword.8) "\005\[BT\]\005 Hozzáadtam a RosszSzavak kivételek listájához a(z) \001%msg.8%\001 számú rosszszót a(z) \002%msg.1%\002 számmal a(z) \002%chan%\002 csatornán."

#################################### AntiLongText ##############################

set black(say.hu.antilongtext.1) "Nem tartottad be a szabályokat a(z) %chan% csatornán a HOSSZÚ SZÖVEGGEL kapcsolatban."
set black(say.hu.antilongtext.2) "Figyelem! Figyelmeztetlek, hogy ne írj ennyi szót egyetlen mondatban tovább a(z) %chan% csatornán."

#################################### AntiBadQuitPart ###########################

set black(say.hu.antibadquitpart.1) "Nem tartottad be a szabályokat a(z) %chan% csatornán a PART/QUIT üzenetekkel kapcsolatban."
set black(say.hu.antibadquitpart.3) "\005\[BT\]\005 *** RosszKilépés/Részvétel lista vége ***"
set black(say.hu.badquitpart.4) "\005\[BT\]\005 Nincs \002rosszkilépés/részvétel\002 az \001%msg.1%\001 számára a(z) \002%chan%\002 csatornán."
set black(say.hu.badquitpart.5) "\005\[BT\]\005 Töröltem a(z) \002%msg.1%\002 számú rosszkilépés/részvételt a(z) \002%chan%\002 csatornáról."
set black(say.hu.badquitpart.6) "\005\[BT\]\005 Hozzáadtam a RosszKilépés/Részvétel listához a(z) \001%msg.8%\001 számú rosszkilépés/részvételt a(z) \002%msg.1%\002 számmal a(z) \002%chan%\002 csatornán."
set black(say.hu.antibadquitpart.7) "\005\[BT\]\005 A(z) \002RosszKilépés/Részvétel\002 lista a(z) \002%chan%\002 csatornán:"
set black(say.hu.antibadquitpart.8) "\005\[BT\]\005 A következő \002RosszKilépés/Részvétel\002 megjelenítéséhez használd: \001%char%badquitpart list -next\001 (még \002%counter%\002 rosszkilépés/részvétel van hátralévő)"
set black(say.hu.antibadquitpart.9) "\005\[BT\]\005 A következő \002RosszKilépés/Részvétel\002 megjelenítéséhez használd: \001%char%badquitpart %chan% list -next\001 (még \002%counter%\002 rosszkilépés/részvétel van hátralévő)"
set black(say.hu.antibadquitpart.10) "\005\[BT\]\005 Hozzáadtam a RosszKilépés/Részvétel kivételek listájához a(z) \001%msg.8%\001 számú rosszkilépés/részvételt a(z) \002%msg.1%\002 számmal a(z) \002%chan%\002 csatornán."


################################### AntiJoinPart ###############################

set black(say.hu.antijoinpart.1) "Nem tartottad be a szabályokat a(z) %chan% csatornán a JOIN/PART műveletekkel kapcsolatban."
set black(say.hu.antijoinpart.2) "Figyelem! Figyelmeztetlek, hogy ne csináld túl gyorsan a JOIN/PART műveleteket a(z) %chan% csatornán."


################################## AntiSpam ###################################

set black(say.hu.antispam.1) "Nem tartottad be a szabályokat a(z) %chan% csatornán a SPAM-mel kapcsolatban."
set black(say.hu.antispam.2) "\[SPAMCHECK\] Üdvözöllek a(z) \002%chan%\002 csatornán! Kérlek, ne válaszolj erre az üzenetre, mert az spamként értelmezhető és kitiltást vonhat maga után. Köszönöm!"
set black(say.hu.antispam.3) "\005\[BT\]\005 *** Spamellenes lista vége ***"
set black(say.hu.antispam.4) "\005\[BT\]\005 Nincs \002spamellenes\002 az \001%msg.1%\001 számára a(z) \002%chan%\002 csatornán."
set black(say.hu.antispam.5) "\005\[BT\]\005 Töröltem a(z) \002%msg.1%\002 számú spamellenes bejegyzést a(z) \002%chan%\002 csatornáról."
set black(say.hu.antispam.6) "\005\[BT\]\005 Hozzáadtam a Spamellenes listához a(z) \001%msg.8%\001 számú spamellenes bejegyzést a(z) \002%msg.1%\002 számmal a(z) \002%chan%\002 csatornán."
set black(say.hu.antispam.7) "\005\[BT\]\005 A(z) \002spamellenes\002 lista a(z) \001%chan%\001 csatornán:"
set black(say.hu.antispam.8) "\005\[BT\]\005 A következő \002spamellenes\002 bejegyzések megtekintéséhez használd: \001%char%antispam list -next\001 (még \002%counter%\002 spamellenes bejegyzés van hátralévő)"
set black(say.hu.antispam.9) "\005\[BT\]\005 A következő \002spamellenes\002 bejegyzések megtekintéséhez használd: \001%char%antispam %chan% list -next\001 (még \002%counter%\002 spamellenes bejegyzés van hátralévő)"
set black(say.hu.antispam.10) "\005\[BT\]\005 Hozzáadtam a Spamellenes kivételek listájához a(z) \001%msg.8%\001 számú spamellenes bejegyzést a(z) \002%msg.1%\002 számmal a(z) \002%chan%\002 csatornán."
set black(say.hu.antispam.11) { "Spamellenőrzés..."
                                "Nyugodj meg, visszatérek, csak végezem a dolgom :P"
                                "Elmegyek, vagy nem megyek? Ez itt a kérdés :D"
                              }

################################# AntiRepeat ##################################

set black(say.hu.antirepeat.1) "Nem tartottad be a szabályokat a(z) %chan% csatornán a MONOTONIA-val kapcsolatban."
set black(say.hu.antirepeat.2) "Figyelem! Figyelmeztetlek, hogy ne ismételgesd magad túlságosan a(z) %chan% csatornán."

################################# AntiColor ###################################

set black(say.hu.anticolor.1) "Nem tartottad be a szabályokat a(z) %chan% csatornán a SZÍNEKKEL kapcsolatban."
set black(say.hu.anticolor.2) "Figyelem! Figyelmeztetlek, hogy ne használj színeket a(z) %chan% csatornán."

################################# AntiBold ###################################

set black(say.hu.antibold.1) "Nem tartottad be a szabályokat a(z) %chan% csatornán a VASTAG karakterek használatával kapcsolatban."
set black(say.hu.antibold.2) "Figyelem! Figyelmeztetlek, hogy ne használj VASTAG karaktereket a(z) %chan% csatornán."

################################# AntiUnderline ###################################

set black(say.hu.antiunderline.1) "Nem tartottad be a szabályokat a(z) %chan% csatornán az ALÁHÚZOTT karakterek használatával kapcsolatban."
set black(say.hu.antiunderline.2) "Figyelem! Figyelmeztetlek, hogy ne használj ALÁHÚZOTT karaktereket a(z) %chan% csatornán."

################################# AntiCaps #######################################

set black(say.hu.anticaps.1) "Nem tartottad be a szabályokat a(z) %chan% csatornán a NAGYBETŰK használatával kapcsolatban."
set black(say.hu.anticaps.2) "Figyelem! Figyelmeztetlek, hogy ne használj NAGYBETŰKET a(z) %chan% csatornán."

################################# BadRealname ###################################

set black(say.hu.badrealname.1) "Nem tartottad be a szabályokat a(z) %chan% csatornán a REALNEVÉVEL kapcsolatban."
set black(say.hu.badrealname.3) "\005\[BT\]\005 *** BadRealnames lista vége ***"
set black(say.hu.badrealname.4) "\005\[BT\]\005 Nincs \002badfullname\002 azonosító számmal (\001%msg.1%\001) a(z) \002%chan%\002 csatornán."
set black(say.hu.badrealname.5) "\005\[BT\]\005 Töröltem a \002badfullname\002 azonosító számú (\001%msg.1%\001) rekordot a(z) \002%chan%\002 csatornából."
set black(say.hu.badrealname.6) "\005\[BT\]\005 Hozzáadtam a \002badrealname\002 listához a \001%msg.8%\001 azonosító számú (\002%msg.1%\002) rekordot a(z) \002%chan%\002 csatornán."
set black(say.hu.badrealname.7) "\005\[BT\]\005 A \002BadRealnames\002 lista a következő a(z) \002%chan%\002 csatornán:"
set black(say.hu.badrealname.8) "\005\[BT\]\005 A következő \002inregistrari\002 megtekintéséhez használd: \001%char%badrealname list -next\001 (\002%counter%\002 hátralévő inregistrari)"
set black(say.hu.badrealname.9) "\005\[BT\]\005 A következő \002inregistrari\002 megtekintéséhez használd: \001%char%badrealname %chan% list -next\001 (\002%counter%\002 hátralévő inregistrari)"
set black(say.hu.badrealname.10) "A Nick-neved olyan karaktereket/szavakat tartalmaz, amelyek nem engedélyezettek. Van \002%time%\002 másodperc az átnevezésre, különben ban-t kapsz.."
set black(say.hu.badrealname.11) "\005\[BT\]\005 Hozzáadtam a \002badrealname\002 listához kivételként a \001%msg.8%\001 azonosító számú (\002%msg.1%\002) rekordot a(z) \002%chan%\002 csatornán."

################################# BadNick #####################################

set black(say.hu.badnick.1) "Nem tartottad be a szabályokat a %chan%-on a NICK szempontjából."
set black(say.hu.badnick.3) "\005\[BT\]\005 *** RosszNick lista vége ***"
set black(say.hu.badnick.4) "\005\[BT\]\005 Nincs %chan% csatornán a(z) \002badnick\002 számára megadott sorszámú bejegyzés."
set black(say.hu.badnick.5) "\005\[BT\]\005 Töröltem a(z) \002badnick\002 sorszámát %chan% csatornán."
set black(say.hu.badnick.6) "\005\[BT\]\005 Hozzáadtam a(z) \002badnick\002 listához a(z) \001%msg.8%\001 nevűt a(z) \002%msg.1%\002 sorszámmal %chan% csatornán."
set black(say.hu.badnick.7) "\005\[BT\]\005 A \002badnick\002 lista %chan% csatornán:"
set black(say.hu.badnick.8) "\005\[BT\]\005 A következő \002bejegyzések\002 megjelenítéséhez használd a következőt: \001%char%badnick list -next\001 (még \002%counter%\002 bejegyzés van hátra)"
set black(say.hu.badnick.9) "\005\[BT\]\005 A következő \002bejegyzések\002 megjelenítéséhez használd a következőt: \001%char%badnick %chan% list -next\001 (még \002%counter%\002 bejegyzés van hátra)"
set black(say.hu.badnick.10) "A Nick-neved tiltott karaktereket/tartalmaz, van \002%time%\002 másodperced megváltoztatni, különben ban-olva leszel."
set black(say.hu.badnick.11) "\005\[BT\]\005 Hozzáadtam a kivételek közé a(z) \001%msg.8%\001 nevűt a(z) \002%msg.1%\002 sorszámmal %chan% csatornán."



################################ BadIdent #####################################

set black(say.hu.badident.1) "Nem tartottad be a szabályokat a(z) %chan% csatornán az IDENT-EL kapcsolatban."
set black(say.hu.badident.3) "\005\[BT\]\005 *** BadIdents lista vége ***"
set black(say.hu.badident.4) "\005\[BT\]\005 Nincs \002badident\002 azonosító számmal (\001%msg.1%\001) a(z) \002%chan%\002 csatornán."
set black(say.hu.badident.5) "\005\[BT\]\005 Töröltem a \002badident\002 azonosító számú (\001%msg.1%\001) rekordot a(z) \002%chan%\002 csatornából."
set black(say.hu.badident.6) "\005\[BT\]\005 Hozzáadtam a \002badident\002 listához a \001%msg.8%\001 azonosító számú (\002%msg.1%\002) rekordot a(z) \002%chan%\002 csatornán."
set black(say.hu.badident.7) "\005\[BT\]\005 A \002BadIdents\002 lista a következő a(z) \002%chan%\002 csatornán:"
set black(say.hu.badident.8) "\005\[BT\]\005 A következő \002BadIdents\002 megtekintéséhez használd \001%char%badident list -next\001 (\002%counter%\002 BadIdents maradt)"
set black(say.hu.badident.9) "\005\[BT\]\005 A következő \002BadIdents\002 megtekintéséhez használd \001%char%badident %chan% list -next\001 (\002%counter%\002 BadIdents maradt)"
set black(say.hu.badident.10) "\005\[BT\]\005 Hozzáadtam a \002badident\002 listához kivételként a \001%msg.8%\001 azonosító számú (\002%msg.1%\002) rekordot a(z) \002%chan%\002 csatornán."

################################# AntiJoinFlood #####################################

set black(say.hu.antijoinflood.1) "Nem tartottad be a szabályokat a(z) %chan% csatornán a joinflood-dal kapcsolatban."
set black(say.hu.antijoinflood.2) "\002Figyelem!\002 Észleltem egy join flood-ot a(z) \002%chan%\002 csatornán. Kérlek, ellenőrizd!"

################################# AntiChanFlood #####################################

set black(say.hu.antichanflood.1) "Nem tartottad be a szabályokat a(z) %chan% csatornán a flood-dal kapcsolatban."
set black(say.hu.antichanflood.2) "Figyelem! Figyelmeztetlek, hogy ne írj ilyen sok sort egyszerre a(z) %chan% csatornán."

################################### NickFlood #######################################

set black(say.hu.nickflood.1) "Nem tartottad be a szabályokat a(z) %chan% csatornán a nick flood-dal kapcsolatban."
set black(say.hu.nickflood.2) "Figyelem! Figyelmeztetlek, hogy ne változtasd olyan gyakran a nick-edet a(z) %chan% csatornán."

############################### Repetitive Chars ####################################

set black(say.hu.repetitivechars.1) "Nem tartottad be a szabályokat a(z) %chan% csatornán a karakterek ismétlésével kapcsolatban."
set black(say.hu.repetitivechars.2) "Figyelem! Figyelmeztetlek, hogy ne ismételgesd annyira a karaktereket a(z) %chan% csatornán."

################################### NickFlood #######################################

set black(say.hu.noproxy.1) "A PROXY típusú IP-címek nem engedélyezettek itt. ISP: \002%isp%\002"


#############################################################################################################################
#                                                                                                                           #
#                                                        MODULE                                                             #
#                                                                                                                           #
#############################################################################################################################

################################## SecureMode ##################################

set black(say.hu.securemode.1) {
"\002FIGYELEM:\002 Megpróbáltál belépni a(z) \001%chan%\001 csatornára, de a csatorna \002lockdown\002 módban van (\002+mD\002). Ahhoz, hogy beléphess, írd be: \001/msg %botnick% check %chan% %msg.1%\001, hogy bizonyítsd, hogy nem vagy robot. Ha elrontasz valamit, semmi sem fog történni."
"\002FIGYELEM:\002 Üdvözlünk a(z) \001%chan%\001 csatornán. Ahhoz, hogy beléphess, mivel a csatorna \002lockdown\002 módban van (\002+mD\002), írd be: \001/msg %botnick% check %chan% %msg.1%\001, hogy bizonyítsd, hogy nem vagy robot. Ha elrontasz valamit, semmi sem fog történni."
"\002FIGYELEM:\002 A csatorna \002lockdown\002 módban van (\002+mD\002), ahhoz, hogy beléphess és bebizonyítsd, hogy nem vagy robot, írd be: \001/msg %botnick% check %chan% %msg.1%\001."
}

set black(say.hu.securemode.2) "\002%msg.1%\002: kellemes csevegést! Elnézést a tapasztalatlanságért!"
set black(say.hu.securemode.3) "\005\[BT\]\005 *** Vége a kivételek listájának ***"
set black(say.hu.securemode.4) "\005\[BT\]\005 Nincs \002SecureMode\002 kivétel azonosító számmal (\001%msg.1%\001) a(z) \002%chan%\002 csatornán."
set black(say.hu.securemode.5) "\005\[BT\]\005 Töröltem a \002SecureMode\002 kivétel azonosító számú (\001%msg.1%\001) rekordot a(z) \002%chan%\002 csatornából."
set black(say.hu.securemode.6) "\005\[BT\]\005 Hozzáadtam a \002SecureMode\002 kivételek listájához a \001%msg.8%\001 azonosító számú (\002%msg.1%\002) rekordot a(z) \002%chan%\002 csatornán."
set black(say.hu.securemode.7) "\005\[BT\]\005 A \002SecureMode\002 kivételek listája a következő a(z) \002%chan%\002 csatornán:"
set black(say.hu.securemode.8) "\005\[BT\]\005 A következő \002SecureMode\002 kivételek megtekintéséhez használd: \001%char%securemode list -next\001 (\002%counter%\002 kivétel maradt)"
set black(say.hu.securemode.9) "\005\[BT\]\005 A következő \002SecureMode\002 kivételek megtekintéséhez használd: \001%char%securemode %chan% list -next\001 (\002%counter%\002 kivétel maradt)"
set black(say.hu.securemode.10) "Secure mód: bekapcsolva."
set black(say.hu.securemode.11) "Secure mód: kikapcsolva."

################################## VoiceMe #####################################

set black(say.hu.voiceme.1) "A csatorna \002moderált(+m)\002. A \002%chan%\002 csatornán való beszéléshez használd: \001/msg %botnick% voiceme %chan%\001. A parancs használatához be kell jelentkezned és regisztrálnod kell az X szolgáltatásban. Ha még nincs Cservice felhasználóneved, látogasd meg az \002https://www.cservice.undernet.org/live/\002 oldalt a regisztrációhoz."
set black(say.hu.voiceme.2) "A csatorna már nem \002moderált(+m)\002. Kellemes csevegést továbbra is!"
set black(say.hu.voiceme.3) "Gratulálok! Megkaptad a \001voice(+v)\001 jogot a(z) \002%chan%\002 csatornán. Kellemes csevegést! :)"
set black(say.hu.voiceme.4) "Már rendelkezel \001voice(+v)\001 joggal a(z) \002%chan%\002 csatornán."
set black(say.hu.voiceme.5) "Ahhoz, hogy bebizonyítsd, hogy nem vagy robot, írd be: \002/msg %botnick% voiceme %chan% %msg%\002"
set black(say.hu.voiceme.6) "A csatorna \002moderált(+m)\002. A \002%chan%\002 csatornán való beszéléshez használd: \001/msg %botnick% voiceme %chan%\001. Jó szórakozást!"


################################# TopWords #####################################

set black(say.hu.topwords.1) "\002TopWords\002 Összesen: \001%msg%\001"
set black(say.hu.topwords.2) "\002TopWords\002 Mai: \001%msg%\001"
set black(say.hu.topwords.3) "TopWords Mai: (\001%msg.1%\001) Host: \001%msg.2%\001 Szavak: \002%msg.3%\002 Sorok: \002%msg.4%\002 Betűk: \002%msg.12%\002 Mosolyok: \002%msg.13%\002 Cselekedetek: \002%msg.15%\002 Kérdések: \002%msg.17%\002 (Helyezés \002%msg.19%\002/\002%msg.21%\002 felhasználók között)."
set black(say.hu.topwords.4) "\005\[BT\]\005 Nincs információ a \002%msg.1%\002-ról"
set black(say.hu.topwords.7) "\005\[BT\]\005 Nincsenek emberek a top listán a \002%chan%\002 csatornán"
set black(say.hu.topwords.8) "\005\[BT\]\005 Visszaállítottam a \002TopWords\002-t a \002%chan%\002 csatornán"
set black(say.hu.topwords.9) "(A következő osztályozásokért írd be: \002%char%topwords -next\002)"
set black(say.hu.topwords.10) "\005\[BT\]\005 Nincs \002TopWords\002 rekord a(z) \002%chan%\002 csatornán"
set black(say.hu.topwords.11) "(A következő osztályozásokért írd be: \002%char%topwords total -next\002)"
set black(say.hu.topwords.12) "(A következő osztályozásokért írd be: \002%char%topwords\002 %chan% total -next\002)"
set black(say.hu.topwords.13) "(A következő osztályozásokért írd be: \002%char%topwords %chan% -next\002)"
set black(say.hu.topwords.14) "\005\[BT\]\005 Nincsenek emberek a top listán a \002%chan%\002 csatornán ezen a napon."
set black(say.hu.topwords.15) "\005\[BT\]\005 Hozzáadtam \001%msg.1%\001-t kivételként a \002TopWords\002-hez a \002%chan%\002 csatornán"
set black(say.hu.topwords.16) "\005\[BT\]\005 Hozzáadtam \001%msg.1%\001-t a \002%msg.2%\002 hostszámmal kivételként a \002TopWords\002-hez a \002%chan%\002 csatornán"
set black(say.hu.topwords.17) "\005\[BT\]\005 \002%msg.1%\002 már kivétel a \002TopWords\002-ben a \002%chan%\002 csatornán"
set black(say.hu.topwords.18) "\005\[BT\]\005 A \002TopWords\002 kivételek listája a következő a \002%chan%\002 csatornán:"
set black(say.hu.topwords.19) "%msg%"
set black(say.hu.topwords.20) "\005\[BT\]\005 \001%msg.1%\001-t nem adták hozzá kivételként a \002TopWords\002-hez."
set black(say.hu.topwords.21) "\005\[BT\]\005 \001%msg.1%\001-t töröltem a \002TopWords\002 kivételek listájáról a \002%chan%\002 csatornán."
set black(say.hu.topwords.22) "TopWords Összesen: (\001%msg.1%\001) Host: \001%msg.2%\001 Szavak: \002%msg.3%\002 Sorok: \002%msg.4%\002 Betűk: \002%msg.12%\002 Mosolyok: \002%msg.13%\002 Cselekedetek: \002%msg.15%\002 Kérdések: \002%msg.17%\002 (Helyezés \002%msg.19%\002/\002%msg.21%\002 felhasználók között)."
set black(say.hu.topwords.23) "\005\[BT\]\005 Nincsenek emberek a top listán a \002%chan%\002 csatornán ezen a héten."
set black(say.hu.topwords.24) "\002TopWords\002 Ez a Hét: \001%msg%\001"
set black(say.hu.topwords.25) "(A következő osztályozásokért írd be: \002%char%topwords\002 %chan% week -next\002)"
set black(say.hu.topwords.26) "(A következő osztályozásokért írd be: \002%char%topwords week -next\002)" 
set black(say.hu.topwords.27) "\005\[BT\]\005 Nem találtam rekordokat a \002%msg.1%\002-hez kapcsolódóan, úgy tűnik, nem beszélt ;("
set black(say.hu.topwords.28) "TopWords Ez a Hét: (\001%msg.1%\001) Host: \001%msg.2%\001 Szavak: \002%msg.3%\002 Sorok: \002%msg.4%\002 Betűk: \002%msg.12%\002 Mosolyok: \002%msg.13%\002 Cselekedetek: \002%msg.15%\002 Kérdések: \002%msg.17%\002 (Helyezés \002%msg.19%\002/\002%msg.21%\002 felhasználók között)."
set black(say.hu.topwords.29) "\005\[BT\]\005 Visszaállítottam a \002TopWords\002-t \001%msg.1%\001 csatornán ezen a héten."


################################ BackChan ###################################

set black(say.hu.reportchan) "\005\[BT\]\005 Ban hozzáadva a \002%chan%\002 csatornára a \001%banmask%\001 hosztra a következő okból: \002%reason%\002. Lejárat: \001%bantime%\001."
set black(say.hu.reportchan.1) "\005\[BT\]\005 \[\002%nick%\002\] hozzáadott egy bant a \002%chan%\002 csatornára a \001%banmask%\001 hosztra a következő okból: %reason%. Lejárat: \001%bantime%\001."
set black(say.hu.backchan.1) "\005\[BT\]\005 \001%msg.1%\001 megtalálható a tiltólistán a \002%chan%\002 csatornán a \002%msg.2%\002 hoszton"
set black(say.hu.reportchan.2) "\005\[BT\]\005 \[\002%nick%\002\] hozzáadott egy Gag-et a \002%chan%\002 csatornára a \001%banmask%\001 hosztra a következő okból: \002%reason%\002. Lejárat: \001%bantime%\001."
set black(say.hu.reportchan.3) "\005\[BT\]\005 \[\002%nick%\002\] eltávolította a \001%msg.1%\001 tiltást (\002%msg.2%\002 találat) a \002%chan%\002 csatornáról kapcsolódóan a \002%msg.3%\002-hoz"
set black(say.hu.reportchan.4) "\005\[BT\]\005 \[\002%nick%\002\] eltávolította a Gag-ot a \002%chan%\002 csatornáról a \001%banmask%\001 hosztról"

################################ CloneScan ###################################

set black(say.hu.clonescan.1) "Túl sok kapcsolat innen: \[*@%clone%\]. A klonok tilosak a %chan%-on!"
set black(say.hu.clonescan.2) "\005\[BT\]\005 Nem találtam klónokat a %chan%-on."
set black(say.hu.clonescan.3) "\005\[BT\]\005 *** Vége az kivételek listájának ***"
set black(say.hu.clonescan.4) "\005\[BT\]\005 Nincs \002klónszkenner kivétel\002 azonosítóval a %chan%-on számára: \002%msg.1%\002."
set black(say.hu.clonescan.5) "\005\[BT\]\005 Töröltem a \002klónszkenner kivételt\002 azonosítóval: \001%msg.1%\001 a %chan%-on."
set black(say.hu.clonescan.6) "\005\[BT\]\005 Hozzáadtam a \002klónszkenner kivételhez\002 azonosítóval: \002%msg.8%\002 a %chan%-on."
set black(say.hu.clonescan.7) "\005\[BT\]\005 A \002klónszkenner kivételek\002 listája a következő a %chan%-on:"
set black(say.hu.clonescan.8) "\005\[BT\]\005 A következő kivételek megtekintéséhez használd a következő parancsot: \001%char%clonescan list -next\001 (\004%counter%\004 kivétel maradt)"
set black(say.hu.clonescan.9) "\005\[BT\]\005 A következő kivételek megtekintéséhez használd a következő parancsot: \001%char%clonescan %chan% list -next\001 (\004%counter%\004 kivétel maradt)"
set black(say.hu.clonescan.10) "\005\[BT\]\005 Találtam \001%msg.1%\001 klónt a %chan%-on a \002%msg.2%\002 hosztról. Ezek a következők: \002%msg.7%\002"
set black(say.hu.clonescan.11) "\005\[BT\]\005 Klónok keresése a %chan%-on.."

################################# Private ######################################

set black(say.hu.private.1) "Privát \002csatorna\002"
set black(say.hu.private.5) "%msg%"
set black(say.hu.private.6) "\005\[BT\]\005 \001%msg.1%\001 nincs hozzáadva kivételként."
set black(say.hu.private.7) "\005\[BT\]\005 \001%msg.1%\001 már szerepel az adatbázisomban. Hozzáadom kivételként a(z) \002%chan%\002 csatornához."
set black(say.hu.private.8) "\005\[BT\]\005 Hozzáadtam \001%msg.1%\001-t a \002%chan%\002 csatornán kivételként, host név: \002%msg.2%\002"
set black(say.hu.private.9) "\005\[BT\]\005 Töröltem \001%msg.1%\001-t a kivételek listájáról a(z) \002%chan%\002 csatornán."
set black(say.hu.private.10) "\005\[BT\]\005 \001%msg.1%\001 már szerepel kivételként a(z) \002%chan%\002 csatornán."
set black(say.hu.private.11) "\005\[BT\]\005 A private kivételek a(z) \002%chan%\002 csatornán:"

################################# BadChan ######################################

set black(say.hu.badchan.1) "\005\[BT\]\005 \001%msg.1%\002 már szerepel a \002%chan%\002 csatorna tiltott csatornák listájában."
set black(say.hu.badchan.2) "\005\[BT\]\005 A következő tiltott csatornák megtekintéséhez használd a következő parancsot: \001%char%badchan list global -next\001 (\002%counter%\002 tiltott csatorna van hátra)"
set black(say.hu.badchan.3) "\005\[BT\]\005 A következő tiltott csatornák megtekintéséhez használd a következő parancsot: \001%char%badchan list -next\001 (\002%counter%\002 tiltott csatorna van hátra)"
set black(say.hu.badchan.4) "\005\[BT\]\005 Vége a tiltott csatornák listájának."
set black(say.hu.badchan.5) "Tiltott csatornákon találtak meg."
set black(say.hu.badchan.6) "\005\[BT\]\005 \001%msg.1%\001 engedélyezte a \002%chan%\002 csatorna tiltott csatorna modulját."
set black(say.hu.badchan.8) "\005\[BT\]\005 \001%msg.1%\001 letiltotta a \002%chan%\002 csatorna tiltott csatorna modulját."
set black(say.hu.badchan.11) "\005\[BT\]\005 Hozzáadtam a \002%msg.1%\001 csatornát a tiltott csatornák GLOBÁLIS listájához, sorszám: \002%msg.2%\002"
set black(say.hu.badchan.12) "\005\[BT\]\005 Hozzáadtam a \002%msg.1%\001 csatornát a \002%chan%\002 csatorna tiltott csatornái listájához, sorszám: \002%msg.2%\002"
set black(say.hu.badchan.14) "\005\[BT\]\005 A tiltott csatornák listája a(z) \002%chan%\002 csatornán:"
set black(say.hu.badchan.15) "\005\[BT\]\005 A tiltott csatornák GLOBAÁLIS listája:"
set black(say.hu.badchan.16) "\004%msg.1%\004) %msg.2%"
set black(say.hu.badchan.17) "\005\[BT\]\005 Nem találtam meg a(z) \002%msg.1%\002 sorszámú tiltott csatornát a listában"
set black(say.hu.badchan.18) "\005\[BT\]\005 Töröltem a(z) \001%msg.1%\001 sorszámú tiltott csatornát a(z) \002%chan%\002 csatornáról."
set black(say.hu.badchan.19) "\005\[BT\]\005 Töröltem a(z) \002%msg.1%\002 sorszámú tiltott csatornát a GLOBAÁLIS listáról."
set black(say.hu.badchan.39) "Kitiltottak a(z) \002%chan%\002 csatornán, mert tiltott csatornákon tartózkodtál."
set black(say.hu.badchan.40) "\002FIGYELEM!\002 Tiltott csatornákon találtak meg. %time% másodperc áll rendelkezésedre a \001/part\001 parancs kiadására a következő csatornákon: \002%badchans%\002, különben kitiltásra kerülsz. Köszönöm!"
set black(say.hu.badchan.41) "\005\[BT\]\005 A következő tiltott csatornák megtekintéséhez használd a következő parancsot: \001%char%badchan %chan% list -next\001 (\002%counter%\002 tiltott csatorna van hátra)"
set black(say.hu.badchan.42) "\005\[BT\]\005 A(z) \002%msg.1%\002 csatorna már szerepel a tiltott csatornák GLOBÁLIS listáján"
set black(say.hu.badchan.43) "\005\[BT\]\005 A tiltott csatorna modul már aktív."
set black(say.hu.badchan.44) "\005\[BT\]\005 \[FIGYELMEZTETÉS\] ( \002%nick%\002 ) tiltott csatornákon található: ( \001%chans%\001 )"
set black(say.hu.badchan.45) "\005\[BT\]\005 Hozzáadtam a(z) \001%msg.1%\001 csatornát kivételként a(z) \002%chan%\002 csatorna tiltott csatornái listájához, sorszám: \002%msg.2%\002"
set black(say.hu.badchan.46) "\002regex\002"
set black(say.hu.badchan.47) "\005\[BT\]\005 Hozzáadtam a(z) \001%msg.1%\001 reguláris kifejezést a tiltott csatornák GLOBÁLIS listájához, sorszám: \002%msg.2%\002"
set black(say.hu.badchan.48) "\005\[BT\]\005 Hozzáadtam a(z) \001%msg.1%\001 reguláris kifejezést a(z) \002%chan%\002 csatorna tiltott csatornái listájához, sorszám: \002%msg.2%\002"

################################# AntiTaKe ######################################

set black(say.hu.antitake.1) "\005\[BT\]\005 Nem adhatsz \002DEOP\002 jogosultságot, mert nincs benne az access adatbázisomban."
set black(say.hu.antitake.2) "\005\[BT\]\005 Nem adhatsz \002OP\002 jogosultságot, mert nincs benne az access adatbázisomban."

################################# Anunt ######################################

set black(say.hu.anunt.1) "%msg%"
set black(say.hu.anunt.2) "\005\[BT\]\005 *** Hirdetési lista vége ***"
set black(say.hu.anunt.3) "\005\[BT\]\005 Aktiváltad a hirdetési módot a következő csatornán: \002%chan%\002."
set black(say.hu.anunt.4) "\005\[BT\]\005 Deaktiváltad a hirdetési módot a következő csatornán: \002%chan%\002."
set black(say.hu.anunt.5) "\005\[BT\]\005 Hozzáadtam a következő hirdetést a \002%chan%\002 csatornához a következő sorszámmal: \001%msg.1%\001:"
set black(say.hu.anunt.6) "\004%msg.1%\004) %msg.8%"
set black(say.hu.anunt.7) "\005\[BT\]\005 Nincsenek hirdetések a \002%chan%\002 csatornán."
set black(say.hu.anunt.8) "\005\[BT\]\005 A \002%chan%\002 csatorna hirdetéseinek listája:"
set black(say.hu.anunt.9) "\005\[BT\]\005 A következő hirdetések megjelenítéséhez használd: \001%char%anunt list -next\001 (\002%counter%\002 hátralévő hirdetés)"
set black(say.hu.anunt.10) "\005\[BT\]\005 Töröltem a(z) \002%msg.1%\002 sorszámú hirdetést a(z) %chan% csatornáról."
set black(say.hu.anunt.13) "\005\[BT\]\005 Nincs \002%msg.1%\002 sorszámú hirdetés a \002%chan%\002 csatornán."
set black(say.hu.anunt.14) "\005\[BT\]\005 A következő hirdetések megjelenítéséhez használd: \001%char%anunt %chan% list -next\001 (\002%counter%\002 hátralévő hirdetés)"

################################# AutoBroadcast ######################################

set black(say.hu.autobroadcast.1) "%msg%"
set black(say.hu.autobroadcast.2) "\005\[BT\]\005 Nincs \002%msg.1%\002 sorszámú broadcast."
set black(say.hu.autobroadcast.3) "\005\[BT\]\005 Az \002AutoBroadcast\002 mód már aktív."
set black(say.hu.autobroadcast.4) "\005\[BT\]\005 Az \002AutoBroadcast\002 módot bekapcsoltam."
set black(say.hu.autobroadcast.5) "\005\[BT\]\005 Az \002AutoBroadcast\002 mód kikapcsolva."
set black(say.hu.autobroadcast.6) "\005\[BT\]\005 Hozzáadtam a(z) \002%msg.1%\002 sorszámú broadcastot az adatbázishoz."
set black(say.hu.autobroadcast.7) "\004%msg.1%\004) %msg.8%"
set black(say.hu.autobroadcast.8) "\005\[BT\]\005 Nincs broadcast a listában."
set black(say.hu.autobroadcast.9) "\005\[BT\]\005 A broadcast-lista:"
set black(say.hu.autobroadcast.10) "\005\[BT\]\005 *** Az AutoBroadcast lista vége ***"
set black(say.hu.autobroadcast.11) "\005\[BT\]\005 Töröltem a(z) \002%msg.1%\002 sorszámú broadcastot."
set black(say.hu.autobroadcast.12) "\005\[BT\]\005 A következő broadcastok megjelenítéséhez használd: \001%char%bt list -next\001 (\002%counter%\002 hátralévő broadcast)"

################################# Limit ######################################

################################## Limit ######################################

set black(say.hu.limit.5) "\005\[BT\]\005 Engedélyeztem a \001Limit\001 módot a(z) \002%chan%\002 csatornán."
set black(say.hu.limit.6) "\005\[BT\]\005 Beállítottam a limitet \002%msg.1%\002-re (alapértelmezett)."
set black(say.hu.limit.7) "\005\[BT\]\005 Letiltottam a \001Limit\001 módot a(z) \002%chan%\002 csatornán."
set black(say.hu.limit.9) "\005\[BT\]\005 Nem állíthatsz be 2-nél kisebb limitet."
set black(say.hu.limit.10) "\005\[BT\]\005 Beállítottam a limitet \002+2.\002"
set black(say.hu.limit.11) "\005\[BT\]\005 Nem állíthatsz be 500-nál nagyobb limitet."
set black(say.hu.limit.12) "\005\[BT\]\005 Beállítottam a limitet \002%msg.1%\002-re"

################################# Topic ######################################

set black(say.hu.topic.1) "\005\[BT\]\005 A \002%chan%\002 csatorna topikja: \001%msg%\001"
set black(say.hu.topic.2) "\005\[BT\]\005 A topik nem állítható be, mert üres."
set black(say.hu.topic.3) "\005\[BT\]\005 A \002%chan%\002 csatorna topikját beállítottam erre: \001%msg%\001 (a jelenlegi topik)"
set black(say.hu.topic.4) "\005\[BT\]\005 Újraállítottam a \002%chan%\002 csatorna topikját."

####################################### Seen ######################################

set black(say.hu.seen.4) "\005\[BT\]\005 \002%msg.1%\002 itt van éppen :P"
set black(say.hu.seen.5) "\005\[BT\]\005 Várj \0021 percet\002 a \001%char%seen\001 használata előtt."
set black(say.hu.seen.6) "\005\[BT\]\005 %msg.1% nézze meg a tükörbe"
set black(say.hu.seen.7) "\005\[BT\]\005 %msg.1% már itt van a(z) %chan% csatornán"
set black(say.hu.seen.8) "nem tudom pontosan, mennyi ideig volt jelen."
set black(say.hu.seen.9) "miután %staytime%-ig volt a %chan%-on."
set black(say.hu.seen.10) " %newnick% még mindig a %chan%-on van."
set black(say.hu.seen.11) " Nem látom most éppen a(z) %newnick%-et a %chan%-on."
set black(say.hu.seen.12) "\005\[BT\]\005 %entry% (%host%) kilépett a(z) %chan%-ról %output% %date%-kor a következő okkal: \"%reason%\", %staymsg%"
set black(say.hu.seen.13) "\005\[BT\]\005 %entry% (%host%) elhagyta az IRC-t %output% %date%-kor a következő okkal: \"%reason%\", %staymsg%"
set black(say.hu.seen.14) "\005\[BT\]\005 %entry% (%host%) belépett a(z) %chan%-ra %output% %date%-kor. %nowon%"
set black(say.hu.seen.15) "\005\[BT\]\005 %entry% (%host%) kilépett a *.net *.split-en %output% %date%-kor. %staymsg%"
set black(say.hu.seen.16) "\005\[BT\]\005 %entry% (%host%) kitiltották a(z) %chan%-ról %output% %date%-kor a következő okkal: \"%reason%\", %staymsg%"
set black(say.hu.seen.17) "\005\[BT\]\005 %entry% (%host%) megváltoztatta a becenevét erre: %newnick% %output% %date%. %nowon%"
set black(say.hu.seen.18) "\005\[BT\]\005 Nincs információ a(z) \002%msg.1%\002-ról"
set black(say.hu.seen.19) " \002%latest%\002 még mindig a %chan%-on van."
set black(say.hu.seen.20) "Most nem látom őt, jelenleg %chan% csatornáról hiányzik."
set black(say.hu.seen.21) "\005\[BT\]\005 Találtam (%num%) találatot \"%entry%\". Legutóbb \002%latest%\002 (%host%) %chan% csatornáról távozott %output% %date%-kor, azt mondva: \"%reason%\", %staymsg%"
set black(say.hu.seen.22) "\005\[BT\]\005 Találtam (%num%) találatot \"%entry%\". Legutóbb \002%latest%\002 (%host%) IRC-ről távozott %output% %date%-kor, azt mondva: \"%reason%\", %staymsg%"
set black(say.hu.seen.23) "\005\[BT\]\005 Találtam (%num%) találatot \"%entry%\". Legutóbb \002%latest%\002 (%host%) %chan% csatornára lépett be %output% %date%-kor.%nowon%"
set black(say.hu.seen.24) "\005\[BT\]\005 Találtam (%num%) találatot \"%entry%\". Legutóbb \002%latest%\002 (%host%) *.net *.split-en távozott %output% %date%-kor, %staymsg%"
set black(say.hu.seen.25) "\005\[BT\]\005 Találtam (%num%) találatot \"%entry%\". Legutóbb \002%latest%\002 (%host%) %chan% csatornáról kirúgták %output% %date%-kor, indok: \"%reason%\", %staymsg%"
set black(say.hu.seen.26) "\005\[BT\]\005 Találtam (%num%) találatot \"%entry%\". Legutóbb \002%latest%\002 (%host%) a nevét megváltoztatta %newnick%-re %output% %date%-kor. %nowon%"
set black(say.hu.seen.27) "%msg%"
set black(say.hu.seen.28) "\005\[BT\]\005 Több mint (%msg.1%) találatot találtam"
set black(say.hu.seen.29) "\005\[BT\]\005 %entry% (%host%) utoljára %chan% csatornán volt látható. %nowon%"
set black(say.hu.seen.30) "\005\[BT\]\005 Találtam (%num%) találatot \"%entry%\". Legutóbb \002%latest%\002 (%host%) utoljára %chan% csatornán volt látható.%nowon%"
set black(say.hu.seen.31) "\005\[BT\]\005 Amennyire emlékszem, \002%userentry%\002 nem mondott semmit."
set black(say.hu.seen.32) "\005\[BT\]\005 Amennyire emlékszem, %output% órával ezelőtt \002%userentry%\002 (%host%) utoljára beszélt %chan% csatornán: \"%lastmsg%\""
set black(say.hu.seen.33) "\005\[BT\]\005 Több mint (%num%) találatot találtam. Legutóbb \002%latest%\002 (%host%) %chan% csatornáról távozott %output% %date%-kor, azt mondva: \"%reason%\", %staymsg%"
set black(say.hu.seen.34) "\005\[BT\]\005 Több mint (%num%) találatot találtam. Legutóbb \002%latest%\002 (%host%) IRC-ről távozott %output% %date%-kor, azt mondva: \"%reason%\", %staymsg%"
set black(say.hu.seen.35) "\005\[BT\]\005 Több mint (%num%) találatot találtam. Legutóbb \002%latest%\002 (%host%) %chan% csatornára lépett be %output% %date%-kor.%nowon%"
set black(say.hu.seen.36) "\005\[BT\]\005 Több mint (%num%) találatot találtam. Legutóbb \002%latest%\002 (%host%) *.net *.split-en távozott %output% %date%-kor, %staymsg%"
set black(say.hu.seen.37) "\005\[BT\]\005 Több mint (%num%) találatot találtam. Legutóbb \002%latest%\002 (%host%) %chan% csatornáról kirúgták %output% %date%-kor, indok: \"%reason%\", %staymsg%"
set black(say.hu.seen.38) "\005\[BT\]\005 Több mint (%num%) találatot találtam. Legutóbb \002%latest%\002 (%host%) a nevét megváltoztatta %newnick%-re %output% %date%-kor. %nowon%"
set black(say.hu.seen.39) "\005\[BT\]\005 Helló \002%msg.1%\002, tudd meg, hogy \001%msg.2%\001 rád keresett a \002seen\002 paranccsal %chan% csatornán \002%msg.3%\002 időpontban."
set black(say.hu.seen.40) "\005\[BT\]\005 Több mint (%num%) találatot találtam. Legutóbb \002%latest%\002 (%host%) utoljára %chan% csatornán volt látható.%nowon%"
set black(say.hu.seen.41) "\005\[BT\]\005 Több mint (100) találatot találtam. Kérlek, alakítsd át a keresést."

################################# Greet ######################################

set black(say.hu.greet.1) "\005\[BT\]\005 Beállítottam üdvözlést a \002%chan%\002 csatornára: \001%msg%\001"
set black(say.hu.greet.2) "\005\[BT\]\005 Aktiváltam a \001Üdvözlést\001 a \002%chan%\002 csatornán."
set black(say.hu.greet.3) "\005\[BT\]\005 Deaktiváltam a \001Üdvözlést\001 a \002%chan%\002 csatornán."

################################# Leave #######################################

set black(say.hu.leave.1) "\005\[BT\]\005 Beállítottam elköszönést a \002%chan%\002 csatornára: \001%msg%\001"
set black(say.hu.leave.2) "\005\[BT\]\005 Aktiváltam a \001Elköszönést\001 a \002%chan%\002 csatornán."
set black(say.hu.leave.3) "\005\[BT\]\005 Deaktiváltam a \001Elköszönést\001 a \002%chan%\002 csatornán."

################################# Idle ######################################

set black(say.hu.idle.11) "\005\[BT\]\005 Aktiváltam az \001Inaktív OP\001-t a \002%chan%\002 csatornán."
set black(say.hu.idle.12) "\005\[BT\]\005 Deaktiváltam az \001Inaktív OP\001-t a \002%chan%\002 csatornán."
set black(say.hu.idle.14) "\005\[BT\]\005 Aktiváltam az \001Inaktív VOICE\001-t a \002%chan%\002 csatornán."
set black(say.hu.idle.15) "\005\[BT\]\005 Deaktiváltam az \001Inaktív VOICE\001-t a \002%chan%\002 csatornán."
set black(say.hu.idle.17) "\005\[BT\]\005 \001%msg.1%\001 nincs a \002%chan%\002 csatornán."
set black(say.hu.idle.18) "\005\[BT\]\005 Hozzáadtam \001%msg.1%\001-t az \002Inaktív\002 kivételhez a \002%chan%\002 csatornán."
set black(say.hu.idle.19) "\005\[BT\]\005 Hozzáadtam kivételként \001%msg.1%\001-t, a \002%msg.2%\002 hoszt-tal együtt az \001AntiIdle\001-hez a \002%chan%\002 csatornán."
set black(say.hu.idle.20) "\005\[BT\]\005 Az \001AntiIdle\001 kivételek listája a \002%chan%\002 csatornán:"
set black(say.hu.idle.21) "%msg%"
set black(say.hu.idle.22) "\005\[BT\]\005 \002%msg.1%\002 nem található az emlékezetemben."
set black(say.hu.idle.23) "\005\[BT\]\005 \001%msg.1%\001-t nem adtam hozzá kivételként az \002AntiIdle\002-hez."
set black(say.hu.idle.24) "\005\[BT\]\005 \001%msg.1%\001-t töröltem az \002AntiIdle\002 kivételek listájáról."
set black(say.hu.idle.25) "\005\[BT\]\005 Aktiváltam az \001Idle HalfOP\001-t a \002%chan%\002 csatornán."
set black(say.hu.idle.26) "\005\[BT\]\005 Deaktiváltam az \001Idle HalfOP\001-t a \002%chan%\002 csatornán."

################################# TCL ######################################

set black(say.hu.tcl.3) "Nem sikerült betölteni a scriptet: \001%msg.1%\001. Indok: \002%msg.8%\002"
set black(say.hu.tcl.4) "\005\[BT\]\005 A \002%msg.1%\002 script már betöltve van."
set black(say.hu.tcl.5) "\005\[BT\]\005 A \002%msg.1%\002 script sikeresen betöltve."
set black(say.hu.tcl.7) "\005\[BT\]\005 A \002%msg.1%\002 script nincs betöltve."
set black(say.hu.tcl.8) "\005\[BT\]\005 A \002%msg.1%\002 scriptet letiltottam."
set black(say.hu.tcl.12) "\005\[BT\]\005 \001%msg.1%\001 \002nem\002 található a scriptek között."
set black(say.hu.tcl.13) "\005\[BT\]\005 \001%msg.1%\001 található, de \002nincs\002 betöltve."
set black(say.hu.tcl.14) "\005\[BT\]\005 \001%msg.1%\001 található és már betöltve van."
set black(say.hu.tcl.17) "%msg%."
set black(say.hu.tcl.18) "\005\[BT\]\005 Hiba. Nem lehet \002unload\002 parancsot kiadni erre a scriptra!"
set black(say.hu.tcl.19) "\005\[BT\]\005 Hiba. Nem sikerült letölteni a \001%msg.1%\001 scriptet a megadott linkről."
set black(say.hu.tcl.20) "\005\[BT\]\005 Letöltés kész. A script betöltéséhez használd: \001%char%tcl load\001 \002%msg.1%\002"
set black(say.hu.tcl.21) "\005\[BT\]\005 A \002%msg.1%\002 script már letöltve van."
set black(say.hu.tcl.2) "\005\[BT\]\005 *** TCL lista vége ***"
set black(say.hu.tcl.9) "\005\[BT\]\005 A következő TCL-ek megjelenítéséhez használd: \001%char%tcl list -next\001 (\002%counter%\002 még hátralévő TCL-ek)"
set black(say.hu.tcl.10) "\005\[BT\]\005 Az \002TCL lista\002 (a félkövérrel jelölteket már betöltötték) a következő:"


#################################### Next #####################################

set black(say.hu.next.1) "Üdvözöllek \002%nick%\002, kérlek várj... De amint egy segítő szabad lesz, kapni fogsz voice-ot. Kérlek, ne zavard a felhasználókat \002+v/+o\002-vel üzeneteken keresztül! Te vagy a \002%counter%\002. sorban. Köszönöm!"
set black(say.hu.next.2) "Átvett téged \001%nick%\001. Kérlek, mond el a problémát egy \002egyetlen sorban\002 és \002várj\002 a hozzád rendelt segítő válaszára!"
set black(say.hu.next.3) "\005\[BT\]\005 \002%msg.1%\002 \002%msg.set%\002 ideig várakozott, kérlek foglalkozz vele most :)"
set black(say.hu.next.4) "\002%current%\002 most, hogy segítséget kaptál, kérlek adj \002/part\002-ot. Ha még van kérdésed, kérlek \002/hop %chan%\002. Köszönöm!"
set black(say.hu.next.5) "Itt nem szabad időzni! Kérlek térj vissza %chan% -ra, amikor szükséged van segítségre."
set black(say.hu.next.6) "\005\[BT\]\005 FIGYELEM: %nick% segítségre van szüksége %chan% -on. Ő a \002%counter%\002. a sorban."
set black(say.hu.next.7) "\005\[BT\]\005 Azoknak a listája, akik segítségre várnak:"
set black(say.hu.next.8) "\005\[BT\]\005 Jelenleg senkinek sincs szüksége segítségre."
set black(say.hu.next.9) "%msg%"
set black(say.hu.next.11) "\005\[BT\]\005 Figyelem: \002%current%\002 átvételre került \002%nick%\002 (\001%hand%\001)."
set black(say.hu.next.13) "\005\[BT\]\005 Hiba! \002%msg.1%\002 szerepel a segítségkérők listájában, de még nem kapott segítséget."
set black(say.hu.next.14) "\005\[BT\]\005 Hiba! \002%msg.1%\002 nincs a segítségkérők listájában."
set black(say.hu.next.15) "\005\[BT\]\005 FIGYELEM: %current% segítséget kapott \002%nick%\002 (\001%hand%\001)."
set black(say.hu.next.17) "\005\[BT\]\005 Hiba! Először \001%msg.1%\001-nek kapnia kell \002helped %msg.1%\002-t."
set black(say.hu.next.19) "\005\[BT\]\005 \002%msg.1%\002 átugorva (most ő az utolsó)..."

#################################### Quote #####################################

set black(say.hu.quote.1) "\005\[BT\]\005 Hozzáadtam a \002quote\002-t a(z) \001%msg.1%\001 sorszámú adatbázishoz."
set black(say.hu.quote.2) "\005\[BT\]\005 *** Idézetek lista vége ***"
set black(say.hu.quote.3) "\005\[BT\]\005 Idézet #%msg.1%: %msg.8%"
set black(say.hu.quote.4) "\005\[BT\]\005 %msg.1% :: \001%msg.2%\001 ::"
set black(say.hu.quote.6) "\004%msg.1%\004) %msg.8%"
set black(say.hu.quote.7) "\005\[BT\]\005 Nincsenek idézetek a \002%chan%\002 csatornán."
set black(say.hu.quote.8) "\005\[BT\]\005 Az \001idézetek listája\001 a \002%chan%\002 csatornán:"
set black(say.hu.quote.9) "\005\[BT\]\005 A következő \002idézetek\002 megjelenítéséhez használd: \001%char%q list -next\001 (\002%counter%\002 még hátralévő idézet)"
set black(say.hu.quote.10) "\005\[BT\]\005 Töröltem a(z) \002%chan%\002 csatorna \001%msg.1%\001 sorszámú \002idézetet\002."
set black(say.hu.quote.11) "\005\[BT\]\005 Nem találtam \002idézetet\002."
set black(say.hu.quote.12) "\002\[A nap idézete\]\002"
set black(say.hu.quote.13) "\005\[BT\]\005 Nincs \002idézet\002 a(z) \001%msg.1%\001 sorszámú \002%chan%\002 csatornán."
set black(say.hu.quote.14) "\005\[BT\]\005 A következő \002idézetek\002 megjelenítéséhez használd: \001%char%q %chan% list -next\001 (\002%counter%\002 még hátralévő idézet)"
set black(say.hu.quote.15) "\002Hozzáadta\002 :"
set black(say.hu.quote.16) "%msg%"
set black(say.hu.quote.17) "\005\[BT\]\005 \002Idézet\002 #%msg.1%: \001%msg.set%\001"
set black(say.hu.quote.18) "\005\[BT\]\005 További \002idézetek\002 számai: \001%msg%\001"
set black(say.hu.quote.19) "\005\[BT\]\005 \002Idézet\002: \001%msg%\001"
set black(say.hu.quote.20) "Létrehozva:"

#################################### Notes #####################################

set black(say.hu.notes.1) "\005\[BT\]\005 Elmentettem a \002note\002-ot a(z) \001%msg.1%\001 számú adatbázisban."
set black(say.hu.notes.2) "\005\[BT\]\005 Jegyzet elküldve a \002%msg.1%\002/%msg.2% felhasználónak."
set black(say.hu.notes.3) "\005\[BT\]\005 Jegyzet elküldve a \002%msg.1%\002/%msg.2% felhasználónak. Érvénytelen felhasználók: \001%msg.7%\001"
set black(say.hu.notes.4) "\005\[BT\]\005 HIBA! Nincs olyan jegyzet, mint a #%msg.1%."
set black(say.hu.notes.5) "\005\[BT\]\005 \002Note\002 #%msg.1%: \002Helyszín\002: \001%msg.2%\001 ; \002Hozzáadás dátuma\002: \001%msg.3%\001"
set black(say.hu.notes.6) "\005\[BT\]\005 \002Üzenet\002: %msg%"
set black(say.hu.notes.7) "\005\[BT\]\005 \002Note\002 #%msg.1%: \002Helyszín\002: \001%msg.2%\001 ; \002Küldte\002: \001%msg.3%\001 ; \002Küldés dátuma\002: \001%msg.4%\001"
set black(say.hu.notes.8) "\005\[BT\]\005 Töröltem a(z) #%msg.1% jegyzetet."
set black(say.hu.notes.9) "\002Státusz\002: OLVASOTT \002Üzenet\002: "
set black(say.hu.notes.10) "\002Státusz\002: OLVASATLAN \002Üzenet\002: "
set black(say.hu.notes.11) "\005\[BT\]\005 Van \001%msg.1%\001 új jegyzet váratlan... Ezek: \002%msg.7%\002. Összesen jegyzetek: \001%msg.2%\001"
set black(say.hu.notes.12) "\005\[BT\]\005 Van \001%msg.1%\001 új jegyzet váratlan... Összesen jegyzetek: \002%msg.2%\002"
set black(say.hu.notesinbox.13) "\005\[BT\]\005 A jegyzetek elolvasásához használd: \002%char%note read <szám>\002"
set black(say.hu.notesinbox.15) "\005\[BT\]\005 A következő \002jegyzet\002 halmaz megtekintéséhez használd: \001%char%note inbox -next\001 (\002%counter%\002 hátralévő jegyzet)"
set black(say.hu.notesinbox.16) "\005\[BT\]\005 A következő \002jegyzet\002 halmaz megtekintéséhez használd: \001%char%note %chan% inbox -next\001 (\002%counter%\002 hátralévő jegyzet)"
set black(say.hu.notes.13) "\005\[BT\]\005 HIBA! A \002Jegyzetek listája\002 üres."
set black(say.hu.notes.14) "\005\[BT\]\005 Van \002%msg.1%\002 hozzáadott személyes jegyzeted."
set black(say.hu.noteslist.15) "\005\[BT\]\005 A következő \002jegyzet\002 halmaz megtekintéséhez használd: \001%char%note list -next\001 (\002%counter%\002 hátralévő jegyzet)"
set black(say.hu.noteslist.16) "\005\[BT\]\005 A következő \002jegyzet\002 halmaz megtekintéséhez használd: \001%char%note %chan% list -next\001 (\002%counter%\002 hátralévő jegyzet)"
set black(say.hu.notes.13) "\005\[BT\]\005 A jegyzeteid listája üres. Ehhez használd: \002%char%note read <szám>\002"
set black(say.hu.notes.15) "\005\[BT\]\005 Töröltem az összes \002jegyzetet\002 az INBOX-ból."
set black(say.hu.notes.16) "\005\[BT\]\005 A jegyzetek elolvasásához használd: \002%char%note read <szám>\002"
set black(say.hu.notes.17) "JEGYZETEK_KIKAPCSOLVA"

#############################################################################################################################
#                                                                                                                           #
#                                                       COMENZI                                                             #
#                                                                                                                           #
#############################################################################################################################

###################################### ReportNick #################################

set black(say.hu.report.1) "\005\[BT\]\005 Kérlek várj \001%msg.1% másodpercet\001, mielőtt végrehajtasz egy másik \002%char%report\002 parancsot. Köszönöm!"
set black(say.hu.report.2) "\[JELZÉS\] Nick: \002%msg.1%\002 ; Jelentő: \002%msg.2%\002 ; Indok: \001%msg.8%\001"
set black(say.hu.report.3) "\[JELZÉS\] Nick: \001%msg.1%\001 ; Jelentő: \002%msg.2%\002"
set black(say.hu.report.4) "\005\[BT\]\005 Jelzésed elküldve az operátoroknak. Köszönjük!"
set black(say.hu.report.5) "\005\[BT\]\005 Hívj a 112-es számon ebben az esetben :-)"

###################################### cp #####################################

set black(say.hu.cp.1) "\005\[BT\]\005 Sikertelen másolás. (A \002%msg.1%\002 csatorna tiltási listája üres)"
set black(say.hu.cp.2) "\005\[BT\]\005 Sikertelen másolás. (\002%msg%\002 nem érvényes csatorna.)"
set black(say.hu.cp.3) "\005\[BT\]\005 Sikertelen másolás. (\002%msg%\002 nem érvényes csatornák.)"
set black(say.hu.cp.4) "\005\[BT\]\005 Másolás sikeres. (\002%msg.1%\002 bejegyzés másolva)"
set black(say.hu.cp.5) "\005\[BT\]\005 Másolás sikeres. (\002%msg.1%\002 felhasználó másolva \001%msg.2%\001 csatornából)"
set black(say.hu.cp.6) "\005\[BT\]\005 Másolás sikeres. (\002%msg.1%\002 beállítás másolva)"
set black(say.hu.cp.7) "\005\[BT\]\005 Másolás sikeres. (\002%msg.1%\002 tiltott csatornák másolva)"

#################################### mySet ####################################

set black(say.hu.myset.1) "\005\[BT\]\005 Nyelved beállítva: \002%msg.1%\002"
set black(say.hu.myset.2) "\005\[BT\]\005 Kilépési üzeneted beállítva: \002%msg.1%\002"
set black(say.hu.myset.3) "\005\[BT\]\005 Autoinvite beállítva: \002%msg.1%\002"
set black(say.hu.myset.4) "\005\[BT\]\005 Handle beállítva: \002%msg.1%\002"
set black(say.hu.myset.5) "\005\[BT\]\005 Nem sikerült beállítani a nyelvet \002%msg.1%\002, mert a fájl nem létezik."
set black(say.hu.myset.6) "\005\[BT\]\005 Üdvözlés beállítva: \002%msg%\002"
set black(say.hu.myset.7) "\005\[BT\]\005 Hozzáadtad magad mint host: \002%msg.1%\002"
set black(say.hu.myset.8) "\005\[BT\]\005 Törölted a \002%msg.1%\002 hostot az adatbázisból."
set black(say.hu.myset.9) "\005\[BT\]\005 Nincs \002%msg.1%\002 host az adatbázisomban."
set black(say.hu.myset.10) "\005\[BT\]\005 \002mychan\002 beállítva \001%msg.1%\001-re"
set black(say.hu.myset.11) "\005\[BT\]\005 \002%msg.1%\002 visszaállítva az eredeti értékére"
set black(say.hu.myset.12) "\005\[BT\]\005 \002%msg.1%\002 beállítása: \001%msg.8%\001"
set black(say.hu.myset.13) "\005\[BT\]\005 \002noteexpire\002 beállítva \002%msg.1%\002-re"
set black(say.hu.myset.14) "\005\[BT\]\005 4 színt kell megadnod a rendelkezésre álló színek közül. Elérhető színek: \002bold\002 \001underline\001 \0034red\003 \00312blue\003 \0033green\003 \0038yellow\003 \0037orange\003 \00310cyan\003 \00314grey\003 \0035brown\003 \0036purple\003 \00313pink\003 black"
set black(say.hu.myset.15) "\005\[BT\]\005 Az egyik megadott szín érvénytelen. Elérhető színek: \002bold\002 \001underline\001 \0034red\003 \00312blue\003 \0033green\003 \0038yellow\003 \0037orange\003 \00310cyan\003 \00314grey\003 \0035brown\003 \0036purple\003 \00313pink\003 black"
set black(say.hu.myset.16) "\005\[BT\]\005 \002colors\002 beállítva: \001%msg%\001"
set black(say.hu.myset.17) "\005\[BT\]\005 Meg kell adnod az elérhető karakterek egyikét. Elérhető karakterek: \001%msg%\001"
set black(say.hu.myset.18) "\005\[BT\]\005 \002mychar\002 beállítva: \001%msg.1%\001"
set black(say.hu.myset.19) "\005\[BT\]\005 Mostantól fogva fogadhatsz \002NOTE\002-okat."
set black(say.hu.myset.20) "\005\[BT\]\005 Mostantól nem fogadhatsz \002NOTE\002-okat."

################################# Troll ######################################

set black(say.hu.troll.5) "Mivel nem tudsz illedelmesen viselkedni, 24 órára a troll lista kerültél! :-)"
set black(say.hu.troll.6) "Jelenlegi troll-ok (az otthonról elszökött 7 évesek): \001%msg%\001"

#################################### dr #######################################

set black(say.hu.dr.5) "Dróna/malware fertőzés lehetséges"

#################################### vr #######################################

set black(say.hu.vr.5) "Mirc-ed fertőzött egy féreggel/vírussal, kérlek tisztítsd meg a számítógéped"

################################### Bot #######################################

set black(say.hu.bot.5) "Lehetséges BOT észlelve"
set black(say.hu.bot.6) "Unban-hoz: \002/msg %botnick% unbanme %chan% %msg%\002"
set black(say.hu.bot.7) "Gratulálok! A %chan%-on lévő bant eltávolították. Most már beléphetsz újra!"
set black(say.hu.bot.8) "Ha nem vagy BOT -> /msg %botnick% unbanme %chan%"

################################## b #####################################

set black(say.hu.b.5)  { "Te bannoltak!"
			 "A probléma megoldva"
			 "És így maradsz egy ideig állapotban ;-)"
			 "Köszönjük, hogy itt jártál!"
			 "Most éppen az állapotban való tartózkodásnak van az ideje :P Élvezd ;D"
			 "Nem tudod, hányan akarnának most a helyedben lenni... vagyis repülni ;))"
}
set black(say.hu.b.6) "\005\[BT\]\005 a bannod maximális ideje a te szintednek \0027 nap\002 (20160 perc)"
set black(say.hu.b.7) "\005\[BT\]\005 Hozzáadtál egy \[LOKÁLIS BAN\]-t a \002%chan%\002-hez \[ID: \001%msg.1%\001\]"
set black(say.hu.b.8) "\005\[BT\]\005 Hozzáadtál egy \[GLOBÁLIS BAN\]-t \[ID: \001%msg.1%\001\]"
set black(say.hu.b.9) "\005\[BT\]\005 Nincs engedélyezve a massban."
set black(say.hu.b.10) "\005\[BT\]\005 \002%msg.1%\002 nem egy érvényes banmask."
set black(say.hu.b.11) "\005\[BT\]\005 \002%msg.1%\002 nem egy érvényes regex kifejezés."
set black(say.hu.b.12) "\005\[BT\]\005 Hozzáadtál egy \[LOKÁLIS BAN\]-t a \002%chan%\002-hez \[ID: \001%msg.1%\001\] \[XONLY\]"
set black(say.hu.b.13) "\005\[BT\]\005 Hozzáadtál egy \[GLOBÁLIS BAN\]-t \[ID: \001%msg.1%\001\] regex-ként"
set black(say.hu.b.14) "\005\[BT\]\005 Hozzáadtál egy \[LOKÁLIS BAN\]-t a \002%chan%\002-hez \[ID: \001%msg.1%\001\] \[XONLY\]"

################################## n #####################################

set black(say.hu.n.5) "NICK-ul tau contine caractere nepermise, te rog schimba-l si revino"

################################## id ####################################

set black(say.hu.id.5) "Az IDENT-od nem megfelelő karaktereket tartalmaz, kérlek változtasd meg és térj vissza"

################################## Black #################################

set black(say.hu.black.5) "Itt többé nem vagy üdvözölve"

################################## w #####################################

set black(say.hu.w.5) { "Arra kérek, hogy ellenőrizd a viselkedésed"
			"Látjuk, hogy nincs még 7 évesed :P"
			"Miért vagy ilyen modortalan? Nézzük meg, érzed-e ezt :p"
			"A modortalan viselkedést nem nézzük el, azt kick-eljük ki :D"
			}
set black(say.hu.w.6) "Ez volt az utolsó figyelmeztetés. Legközelebb bannolva leszel!"

################################# spam ###################################

set black(say.hu.spam.5) "Elkapott a spam készítés közben, a #nohack csatornára lépéshez"

################################# k #######################################

set black(say.hu.k.1) "\005\[BT\]\005 Nem találtam egyetlen felhasználót sem a %chan% csatornán."
set black(say.hu.k.2) "\005\[BT\]\005 %msg.1% rendelkezik hozzáféréssel a %chan% csatornán"
set black(say.hu.k.5)  { "A nap szava: \"Kick\" :-)"
			 "Most láthatod igazi erejemet :p"
			 "Ellenőrzöm, hogy tudsz-e repülni :D"
			 "Ha tudsz kilépni, jó, ha nem, repülsz :P"
			 }

################################# Gag ######################################

set black(say.hu.gag.1) "- FIGYELEM - \002%gag%\002 még mindig el kell telnie \001%minute%\001 perceig a kitiltásnak. Élvezd a csend nyugtató hangját :-)"
set black(say.hu.gag.2) "\005\[BT\]\005 *** GAGLISTA VÉGE ***"
set black(say.hu.gag.3) "\005\[BT\]\005 \001%msg.1%\001 már rendelkezik Gag-gal a \002%chan%\002 csatornán."
set black(say.hu.gag.4) "\005\[BT\]\005 \001%msg.1%\001 már rendelkezik kitiltással a \002%chan%\002 csatornán."
set black(say.hu.gag.5) "- FIGYELEM - a \002%nick%\002 számára lejárt a Gag a \002%chan%\002 csatornán, most már írhatsz. Legközelebb figyelmesebb légy :-)"
set black(say.hu.gag.6) "N/A"
set black(say.hu.gag.7) "\005\[BT\]\005 A maximális Gag időtartam a szintedre \0027 nap\002 (\00120160 perc\001)."
set black(say.hu.gag.10) "\005\[BT\]\005 Nem írhatsz többé a \002%chan%\002 csatornára \001%time%\001-ig."
set black(say.hu.gag.11) "- FIGYELEM - \002%gagger%\002 nem írhat már a \002%chan%\002 csatornára \001%time%\001-ig."

################################# unGag #####################################

set black(say.hu.ungag.5) "\005\[BT\]\005 Nem találtam Gag-et \001%msg.1%\001-re a \002%chan%\002 csatornán."
set black(say.hu.ungag.6) "\005\[BT\]\005 Kivágtam a Gag-et \001%msg.1%\001-ről a \002%chan%\002 csatornán."
set black(say.hu.ungag.7) "\005\[BT\]\005 Most már írhatsz a %chan%-ra.."
set black(say.hu.ungag.8) "- FIGYELEM - %gagger% most már írhat a %chan%-ra.."

################################ bw #########################################

set black(say.hu.bw.5) "Nem kívánt felhasználó viselkedési problémák miatt"

############################### sb ##########################################

set black(say.hu.sb.1) "\005\[BT\]\005 Találtam \002%msg.1%\002 kitiltást (\001%msg.2%\001 globális, \001%msg.3%\001 helyi)"
set black(say.hu.sb.2) "\005\[BT\]\005 Nem találtam egyetlen kitiltást sem a \002%msg.1%\002 host-ra vonatkozóan."
set black(say.hu.sb.3) "\005\[BT\]\005 \002%msg.1%\002 ; \[ID: \001%msg.2%\001\] ; \[CSATORNA\] * ; \002%msg.3%\002 ; Hozzáadva: \002%msg.4%\002 ; Dátum: \002%msg.5%\002 ; Lejár: \002%msg.6%\002 ; Indok: %msg.7%"
set black(say.hu.sb.4) "\005\[BT\]\005 \002%msg.1%\002 ; \[ID: \001%msg.2%\001\] ; \[CSATORNA\] \002%chan%\002 ; \002%msg.3%\002 ; Hozzáadva: \002%msg.4%\002 ; Dátum: \002%msg.5%\002 ; Lejár: \002%msg.6%\002 ; Indok: %msg.7%"
set black(say.hu.sb.5) "\005\[BT\]\005 Túl sok találatot találtam \001(>10)\001, kérlek reformuláld a keresést."
set black(say.hu.sb.6) "\005\[BT\]\005 Találtam \002%msg.1%\002 helyi kitiltást"
set black(say.hu.sb.7) "\005\[BT\]\005 Ez írt a csatornán: \002%msg%\002"
set black(say.hu.sb.8) "\005\[BT\]\005 Ez a következő tilalom alatt álló csatornákon volt jelen: \002%msg%\002"
set black(say.hu.sb.9) "\005\[BT\]\005 \002%msg.1%\002 ; \[ID: \001%msg.2%\001\] ; \[CSATORNA\] \002%chan%\002 ; \002%msg.3%\002 ; Hozzáadva: \002%msg.4%\002 ; Dátum: \002%msg.5%\002 ; Lejár: %msg.6% ; Indok: %msg.7%"
set black(say.hu.sb.10) "\005\[BT\]\005 \002%msg.1%\002 ; \[ID: \001%msg.2%\001\] ; \[CSATORNA\] * ; \002%msg.3%\002 ; Hozzáadva: \002%msg.4%\002 ; Dátum: \002%msg.5%\002 ; Lejár: %msg.6% ; Indok: %msg.7%"
set black(say.hu.sb.11) "\005\[BT\]\005 Nem találtam egyetlen kitiltást sem az \002%msg.1%\002 azonosítóra vonatkozóan."
set black(say.hu.sb.12) "\005\[BT\]\005 \[\002KITILTÁS MEGJEGYZÉS\002\] %msg%"


############################### Stick ########################################

set black(say.hu.stick.5) "Sticky ban"

################################## BanList ##################################### 

set black(say.hu.banlist.1) "Permanens"
set black(say.hu.banlist.2) "\005\[BT\]\005 \[CSATORNA\]: * (\002%msg.1%\002 találat)"
set black(say.hu.banlist.3) "\005\[BT\]\005 A következő tiltások megtekintéséhez használd: \001%char%banlist global -next\001 (\002%counter%\002 tilalom maradt)"
set black(say.hu.banlist.4) "\005\[BT\]\005 *** BANLIST VÉGE ***"
set black(say.hu.banlist.5) "\005\[BT\]\005 \002%msg.2%\002 ; \[ID: %msg.1%\] ; \002%msg.3%\002 ; Hozzáadta: \002%msg.4%\002 ; Dátum: \002%msg.12%\002 ; Lejár: %msg.13% \002%msg.15%\002 \002%msg.17%\002 ; Indok: %msg.20%"
set black(say.hu.banlist.6) "\005\[BT\]\005 \[CSATORNA\]: %chan% (\002%msg.1%\002 találat)"
set black(say.hu.banlist.7) "\005\[BT\]\005 \[FELHASZNÁLÓ\]: %msg.2% (\002%msg.1%\002 találat)"
set black(say.hu.banlist.8) "\005\[BT\]\005 A következő tiltások megtekintéséhez használd: \001%char%banlist \002%user%\002 -next\001 (\002%counter%\002 tilalom maradt)"
set black(say.hu.banlist.9) "\005\[BT\]\005 \002%msg.2%\002 ; \[ID: %msg.1%\] ; \002%msg.3%\002 ; Dátum: \002%msg.4%\002 ; Lejár: %msg.12% \002%msg.13%\002 \002%msg.15%\002 ; Indok: %msg.16%"
set black(say.hu.banlist.10) "\005\[BT\]\005 A következő tiltások megtekintéséhez használd: \001%char%banlist all -next\001 (\002%counter%\002 tilalom maradt)"
set black(say.hu.banlist.11) "\005\[BT\]\005 \002%msg.2%\002 ; \[ID: %msg.1%\] ; \002%msg.3%\002 ; Hozzáadta: \002%msg.4%\002 ; Dátum: \002%msg.12%\002 ; Lejár: %msg.13% ; Indok: %msg.14%"
set black(say.hu.banlist.12) "\005\[BT\]\005 \002%msg.2%\002 ; \[ID: %msg.1%\] ; \002%msg.3%\002 ; Dátum: \002%msg.4%\002 ; Lejár: %msg.12% ; Indok: %msg.11%"
set black(say.hu.banlist.13) "SOHA"
set black(say.hu.banlist.14) "\005\[BT\]\005 A következő tiltások megtekintéséhez használd: \001%char%banlist %chan% all -next\001 (\002%counter%\002 tilalom maradt)"
set black(say.hu.banlist.15) "\005\[BT\]\005 A következő tiltások megtekintéséhez használd: \001%char%banlist %chan% other -next\001 (\002%counter%\002 tilalom maradt)"

############################### Status #######################################

set black(say.hu.status.1) "\005\[BT\]\005 Script verzió: \001%msg.1% %msg.2%\001 - Eggdrop verzió: \002%msg.3%\002 - TCL verzió: \001%msg.12%\003"
set black(say.hu.status.2) "\005\[BT\]\005 Indítás ideje: \002%msg%\002"
set black(say.hu.status.3) "\005\[BT\]\005 Online időtartam: \002%msg%\002"
set black(say.hu.status.4) "\005\[BT\]\005 Csatornák: \002%msg%\002"
set black(say.hu.status.5) "\005\[BT\]\005 Összes felhasználó száma: \001%msg.1%\001. Eggdrop tulajdonos: \002%msg.2%\002"

############################## upTime #######################################

set black(say.hu.uptime.2) "\005\[BT\]\005 Szerver uptime: \002%msg%\002"
set black(say.hu.uptime.3) "\005\[BT\]\005 Szerver csatlakoztatva: \002%msg%\002"

################################ i ##########################################

set black(say.hu.i.1) "\005\[BT\]\005 \001%msg.1%\001 már jelen van a \002%chan%\002 csatornán."
set black(say.hu.i.2) "\005\[BT\]\005 Meghívom \001%msg.1%\001-t a \002%chan%\002 csatornára."
set black(say.hu.i.7) "\001%nick%\001 meghívott téged a \002%chan%\002 csatornára, ha csatlakozni szeretnél, írd be: \002/join %chan%\002. Köszönöm!"

################################ Cycle #####################################

set black(say.hu.cycle.1) { "Tervezgetek egy kis kóborlást.."
                            "Gyerünk, mindenki join/part-oljon :-)"
                            "Legalább így kikerülhetem a 'négyzeteket' :p"
                            "Nem hiszem, hogy visszajövök, vagy mégis? :P"
                            }
set black(say.hu.cycle.2) "Visszatérek %msg.1% másodperc múlva.."

################################ Purge #####################################

set black(say.hu.purge.1) "\005\[BT\]\005 Kérlek, adj meg egy indokot.."

################################## Chat #####################################

set black(say.hu.chat.1) "\005\[BT\]\005 \002DCC CHAT\002 - Inicializálás..."
set black(say.hu.chat.2) "\005\[BT\]\005 Először be kell állítanod egy jelszót. Használd: /msg %botnick% pass \001<jelszavad>\001"

################################## Version ##################################

set black(say.hu.version.1) "\005\[BT\]\005 SCRIPT VERZIÓ: \002BlackTools %msg.1%\002 (Utolsó frissítés: %msg.8%) készítette: \002BLaCkShaDoW\002. További információkért ---= \002WwW.TclScripts.Net\002 vagy #TCL-HELP @ UNDERNET"

################################# ub ######################################

set black(say.hu.ub.1) "\005\[BT\]\005 Nem találtam olyan kitiltást, amely megfelelne \002%msg.1%\002-nek"
set black(say.hu.ub.2) "\005\[BT\]\005 Kitiltások eltávolítva: \001%msg.1%\001 (\002%msg.2%\002 találat) amelyek megfelelnek \002%msg.3%\003-nek"
set black(say.hu.ub.3) "\005\[BT\]\005 Nem találtam olyan \[GLOBÁLIS\] kitiltást, amely megfelelne \002%msg.1%\002-nek"
set black(say.hu.ub.4) "\005\[BT\]\005 \[GLOBÁLIS\] Kitiltások eltávolítva: \001%msg.1%\001 (\002%msg.2%\002 találat) amelyek megfelelnek \002%msg.3%\003-nek"
set black(say.hu.ub.5) "\005\[BT\]\005 Nincs elég jogosultságod a kitiltási lista törléséhez."
set black(say.hu.ub.6) "\005\[BT\]\005 Kitiltás eltávolítva a \002%chan%\002 csatorna kitiltási listájáról"
set black(say.hu.ub.7) "\005\[BT\]\005 \001%msg.1%\001 Kitiltások eltávolítva a \002%msg.2%\002 csatornákról, amelyekhez \002LINK\002 van"
set black(say.hu.ub.8) "\005\[BT\]\005 Nem találtam kitiltást az \001%msg.1%\001 azonosítójú \002%chan%\002 csatornán."
set black(say.hu.ub.9) "\005\[BT\]\005 Azonosítójú kitiltás eltávolítva a \002%chan%\002 csatornáról: \001%msg.3%\001"
set black(say.hu.ub.10) "\005\[BT\]\005 \[GLOBÁLIS\] Kitiltás eltávolítva az \002%msg.2%\002 azonosítójú kitiltásból"
set black(say.hu.ub.11) "\005\[BT\]\005 Nem találtam olyan \[GLOBÁLIS\] kitiltást, amely megfelelne az \002%msg.1%\002 azonosítójúnak"

################################## Mode ###################################

set black(say.hu.mode.6) "\005\[BT\]\005 A módot alkalmaztam: \001%msg.1%\001 a \002%chan%\002 csatornán."

################################### Set ###################################

set black(say.hu.set.1) "\005\[BT\]\005 Beállítottam: \001%msg.1%\001 \004%msg.set%\004"
set black(say.hu.set.2) "\005\[BT\]\005 Nem sikerült beállítani: \002%msg.1%\001 \004%msg.set%\004"
set black(say.hu.set.3) "\005\[BT\]\005 Már be van állítva: \001%msg.1%\001 \004%msg.set%\004 a \002%chan%\002 csatornán."
set black(say.hu.set.4) "\005\[BT\]\005 Már be van állítva: \001%msg.1%\002 a \002%chan%\002 csatornán."
set black(say.hu.set.5) "\005\[BT\]\005 Nem sikerült beállítani: \001%msg.1%\001 a \002%chan%\002 csatornán."
set black(say.hu.set.6) "\005\[BT\]\005 Beállítottam: \001%msg.1%\001 a \002%chan%\002 csatornán."
set black(say.hu.set.7) "\005\[BT\]\005 Nem sikerült beállítani: \002%msg.1%\001 \004%msg.set%\004 a \002%chan%\002 csatornán."
set black(say.hu.set.8) "\005\[BT\]\005 Beállítottam: \001%msg.1%\001 \004%msg.set%\004 a \002%chan%\002 csatornán."
set black(say.hu.set.9) "\005\[BT\]\005 Már be van állítva: \001%msg.1%\001 \004%msg.set%\004"
set black(say.hu.set.14) "\005\[BT\]\005 Érvénytelen beállítás."

#################################### unSet #################################

set black(say.hu.unset.1) "\005\[BT\]\005 Nincs ilyen beállítás: \002%msg.1%\002."
set black(say.hu.unset.2) "\005\[BT\]\005 Töröltem a beállítást: \001%msg.1%\001 a \002%chan%\002 csatornáról."
set black(say.hu.unset.3) "\005\[BT\]\005 \001%msg.1%\001 nincs beállítva a \002%chan%\002 csatornán."
set black(say.hu.unset.4) "\005\[BT\]\005 Töröltem az összes \001flag\001 típusú beállítást a \002%chan%\002 csatornáról."
set black(say.hu.unset.5) "\005\[BT\]\005 Töröltem az összes \001string\001 típusú beállítást a \002%chan%\002 csatornáról."

#################################### Timer ####################################

set black(say.hu.timer.1) "\005\[BT\]\005 Aktív időzítők listája:"
set black(say.hu.timer.2) "#\002%msg.1%\002 PID: \002%msg.2%\002 ; Aktiválási idő: \002%msg.3%\002 perc ; Folyamatnév: \002%msg.4%\002"
set black(say.hu.timer.3) "#\002%msg.1%\002 PID: \002%msg.2%\002 ; Aktiválási idő: \002%msg.3%\002 másodperc ; Folyamatnév: \"\002%msg.9%\002\""
set black(say.hu.timer.4) "\005\[BT\]\005 Időzítők listája véget ért."
set black(say.hu.timer.5) "\005\[BT\]\005 Az időzítő PID-jével \002%msg.1%\002 befejeződött."
set black(say.hu.timer.6) "\005\[BT\]\005 Nincs időzítő PID-vel \002%msg.1%\002"
set black(say.hu.timer.7) "\005\[BT\]\005 Elindítottam az időzítőt PID-jével \002%msg.1%\002"
set black(say.hu.timer.8) "\005\[BT\]\005 Egy azonos PID-jű időzítő már fut."

#################################### Ignore ################################

set black(say.hu.ignore.2) "\005\[BT\]\005 Nem adhatsz ignore-t, mert a host adatai egy olyan felhasználóhoz tartoznak, aki magasabb jogosultsággal rendelkezik, mint te."
set black(say.hu.ignore.3) "\005\[BT\]\005 Nincsenek megadott ignorálások."
set black(say.hu.ignore.4) "\005\[BT\]\005 Host: \001%msg.1%\001 | Hozzáadva: \002%msg.2%\002 | Ok: \002%msg.6%\002 | Lejár: \001%msg.3%\001"
set black(say.hu.ignore.5) "\005\[BT\]\005 \002%msg.1%\002 már ignorálva van."
set black(say.hu.ignore.6) "\005\[BT\]\005 Ignorálás hozzáadva a \001%msg.1%\001 hosthoz: \002%msg.7%\002, \001%msg.2%\001 időtartamra."
set black(say.hu.ignore.8) "\005\[BT\]\005 \002%msg.1%\002 nincs ignorálva."
set black(say.hu.ignore.9) "\005\[BT\]\005 Ignorálás eltávolítva a \002%msg.1%\002 hostról."

################################## Show ####################################

set black(say.hu.show.4) "\005\[BT\]\005 \002%msg.1%\002 beállítva: \001%msg.2%\001. Következő időzítőig: \001%msg.3%\001 perc"
set black(say.hu.show.5) "\005\[BT\]\005 Nem sikerült információkat szerezni a \002%msg.1%\002-ről."
set black(say.hu.show.6) "\005\[BT\]\005 \002%msg.1%\002 beállítva: \001%msg.8%\001"
set black(say.hu.show.7) "\005\[BT\]\005 A \001%msg.1%\001 flag aktív a \002%chan%\002 csatornán."
set black(say.hu.show.8) "\005\[BT\]\005 A \001%msg.1%\001 flag inaktív a \002%chan%\002 csatornán."

################################### Rehash #####################################

set black(say.hu.rehash.1) "\005\[BT\]\005 Scriptek/beállítások újratöltése...."

################################### Restart ####################################

set black(say.hu.restart.1) "\005\[BT\]\005 Rendszer újraindítása. Hamarosan visszatérek.."

################################### Save #######################################

set black(say.hu.save.1) "\005\[BT\]\005 Fájlok mentése.."

################################### jump #######################################

set black(say.hu.jump.1) "\005\[BT\]\005 Ugrás a következő szerverre: %msg%"

################################### Die #######################################

set black(say.hu.die.1) "\005\[BT\]\005 Öngyilkos lettem.."
set black(say.hu.die.2) "\005\[BT\]\005 ** BUMM ** Ez a BlackTools eggdrop leállt." 

################################### Nick #####################################

set black(say.hu.nick.1) "\005\[BT\]\005 Nicknevem megváltozott erre: \002%msg.1%\002 (állandó beállítás)"
set black(say.hu.nick.2) "\005\[BT\]\005 Használd a \"nick <új nick>\" parancsot"
set black(say.hu.nick.3) "\005\[BT\]\005 Figyelem! A nick csak a következő újraindításig változott meg. (ellenőrizd, hogy van-e \"set nick\" beállítás az eggdrop konfigurációjában)"
set black(say.hu.nick.4) "\005\[BT\]\005 Nicknevem átmenetileg megváltozott erre: \002%msg.1%\002"

################################### AddChan ##################################

set black(say.hu.addchan.2) "\005\[BT\]\005 \002%msg.1%\002 már szerepel a csatornalistámban."
set black(say.hu.addchan.3) "\005\[BT\]\005 Hozzáadtam \002%msg.1%\002-t a csatornalistámhoz."

################################### DelChan ##################################

set black(say.hu.delchan.1) "A \001%chan%\001 csatornát \002%hand%\002 törölte ezzel az indokkal: \001%reason%\001"
set black(say.hu.delchan.2) "\005\[BT\]\005 A \002%msg.1%\002 csatorna nincs az emlékeimben."
set black(say.hu.delchan.3) "\005\[BT\]\005 Töröltem a \002%msg.1%\002-t a csatornalistámból."
set black(say.hu.delchan.5) "\005\[BT\]\005 Nem törölheted a \002%msg.1%\002 csatornát, mert \001HOMECHAN\001 rangja van."

################################### Suspend ##################################

set black(say.hu.suspend.2) "A \001%chan%\001 csatornát \002%hand%\002 felfüggesztette ezzel az indokkal: \001%reason%\001"
set black(say.hu.suspend.3) "\005\[BT\]\005 A \002%msg.1%\002 csatorna már felfüggesztve van."
set black(say.hu.suspend.4) "\005\[BT\]\005 Felfüggesztettem a \002%msg.1%\002 csatornát."

################################### unsuspend ##################################

set black(say.hu.unsuspend.3) "\005\[BT\]\005 A \002%msg.1%\002 csatorna nincs felfüggesztve."
set black(say.hu.unsuspend.4) "\005\[BT\]\005 Feloldottam a felfüggesztést a \002%msg.1%\002 csatornánál."

################################### add #########################################

set black(say.hu.add.5) "\005\[BT\]\005 Még létezik egy felhasználó az adatbázisomban ugyanazzal a hosttal. Ez a felhasználó: \002%msg.1%\002."
set black(say.hu.add.6) "\005\[BT\]\005 Nem adhatsz \002%msg.1%\002 jogosultságot, mert a felhasználó jogosultsága magasabb, mint a tiéd."
set black(say.hu.add.7) "\005\[BT\]\005 Nem adhatsz \002%msg.2%\002 jogosultságot, mert ez megegyezik a jogosultságoddal."
set black(say.hu.add.8) "\005\[BT\]\005 Nem adhatsz \002%msg.3%\002 jogosultságot, mert ez megegyezik a jogosultságoddal."
set black(say.hu.add.10) "\005\[BT\]\005 Hozzáadtam a felhasználót: \001%msg.1%\001 ezzel a hosttal: \002%msg.2%\002."
set black(say.hu.add.17) "\005\[BT\]\005 A \001%msg.1%\001 felhasználónév túl hosszú. Rövidítve: \002%msg.2%\002"
set black(say.hu.add.18) "\005\[BT\]\005 Kérlek, használj érvényes felhasználónevet, amely csak alfanumerikus karaktereket tartalmaz."
set black(say.hu.add.19) "\005\[BT\]\005 \001%msg.1%\001 \002%msg.2%\002 jogosultsággal rendelkezik a \002%chan%\002 csatornán."
set black(say.hu.add.20) "\005\[BT\]\005 \001%msg.1%\001 \002%msg.2%\002 jogosultsággal rendelkezik."

################################### DelAcc #########################################

set black(say.hu.delacc.1) "\005\[BT\]\005 Töröltem a jogosultságot \001%msg.1%\001 felhasználónak a \002%chan%\002 csatornán."
set black(say.hu.delacc.2) "\005\[BT\]\005 Töröltem a \002OWNER\002 jogosultságot \001%msg.1%\001 felhasználónak."
set black(say.hu.delacc.3) "\005\[BT\]\005 Nincs \002OWNER\002 jogosultsága."
set black(say.hu.delacc.4) "\005\[BT\]\005 Töröltem a \002MASTER\002 jogosultságot \001%msg.1%\001 felhasználónak."

#################################### Del ###########################################

set black(say.hu.del.1) "\005\[BT\]\005 Töröltem \002%msg.1%\002-t az emlékeimből."
set black(say.hu.del.2) "\005\[BT\]\005 Nem törölheted a \001%msg.1%\001 felhasználót, mert jogosultsága van más csatornákon. Használd: \002delacc %msg.1%\002"

################################### AddHost ########################################

set black(say.hu.addhost.1) "\005\[BT\]\005 A \002%msg.1%\002 felhasználónak már létezik \001%msg.2%\001 hostja az adatbázisomban."
set black(say.hu.addhost.2) "\005\[BT\]\005 Hozzáadtam a \002%msg.1%\002 felhasználóhoz a következő hostot: \001%msg.2%\001"

################################### DelHost ########################################

set black(say.hu.delhost.1) "\005\[BT\]\005 A \002%msg.1%\002 felhasználónak nincs \001%msg.2%\001 hostja az adatbázisomban."
set black(say.hu.delhost.2) "\005\[BT\]\005 Töröltem a \002%msg.1%\002 felhasználó \001%msg.2%\001 hostját."

################################### chUser ########################################

set black(say.hu.chuser.1) "\005\[BT\]\005 Megváltoztattam a felhasználót \001%msg.1%\001 erre: \002%msg.2%\002."
set black(say.hu.chuser.2) "\005\[BT\]\005 Megváltoztattad a kezeledet erre: \002%msg.1%\002."
set black(say.hu.chuser.3) "\005\[BT\]\005 Már létezik egy felhasználó ugyanazzal a kezelt névvel. Kérlek, válassz másikat."

################################### UserList ########################################

set black(say.hu.userlist.1) "\005\[BT\]\005 %msg%"
set black(say.hu.userlist.2) "\005\[BT\]\005 Emlékezetemben van \001%msg.1%\001 felhasználó a \002%chan%\002 csatornán:"

#################################### Channels #####################################

set black(say.hu.channels.1) "\005\[BT\]\005 Emlékezetemben van %msg.1% csatorna.."
set black(say.hu.channels.2) "%msg%"
set black(say.hu.channels.3) "\002OK\002"
set black(say.hu.channels.4) "\002Nem csatlakozva\002"
set black(say.hu.channels.5) "\002Felfüggesztve\002"
set black(say.hu.channels.6) "\002Automatikus felfüggesztve\002"
set black(say.hu.channels.7) "\002Felhasználók\002"
set black(say.hu.channels.8) "\002Láthatatlan\002"

#################################### Info ########################################

set black(say.hu.info.1) "\005\[BT\]\005 \[FELHASZNÁLÓ\] \002%msg.1%\002 ACCESS szint: \002%msg.8%\002"
set black(say.hu.info.2) "\005\[BT\]\005 \[CSATORNA\] \002%msg.1%\002 -- AUTOMÓD: \002%msg.2%\002 -- STATISZTIKÁK: \001%char%stats %msg.3%\001"
set black(say.hu.info.3) "\005\[BT\]\005 \[Üdvözlő üzenet\] %msg%"
set black(say.hu.info.4) "\005\[BT\]\005 \[Utolsó módosítás\] \002%msg.1%\002 dátum: \002%msg.8%\002"
set black(say.hu.info.5) "\005\[BT\]\005 \[Utolsó online láthatóság\] \002%msg.1%\002"
set black(say.hu.info.6) "\005\[BT\]\005 \[Host-ok\] %msg%"
set black(say.hu.info.7) "\005\[BT\]\005 ** FELFÜGGESZTVE ** - Lejár: \001%msg.1% %msg.2% %msg.3%\001 (Szint: \002%msg.4%\002) - Indok: \002%msg.10%\002"
set black(say.hu.info.8) "\005\[BT\]\005 \[Jogosultsággal rendelkező csatornák\] %msg%."
set black(say.hu.info.9) "\005\[BT\]\005 ** GLOBÁLISAN FELFÜGGESZTVE ** - Lejár: \001%msg.1% %msg.2% %msg.3%\001 (Szint: \002%msg.4%\002) - Indok: \002%msg.10%\002"
set black(say.hu.info.10) "\005\[BT\]\005 \[Utolsó online láthatóság\] \001%msg.1%\001 a \002%msg.2%\002 csatornán."
set black(say.hu.info.11) "\005\[BT\]\005 \[FELHASZNÁLÓ\] %msg.1%"
set black(say.hu.info.12) "\005\[BT\]\005 Találtam (\001%msg.1%\001) bejegyzést: \002%msg.8%\002."
set black(say.hu.info.13) "\005\[BT\]\005 Találtam (\001%msg.1%\001) bejegyzést. Kérlek, ellenőrizd a keresést újra." 
set black(say.hu.info.14) "\005\[BT\]\005 A helyes információkért használd: \001%char%info <felhasználó>\001"
set black(say.hu.info.15) "\005\[BT\]\005 \[CSATORNA\] \002%msg.1%\002 -- módok: \002%msg.8%\002"
set black(say.hu.info.16) "\005\[BT\]\005 \[MANAGER\] %msg%"
set black(say.hu.info.17) "\005\[BT\]\005 \[TÉMA\] %msg%"
set black(say.hu.info.18) "\005\[BT\]\005 \[URL\] %msg%"
set black(say.hu.info.19) "\005\[BT\]\005 \[ÁLLAPOT\] %msg%"
set black(say.hu.info.20) "\005\[BT\]\005 \[REGISZTRÁLT\] \001%msg.1%\001 (\002%msg.8%\002)"
set black(say.hu.info.21) "\005\[BT\]\005 \[STATISZTIKÁK\] belépések: \002%msg.1%\002 | felhasználók: \002%msg.2%\002 (%msg.3% jogosultsággal) | kitiltások: \002%msg.4%\002 | láttam: \002%msg.5%\002"
set black(say.hu.info.22) "\002FELFÜGGESZTVE\002"
set black(say.hu.info.23) "\002NINCS A CSATORNÁN\002"
set black(say.hu.info.24) "\002OP NÉLKÜL\002"
set black(say.hu.info.25) "\005\[BT\]\005 \[CSATORNA\] \002%msg.1%\002 -- AUTOMÓD: \002%msg.2%\002 -- Zászlók: \002%msg.3%\002 -- STATISZTIKÁK: \001%char%aktiv %msg.4%\001"
set black(say.hu.info.26) "\002AUTOMATIKUS FELFÜGGESZTVE\002 -- Indok: Nem tudtam belépni, a csatorna telített (+l)"
set black(say.hu.info.27) "\002AUTOMATIKUS FELFÜGGESZTVE\002 -- Indok: Nem tudtam belépni, a csatorna jelszóval védett (+k)"
set black(say.hu.info.28) "\002AUTOMATIKUS FELFÜGGESZTVE\002 -- Indok: Nem tudtam belépni, a csatorna csak meghívással (+i)"
set black(say.hu.info.29) "\002AUTOMATIKUS FELFÜGGESZTVE\002 -- Indok: Nem tudtam belépni, kitiltásom van a csatornán (+b)"
set black(say.hu.info.30) "\002NINCS A CSATORNÁN\002 -- Indok: Nem tudok belépni, a csatorna tele van (+l)"
set black(say.hu.info.31) "\002NINCS A CSATORNÁN\002 -- Indok: Nem tudok belépni, a csatorna jelszóval védett (+k)"
set black(say.hu.info.32) "\002NINCS A CSATORNÁN\002 -- Indok: Nem tudok belépni, a csatorna csak meghívással (+i)"
set black(say.hu.info.33) "\002NINCS A CSATORNÁN\002 -- Indok: Nem tudok belépni, kitiltásom van a csatornán (+b)"
set black(say.hu.info.34) "\002NINCS A CSATORNÁN\002 -- Indok: Nem tudok belépni, módosítási korlátozás van (+r)"
set black(say.hu.info.35) "\002AUTOMATIKUS FELFÜGGESZTVE\002 -- Indok: Nem tudok belépni, módosítási korlátozás van (+r)"
set black(say.hu.info.36) "\005\[BT\]\005 \[Beállítások\] %msg%"
set black(say.hu.info.37) "\[BT\] \[Feketelista\] %msg%"

################################## s #############################################

set black(say.hu.s.1) "\005\[BT\]\005 \001%msg.1%\001 már felfüggesztve a \002%chan%\002 csatornán."
set black(say.hu.s.2) "\005\[BT\]\005 \001%msg.1%\001 jogosultsága felfüggesztve a \002%chan%\002 csatornán."
set black(say.hu.s.3) "Nem lett megadva ok."
set black(say.hu.s.4) "\005\[BT\]\005 \001%msg.1%\001 már felfüggesztve egy felhasználó által, aki magasabb szintű, mint te."
set black(say.hu.s.5) "\005\[BT\]\005 \001%msg.1%\001 jogosultsága már \002GLOBÁLISAN\002 felfüggesztve."

################################## us ##############################################

set black(say.hu.us.1) "\005\[BT\]\005 \001%msg.1%\001 nincs felfüggesztve a \002%chan%\002 csatornán."
set black(say.hu.us.2) "\005\[BT\]\005 Kijelentkeztem \001%msg.1%\001 felfüggesztését a \002%chan%\002 csatornán."
set black(say.hu.us.3) "\005\[BT\]\005 Kijelentkeztem \002%msg.1%\002 globális felfüggesztését."
set black(say.hu.us.4) "\005\[BT\]\005 \002%msg.1%\002 felhasználónak már felfüggesztése van egy magasabb szintű felhasználó által."

################################## r ##############################################

set black(say.hu.r.1) {	"A témakört frissítem...."
			"A témakört újratöltöm...."
				}
set black(say.hu.r.2) "\005\[BT\]\005 Nem tudom végrehajtani. Nincs megadva témakör."

################################## Auto ##########################################

set black(say.hu.auto.6) "\005\[BT\]\005 Globálisan beállítottam az automatikus operátorként (+o) kezelést."
set black(say.hu.auto.7) "\005\[BT\]\005 Globálisan beállítottam az automatikus voice-ként (+v) kezelést."
set black(say.hu.auto.8) "\005\[BT\]\005 Beállítottam az automatikus operátorként (+o) kezelést a \002%chan%\002 csatornán."
set black(say.hu.auto.9) "\005\[BT\]\005 Beállítottam az automatikus voice-ként (+v) kezelést a \002%chan%\002 csatornán."
set black(say.hu.auto.10) "\005\[BT\]\005 Beállítottam az automatikus operátort (+o) \001%msg.1%\001 felhasználónak a \002%chan%\002 csatornán."
set black(say.hu.auto.11) "\005\[BT\]\005 Beállítottam az automatikus voice-ot (+v) \001%msg.1%\001 felhasználónak a \002%chan%\002 csatornán."
set black(say.hu.auto.12) "\005\[BT\]\005 Globálisan töröltem az automatikus operátorként (+o) kezelést \002%msg.1%\002 felhasználónak."
set black(say.hu.auto.13) "\005\[BT\]\005 Globálisan töröltem az automatikus voice-ként (+v) kezelést \002%msg.1%\002 felhasználónak."
set black(say.hu.auto.14) "\005\[BT\]\005 Töröltem az automatikus operátort (+o) a globális beállításokból."
set black(say.hu.auto.15) "\005\[BT\]\005 Töröltem az automatikus voice-ot (+v) a globális beállításokból."
set black(say.hu.auto.16) "\005\[BT\]\005 Töröltem az automatikus operátort (+o) a \002%chan%\002 csatornáról."
set black(say.hu.auto.17) "\005\[BT\]\005 Töröltem az automatikus voice-ot (+v) a \002%chan%\002 csatornáról."
set black(say.hu.auto.18) "\005\[BT\]\005 Töröltem az automatikus operátort (+o) \001%msg.1%\001 felhasználónak a \002%chan%\002 csatornáról."
set black(say.hu.auto.19) "\005\[BT\]\005 Töröltem az automatikus voice-ot (+v) \001%msg.1%\001 felhasználónak a \002%chan%\002 csatornáról."
set black(say.hu.auto.20) "\005\[BT\]\005 Töröltem az automatikus operátort (+o) globálisan \002%msg.1%\002 felhasználónak."
set black(say.hu.auto.21) "\005\[BT\]\005 Töröltem az automatikus voice-ot (+v) globálisan \002%msg.1%\002 felhasználónak."

################################# Login #########################################

set black(say.hu.login.1) "\005\[BT\]\005 Belépek a \002%msg.1%\002 rendszerbe.."
set black(say.hu.login.2) "\005\[BT\]\005 Már be vagyok lépve a \002%msg.1%\002 rendszerbe.."
set black(say.hu.login.3) "\005\[BT\]\005 Nem sikerült belépni. Kérlek ellenőrizd a belépési adatokat, vagy hogy az adott chanserv rendelkezésre áll-e."
set black(say.hu.login.4) "\005\[BT\]\005 Sikertelen belépés (Helytelen jelszó)"
set black(say.hu.login.5) "\005\[BT\]\005 Sikeres belépés"
set black(say.hu.login.6) "\005\[BT\]\005 Sikertelen belépés (a maximális belépési próbák száma túllépve)"
set black(say.hu.login.7) "\005\[BT\]\005 Sikertelen belépés (nincs megadva felhasználónév)"
set black(say.hu.login.8) "\005\[BT\]\005 Sikertelen belépés (érvénytelen felhasználónév)"
set black(say.hu.login.9) "\005\[BT\]\005 Azonosítás a NICKSERV felé..."
set black(say.hu.login.10) "\005\[BT\]\005 Sikeres azonosítás a NICKSERV-nél"
set black(say.hu.login.11) "\005\[BT\]\005 Sikertelen azonosítás a NICKSERV-nél (Helytelen jelszó)"
set black(say.hu.login.13) "Helytelen jelszó"
set black(say.hu.login.15) "A felhasználónév már regisztrálva van egy másik személynél"
set black(say.hu.login.16) "\005\[BT\]\005 Sikertelen azonosítás a NICKSERV-nél (a felhasználónév már regisztrálva van)"

################################# Enable #####################################

set black(say.hu.enable.1) "\005\[BT\]\005 Engedélyeztem a \001%msg.1%\001 parancsot a \002%chan%\002 csatornán."
set black(say.hu.enable.2) "\005\[BT\]\005 A \001%msg.1%\001 parancs már engedélyezve van a \002%chan%\002 csatornán."
set black(say.hu.enable.3) "\005\[BT\]\005 A \002%msg.1%\002 parancs nem létezik."
set black(say.hu.enable.4) "\005\[BT\]\005 Engedélyeztem a \001%msg.1%\001 parancsot \002%msg.2%\002 felhasználónak a \002%chan%\002 csatornán."
set black(say.hu.enable.5) "\005\[BT\]\005 A \001%msg.1%\001 parancs már engedélyezve van \002%msg.2%\002 felhasználónak a \002%chan%\002 csatornán."
set black(say.hu.enable.6) "\005\[BT\]\005 Engedélyeztem a \001%msg.1%\001 parancsot \002GLOBÁLIS\002 módban."
set black(say.hu.enable.7) "\005\[BT\]\005 A \001%msg.1%\001 parancs már engedélyezve van \002GLOBÁLIS\002 módban."
set black(say.hu.enable.8) "\005\[BT\]\005 FIGYELEM, a \001%msg.1%\001 parancs le van tiltva \002GLOBÁLIS\002 módban."
set black(say.hu.enable.9) "\005\[BT\]\005 Nem hajtható végre, a \002%msg.1%\002 parancs le van tiltva egy magasabb szintű felhasználó által."

################################# Disable #####################################

set black(say.hu.disable.1) "\005\[BT\]\005 Letiltottam a \001%msg.1%\001 parancsot a \002%chan%\002 csatornán"
set black(say.hu.disable.2) "\005\[BT\]\005 A \001%msg.1%\001 parancs már letiltva van a \002%chan%\002 csatornán"
set black(say.hu.disable.3) "\005\[BT\]\005 A \001%msg.1%\001 parancs nem létezik."
set black(say.hu.disable.4) "\005\[BT\]\005 Letiltottam a \001%msg.1%\001 parancsot \002%msg.2%\002 részére a \002%chan%\002 csatornán"
set black(say.hu.disable.5) "\005\[BT\]\005 A \001%msg.1%\001 parancs már letiltva van \002%msg.2%\002 részére a \002%chan%\002 csatornán"
set black(say.hu.disable.6) "\005\[BT\]\005 Letiltottam a \001%msg.1%\001 parancsot \002GLOBAL\002"
set black(say.hu.disable.7) "\005\[BT\]\005 A \001%msg.1%\001 parancs már letiltva van \002GLOBAL\002"
set black(say.hu.disable.8) "\005\[BT\]\005 Nem tilthatod le a \002%msg.1%\002 parancsot"

################################### Module #######################################

set black(say.hu.hmodule.1) "%msg%"
set black(say.hu.hmodule.3) "Minden modul kézikönyvének megtekintéséhez használd a következőt: \001%char%man <modul>\001 | \002%botnick% man <modul>\002"

####################################### h ########################################

set black(say.hu.h.1) "\005\[BT\]\005 HOZZÁFÉRÉSI SZINT \002-= %msg% =-\002"
set black(say.hu.h.2) "\005\[BT\]\005 \002%char%h\002 cmds ; \002%char%h\002 ban ; \002%char%h\002 add ; \002%char%h\002 chaninfo ; \002%char%h\002 BTinfo ; \002%char%h\002 module ; \002%char%h\002 egg ; \002%char%h\002 owner"
set black(say.hu.h.3) "\005\[BT\]\005 HOZZÁFÉRÉSI SZINT \002-= %msg% =-\002"
set black(say.hu.h.4) "\005\[BT\]\005 \002%char%h\002 cmds ; \002%char%h\002 ban ; \002%char%h\002 add ; \002%char%h\002 chaninfo ; \002%char%h\002 BTinfo ; \002%char%h\002 module ; \002%char%h\002 egg ; \002%char%h\002 owner"
set black(say.hu.h.5) "\005\[BT\]\005 HOZZÁFÉRÉSI SZINT \002-= %msg% =-\002"
set black(say.hu.h.6) "\005\[BT\]\005 \002%char%h\002 cmds ; \002%char%h\002 ban ; \002%char%h\002 module"
set black(say.hu.h.7) "\005\[BT\]\005 HOZZÁFÉRÉSI SZINT \002-= %msg% =-\002"
set black(say.hu.h.8) "\005\[BT\]\005 \002%char%h\002 cmds ; \002%char%h\002 ban ; \002%char%h\002 module"
set black(say.hu.h.11) "\005\[BT\]\005 HOZZÁFÉRÉSI SZINT \002-= %msg% =-\002"
set black(say.hu.h.12) "\005\[BT\]\005 \002%char%h\002 cmds ; \002%char%h\002 ban ; \002%char%h\002 add ; \002%char%h\002 module"
set black(say.hu.h.13) "\005\[BT\]\005 HOZZÁFÉRÉSI SZINT \002-= %msg% =-\002"
set black(say.hu.h.14) "\005\[BT\]\005 \002%char%h\002 cmds ; \002%char%h\002 ban ; \002%char%h\002 add ; \002%char%h\002 chaninfo ; \002%char%h\002 BTinfo ; \002%char%h\002 module"
set black(say.hu.h.15) "\005\[BT\]\005 %msg%"
set black(say.hu.h.16) "\005\[BT\]\005 Kérlek várj \001%msg.1%\001 másodpercet, mielőtt végrehajtanál egy másik \002%char%h\002 típusú parancsot. Köszönöm!"
set black(say.hu.h.17) "\005\[BT\]\005 \002h\002 cmds ; \002h\002 ban ; \002h\002 add ; \002h\002 chaninfo ; \002h\002 BTinfo ; \002h\002 module ; \002h\002 egg ; \002h\002 owner"
set black(say.hu.h.18) "\005\[BT\]\005 \002h\002 cmds ; \002h\002 ban ; \002h\002 add ; \002h\002 chaninfo ; \002h\002 BTinfo ; \002h\002 module"
set black(say.hu.h.19) "\005\[BT\]\005 \002h\002 cmds ; \002h\002 ban ; \002h\002 add ; \002h\002 module"
set black(say.hu.h.20) "\005\[BT\]\005 \002h\002 cmds ; \002h\002 ban ; \002h\002 module"
set black(say.hu.h.21) "\005\[BT\]\005 %botnick% \002h\002 cmds ; %botnick% \002h\002 ban ; %botnick% \002h\002 add ; %botnick% \002h\002 chaninfo ; %botnick% \002h\002 BTinfo ; %botnick% \002h\002 module ; %botnick% \002h\002 egg ; %botnick% \002h\002 owner"
set black(say.hu.h.22) "\005\[BT\]\005 %botnick% \002h\002 cmds ; %botnick% \002h\002 ban ; %botnick% \002h\002 add ; %botnick% \002h\002 chaninfo ; %botnick% \002h\002 BTinfo ; %botnick% \002h\002 module"
set black(say.hu.h.23) "\005\[BT\]\005 %botnick% \002h\002 cmds ; %botnick% \002h\002 ban ; %botnick% \002h\002 add ; %botnick% \002h\002 module ; %botnick% \002h\002 master"

set black(say.hu.hcommand.1) "\005\[BT\]\005 Az egyes parancsok leírásának megtekintéséhez használd: \001%char%man <parancs>\001. A parancsok \002DCC\002-ben való használatához pedig: \001.bt <parancs> \[#csatorna\] \[argumentumok\]\001"
set black(say.hu.hcommand.2) "\005\[BT\]\005 Az egyes parancsok leírásának megtekintéséhez használd: \001%botnick% man <parancs>\001. A parancsok \002DCC\002-ben való használatához pedig: \001.bt <parancs> \[#csatorna\] \[argumentumok\]\001"
set black(say.hu.hcommand.3) "\005\[BT\]\005 Az egyes parancsok leírásának megtekintéséhez használd: \001man <parancs>\001. A parancsok \002DCC\002-ben való használatához pedig: \001.bt <parancs> \[#csatorna\] \[argumentumok\]\001"
set black(say.hu.hcommand.4) "\005\[BT\]\005 A különböző beállítások leírásának megtekintéséhez használd: \001%char%man <beállítás>\001"
set black(say.hu.hcommand.5) "\005\[BT\]\005 A különböző beállítások leírásának megtekintéséhez használd: \001%botnick% man <beállítás>\001"
set black(say.hu.hcommand.6) "\005\[BT\]\005 A különböző beállítások leírásának megtekintéséhez használd: \001man <beállítás>\001"
set black(say.hu.hcommand.7) "\005\[BT\]\005 Az egyes modulok leírásának megtekintéséhez használd: \001%char%man <modul>\001"
set black(say.hu.hcommand.8) "\005\[BT\]\005 Az egyes modulok leírásának megtekintéséhez használd: \001%botnick% man <modul>\001"
set black(say.hu.hcommand.9) "\005\[BT\]\005 Az egyes modulok leírásának megtekintéséhez használd: \001man <modul>\001"

set black(say.hu.cmdsvoice) "v \[#csatorna\] \[nick\] ; man <parancs> ; verzió ; i \[#csatorna\] <nick> ; seen \[#csatorna\] <nick|ip|host> ; for <botnick1>,<botnick2> <parancs> \[opció\] ; activ \[#csatorna\] <nick> ; myset <opció> \[leírás\] \[megjelenítés|alaphelyzet\] ; report \[#csatorna\] <nick> ; h \[#csatorna\] \[kategória\]"
set black(say.hu.cmdsop) "o \[#csatorna\] \[nick\] ; v \[#csatorna\] \[nick\] ; ho \[#csatorna\] \[nick\] ; man <parancs> ; verzió ; mode \[#csatorna\] <+/-mód> ; cycle \[#csatorna\] \[időtartam|indok\] ; i \[#csatorna\] <nick> ; seen \[#csatorna\] <nick|ip|host> ; for <botnick1>,<botnick2> <parancs> \[opció\] ; activ \[#csatorna\] <nick> ; t \[#csatorna\] <szöveg> ; myset <opció> \[leírás\] \[megjelenítés|alaphelyzet\] ; h \[#csatorna\] \[kategória\] ; r \[#csatorna\] ; omsg \[#csatorna|mind\] <szöveg>"
set black(say.hu.cmdadmin) "o \[#csatorna\] \[nick\] ; v \[#csatorna\] \[nick\] ; ho \[#csatorna\] \[nick\] ; man <parancs> ; verzió ; mode \[#csatorna\] <+/-mód> ; cycle \[#csatorna\] \[időtartam|indok\] ; say \[#csatorna\] <szöveg> ; act \[#csatorna\] <szöveg> ; i \[#csatorna\] <nick> ; seen \[#csatorna\] <nick|ip|host> ; for <botnick1>,<botnick2> <parancs> \[opció\] ; activ \[#csatorna\] <nick> ; t \[#csatorna\] <szöveg> ; myset <opció> \[leírás\] \[megjelenítés|alaphelyzet\] ; h \[#csatorna\] \[kategória\] ; r \[#csatorna\] ; omsg \[#csatorna|mind\] <szöveg>"
set black(say.hu.cmdmanager) "o \[#csatorna\] \[nick\] ; v \[#csatorna\] \[nick\] ; ho \[#csatorna\] \[nick\] ; man <parancs> ; verzió ; mode \[#csatorna\] <+/-mód> ; cycle \[#csatorna\] \[időtartam|indok\] ; say \[#csatorna\] <szöveg> ; act \[#csatorna\] <szöveg> ; i \[#csatorna\] <nick> ; seen \[#csatorna\] <nick|ip|host> ; for <botnick1>,<botnick2> <parancs> \[opció\] ; activ \[#csatorna\] <nick> ; t \[#csatorna\] <szöveg> ; myset <opció> \[leírás\] \[megjelenítés|alaphelyzet\] ; h \[#csatorna\] \[kategória\] ; r \[#csatorna\] ; omsg \[#csatorna|mind\] <szöveg>"
set black(say.hu.cmdbossowner) "o \[#csatorna\] \[nick\] ; v \[#csatorna\] \[nick\] ; ho \[#csatorna\] \[nick\] ; man <parancs> ; verzió ; mode \[#csatorna\] <+/-mód> ; cycle \[#csatorna\] \[időtartam|indok\] ; say \[#csatorna\] <szöveg> ; act \[#csatorna\] <szöveg> ; seen \[#csatorna|mind\] <nick|ip|host> ; for <botnick1>,<botnick2> <parancs> \[opció\] ; broadcast <szöveg> ; i \[#csatorna\] <nick> ; activ \[#csatorna\] <nick> ; t \[#csatorna\] <szöveg> ; myset <opció> \[leírás\] \[megjelenítés|alaphelyzet\] ; h \[#csatorna\] \[kategória\] ; r \[#csatorna\] ; msg <nick> <szöveg> ; omsg \[#csatorna|mind\] <szöveg>"
set black(say.hu.cmdmaster) "o \[#csatorna\] \[nick\] ; v \[#csatorna\] \[nick\] ; ho \[#csatorna\] \[nick\] ; man <parancs> ; verzió ; mode \[#csatorna\] <+/-mód> ; cycle \[#csatorna\] \[időtartam|indok\] ; say \[#csatorna\] <szöveg> ; act \[#csatorna\] <szöveg> ; seen \[#csatorna|mind\] <nick|ip|host> ; for <botnick1>,<botnick2> <parancs> \[opció\] ; i \[#csatorna\] <nick> ; activ \[#csatorna\] <nick> ; t \[#csatorna\] <szöveg> ; myset <opció> \[leírás\] \[megjelenítés|alaphelyzet\] ; h \[#csatorna\] \[kategória\] ; r \[#csatorna\] ; msg <nick> <szöveg> ; omsg \[#csatorna|mind\] <szöveg>"

set black(say.hu.banvoice) "k \[#csatorna\] <nick|host> \[indok\] ; w \[#csatorna\] <nick> ; sb \[#csatorna\] <nick|host|id>"
set black(say.hu.banop) "b \[#csatorna\] <nick|host> \[-szint\] \[időtartam\] \[indok\] ; dr \[#csatorna\] <nick|host> ; bot \[#csatorna\] <nick|host> ; n \[#csatorna\] <nick> ; id \[#csatorna\] <nick> ; spam \[#csatorna\] <nick|host> ; bw \[#csatorna\] <nick|host> ; vr \[#csatorna\] <nick|host> ; gag \[#csatorna\] <nick> \[időtartam\] \[indok\] ; ungag \[#csatorna\] <nick|host> ; troll \[#csatorna\] <nick> ; mb \[#csatorna\] <nick> \[ok\] ; ub \[#csatorna\] <nick|host|id> ; sb \[#csatorna\] <nick|host|id> ; banlist \[#csatorna\] <mind|felhasználó|egyéb> ; k \[#csatorna\] <nick|host> \[indok\] ; w \[#csatorna\] <nick>"
set black(say.hu.banadmin) "b \[#csatorna\] <nick|host> \[-szint\] \[időtartam\] \[indok\] ; black \[#csatorna\] <nick|host> \[indok\] ; stick \[#csatorna\] <nick|host> \[időtartam\] \[indok\] ; dr \[#csatorna\] <nick|host> ; bot \[#csatorna\] <nick|host> ; n \[#csatorna\] <nick> ; id \[#csatorna\] <nick> ; spam \[#csatorna\] <nick|host> ; bw \[#csatorna\] <nick|host> ; vr \[#csatorna\] <nick|host> ; gag \[#csatorna\] <nick> \[időtartam\] \[indok\] ; ungag \[#csatorna\] <nick|host> ; troll \[#csatorna\] <nick> ; mb \[#csatorna\] <nick> \[ok\] ; ub \[#csatorna\] <nick|host|id> ; sb \[#csatorna\] <nick|host|id> ; banlist \[#csatorna\] <mind|felhasználó|egyéb> ; stats <nick> \[összes\] ; k \[#csatorna\] <nick|host> \[indok\] ; w \[#csatorna\] <nick>"
set black(say.hu.banmanager) "b \[#csatorna\] <nick|host> \[-szint\] \[időtartam\] \[indok\] ; black \[#csatorna\] <nick|host> \[indok\] ; stick \[#csatorna\] <nick|host> \[időtartam\] \[indok\] ; dr \[#csatorna\] <nick|host> ; bot \[#csatorna\] <nick|host> ; n \[#csatorna\] <nick> ; id \[#csatorna\] <nick> ; spam \[#csatorna\] <nick|host> ; bw \[#csatorna\] <nick|host> ; vr \[#csatorna\] <nick|host> ; gag \[#csatorna\] <nick> \[időtartam\] \[indok\] ; ungag \[#csatorna\] <nick|host> ; troll \[#csatorna\] <nick> ; mb \[#csatorna\] <nick> \[ok\] ; ub \[#csatorna\] <nick|host|id> ; sb \[#csatorna\] <nick|host|id> ; exempt \[#csatorna\] <add|list|del> <ip|host> \[időtartam\] \[indok\] ; banlist \[#csatorna\] <mind|felhasználó|egyéb> ; stats <nick> \[összes|visszaállítás\] ; k \[#csatorna\] <nick|host> \[indok\] ; w \[#csatorna\] <nick>"
set black(say.hu.banbossowner) "b \[#csatorna\] <nick|host> \[-szint\] \[időtartam\] \[globális|link\] \[indok\] ; black \[#csatorna\] <nick|host> \[indok\] ; stick \[#csatorna\] <nick|host> \[időtartam\] \[indok\] ; dr \[#csatorna\] <nick|host> ; bot \[#csatorna\] <nick|host> ; n \[#csatorna\] <nick> ; id \[#csatorna\] <nick> ; spam \[#csatorna\] <nick|host> ; bw \[#csatorna\] <nick|host> ; vr \[#csatorna\] <nick|host> ; gag \[#csatorna\] <nick> \[időtartam\] \[indok\] ; ungag \[#csatorna\] <nick|host> ; troll \[#csatorna\] <nick> ; mb \[#csatorna\] <nick> \[ok\] ; ub \[#csatorna\] <nick|host|id> \[globális|link\] ; sb \[#csatorna\] <nick|host|id> \[globális\] ; exempt \[#csatorna\] <add|list|del> <ip|host> \[időtartam\] \[globális\] \[indok\] ; banlist \[#csatorna\] <mind|felhasználó|egyéb|globális> ; stats <nick> \[összes|visszaállítás\] ; k \[#csatorna\] <nick|host> \[indok\] ; w \[#csatorna\] <nick>"
set black(say.hu.banmaster) "b \[#csatorna\] <nick|host> \[-szint\] \[időtartam\] \[indok\] ; black \[#csatorna\] <nick|host> \[indok\] ; stick \[#csatorna\] <nick|host> \[időtartam\] \[indok\] ; dr \[#csatorna\] <nick|host> ; bot \[#csatorna\] <nick|host> ; n \[#csatorna\] <nick> ; id \[#csatorna\] <nick> ; spam \[#csatorna\] <nick|host> ; bw \[#csatorna\] <nick|host> ; vr \[#csatorna\] <nick|host> ; gag \[#csatorna\] <nick> \[időtartam\] \[indok\] ; ungag \[#csatorna\] <nick|host> ; troll \[#csatorna\] <nick> ; mb \[#csatorna\] <nick> \[ok\] ; ub \[#csatorna\] <nick|host|id> ; sb \[#csatorna\] <nick|host|id> ; exempt \[#csatorna\] <add|list|del> <ip|host> \[időtartam\] \[globális\] \[indok\] ; banlist \[#csatorna\] <mind|felhasználó|egyéb> ; stats <nick> \[összes|visszaállítás\] ; k \[#csatorna\] <nick|host> \[indok\] ; w \[#csatorna\] <nick>"

set black(say.hu.addadmin) "add \[#csatorna\] <szint> <user chanserv|nick> ; userlist \[#csatorna\] <szint|mind> ; info \[#csatorna\] <user|#csatorna> ; delacc \[#csatorna\] <user> ; auto \[#csatorna\] <+/-o> <user> ; auto \[#csatorna\] <+/-v> <user> ; s \[#csatorna\] <user> \[időtartam\] \[indok\] ; us \[#csatorna\] <user> ; addhost <user> <host> ; delhost <user> <host>"
set black(say.hu.addmanager) "add \[#csatorna\] <szint> <user chanserv|nick> ; userlist \[#csatorna\] <szint|mind> ; info \[#csatorna\] <user|#csatorna> ; delacc \[#csatorna\] <user> ; del <user> ; auto \[#csatorna\] <+/-o> <user> ; auto \[#csatorna\] <+/-v> <user> ; chuser <user> <új_user> ; s \[#csatorna\] <user> \[időtartam\] \[indok\] ; us \[#csatorna\] <user> ; addhost <user> <host> ; delhost <user> <host>"
set black(say.hu.addowner) "add \[#csatorna\] <szint> <user chanserv|nick> ; userlist \[#csatorna\] <szint|mind> ; info \[#csatorna\] <user|#csatorna> ; delacc \[#csatorna\] <user> ; del <user> ; auto \[#csatorna\] <+/-o> <user> \[globális\] ; auto \[#csatorna\] <+/-v> <user> \[globális\] ; chuser <user> <új_user> ; s \[#csatorna\] <user> \[időtartam\] \[indok\] ; us \[#csatorna\] <user> ; addhost <user> <host> ; delhost <user> <host>"
set black(say.hu.addbossowner) "add \[#csatorna\] <szint> <user chanserv|nick> ; userlist \[#csatorna\] <szint> ; info \[#csatorna\] <user|#csatorna> ; delacc \[#csatorna\] <user> ; del <user> ; auto \[#csatorna\] <+/-o> <user> \[globális\] ; auto \[#csatorna\] <+/-v> <user> \[globális\] ; chuser <user> <új_user> ; s \[#csatorna\] <user> \[időtartam\] \[indok\] ; us \[#csatorna\] <user> ; addhost <user> <host> ; delhost <user> <host>"
set black(say.hu.addmaster) "add \[#csatorna\] <szint> <user chanserv|nick> ; userlist \[#csatorna\] <szint> ; info \[#csatorna\] <user|#csatorna> ; delacc \[#csatorna\] <user> ; del <user> ; auto \[#csatorna\] <+/-o> <user> ; auto \[#csatorna\] <+/-v> <user> ; chuser <user> <új_user> ; s \[#csatorna\] <user> \[időtartam\] \[indok\] ; us \[#csatorna\] <user> ; addhost <user> <host> ; delhost <user> <host>"
set black(say.hu.hmanager.1) "purge \[#csatorna\] <indok> ; set \[#csatorna\] <+/-opció> ; set \[#csatorna\] <opció> <leírás> ; unset \[#csatorna\] <opció> ; show \[#csatorna\] <opció> ; ignore <add|list|del> <host> \[időtartam\] \[indok\] ; enable <parancs|mind> \[user\] ; disable <parancs|mind> \[user\]"
set black(say.hu.hbossowner.1) "addchan <#csatorna> ; delchan <#csatorna> ; suspend <#csatorna> ; unsuspend <#csatorna>; set \[#csatorna|globális\] <opció> <leírás> ; unset \[#csatorna|globális\] <opció> ; show \[#csatorna\] <opció> ; channels ; die \[indok\] ; restart ; jump \[szerver\] ; save ; rehash ; login ; nick <új_nick> ; uptime ; status ; cp <opció> <#csatorna1> <#csatorna2> ; ignore <add|list|del> <host> \[időtartam\] \[indok\] ; enable <parancs|mind> \[user\] \[globális\] ; disable <parancs|mind> \[user\] \[globális\] ; chat"
set black(say.hu.hmaster.1) "addchan <#csatorna> ; delchan <#csatorna> ; suspend <#csatorna> ; unsuspend <#csatorna>; set \[#csatorna\] <opció> <leírás> ; unset \[#csatorna\] <opció> ; show \[#csatorna\] <opció> ; channels ; uptime ; status ; ignore <add|list|del> <host> \[időtartam\] \[indok\] ; enable <parancs|mind> \[user\] ; disable <parancs|mind> \[user\]"

set black(say.hu.hchaninfo.1) "\002Eggdrop Flagek\002: "
set black(say.hu.hchaninfo.2) "\002BT Beállítások\002: "
set black(say.hu.hchaninfo.3) "\002Eggdrop Info\002"
set black(say.hu.hchaninfo.4) "\002BT Info\002: "
set black(say.hu.hegg.1) "\005\[BT\]\005 %msg%"
set black(say.hu.hegg.2) "\005\[BT\]\005 A \002Kézikönyvet\002 minden beállításról megtekintéséhez használd: \001%char%man <optiune>\001"
set black(say.hu.hegg.3) "\005\[BT\]\005 A \002Kézikönyvet\002 minden beállításról megtekintéséhez használd: \001%botnick% man <optiune>\001"
set black(say.hu.hegg.4) "\005\[BT\]\005 A \002Kézikönyvet\002 minden beállításról megtekintéséhez használd: \001man <optiune>\001"

############################### GREETING #######################################

set black(say.hu.greeting.1) "\005\[BT\]\005 Üdvözöllek a \001BlackToolS\001 világában, a \002$black(vers)\002 verzióban. A kezdéshez definiálnod kell a következő beállításokat:"
set black(say.hu.greeting.2) "\002%char%myset mychar\002 <trigger> ( kívánt kiváltó beállítása ) ; \001%char%myset lang\001 <nyelv> ( RO | EN | ES )"
set black(say.hu.greeting.3) "\001%char%myset mychan\001 <#csatorna> ; \002%char%myset output\002 <módszer> ( CHAN | NOTICE )"
set black(say.hu.greeting.4) "\002%char%myset noteexpire\002 <napok száma> ; \001%char%myset greet\001 <üzenet> ; \002%char%myset autoinvite\002 <BE|KI>"
set black(say.hu.greeting.5) "\005\[BT\]\005 Használd \001%char%h\001 bármely csatornán, ahol a bot jelen van, a rendelkezésre álló parancsok teljes listájáért."
set black(say.hu.greeting.6) "\005\[BT\]\005 A \001BlackTools\001 beállításainak teljes leírásáért használd: \001%char%man <setare>\001. Have Fun! >:)"

################################### Abuse Report ###############################

set black(say.hu.abuse.1) "\005\[BT\]\005 Nem tudok belépni a \001%msg.1%\001 csatornára. Indok: BAN"
set black(say.hu.abuse.2) "Nem tudok belépni a \001%chan%\001 csatornára, mert BAN-t kaptam (+b)"
set black(say.hu.abuse.3) "\005\[BT\]\005 Nem tudok belépni a \001%msg.1%\001 csatornára. Indok: INVITE ONLY"
set black(say.hu.abuse.4) "Nem tudok belépni a \001%chan%\001 csatornára, mert INVITE ONLY (+i)"
set black(say.hu.abuse.5) "\005\[BT\]\005 Nem tudok belépni a \001%msg.1%\001 csatornára. Indok: KEY"
set black(say.hu.abuse.6) "Nem tudok belépni a \001%chan%\001 csatornára, mert KEY (+k)"
set black(say.hu.abuse.7) "\005\[BT\]\005 Nem tudok belépni a \001%msg.1%\001 csatornára. Indok: CHANNEL FULL"
set black(say.hu.abuse.8) "Nem tudok belépni a \001%chan%\001 csatornára, mert a csatorna tele van (+l)"
set black(say.hu.abuse.9) "\005\[BT\]\005 Felfüggesztettem a \001%msg.1%\001 csatornát visszaélések miatt."
set black(say.hu.abuse.10) "Felfüggesztettem a \001%msg.1%\001 csatornát visszaélések miatt."
set black(say.hu.abuse.11) "Nem tudok belépni a %chan% csatornára, mert MODE RESTRICTION (+r)"
set black(say.hu.abuse.12) "\005\[BT\]\005 Nem tudok belépni a \001%msg.1%\001 csatornára. Indok: MODE RESTRICTION"

################################### ChanLink ###################################

set black(say.hu.chanlink.1) "\005\[BT\]\005 Beállítottam a \002CHANLINK\002 opciót a következő csatornáknak: \001%msg%\001"
set black(say.hu.chanlink.2) "\005\[BT\]\005 Visszaállítottam a \002CHANLINK\002 opciót"
set black(say.hu.chanlink.3) "\005\[BT\]\005 A következő csatornák beállították a \002CHANLINK\002 opciót: \001%msg%\001"
set black(say.hu.chanlink.4) "\005\[BT\]\005 Beállítottam a \002CHANLINK\002 opciót minden memóriában lévő csatornának."
set black(say.hu.chanlink.5) "\005\[BT\]\005 Nincsenek csatornák, amelyek beállították a \002CHANLINK\002 opciót"
set black(say.hu.chanlink.6) "\005\[BT\]\005 A következő csatornák érvénytelenek: \001%msg%\001"
set black(say.hu.chanlink.7) "\005\[BT\]\005 Töröltem a \002CHANLINK\002 opciót a \001%msg.1%\001 csatornáról"
set black(say.hu.chanlink.8) "\005\[BT\]\005 \001%msg.1%\001 nem rendelkezik bekapcsolva a \002CHANLINK\002 opcióval."

###################################### O #######################################

set black(say.hu.o.1) "\005\[BT\]\005 Nem használhatod a tömeges deop parancsot, mivel \001%msg.1%\001 jelenleg \002%chan%\002 csatornán van."

################################### man ########################################

set black(say.hu.man.1_1) "\005\[BT\]\005 Sajnálom \001%msg.1%\001, nincs információm erről a témáról."

#################################### User Expire ###############################

set black(say.hu.userexpire.1) "\[BT\] Automatikus felhasználói lejárat: \002%msg.1%\002 lejárt felhasználó."

#################################### hello #####################################

set black(say.hu.hello.1) "*** HOORAH! *** Hozzáférése van a parancsaimhoz: \002%msg%\002."
set black(say.hu.hello.2) "\005\[BT\]\005 Helló \001%msg.1%\001. Én vagyok a \002%botnick%\002, egy Eggdrop, ami \001%msg.2%\001 %msg.3% fut."
set black(say.hu.hello.3) "\005\[BT\]\005 Mostantól a '\001%msg.1%\001' hoston ismer fel. Kérlek, állíts be egy jelszót a használatához: \001/msg \002%botnick% pass\002 <jelszó>\001"
set black(say.hu.hello.4) "\005\[BT\]\005 Használhatod a \002%char%h\002 parancsot bármelyik csatornában, ahol a bot jelen van, a teljes elérhető parancsok listájáért. Jó szórakozást :D"

#################################### Pass ######################################

set black(say.hu.pass.1) "\005\[BT\]\005 Jelszavad sikeresen beállítva: \002%msg%\002"

#################################### oMsg ######################################

set black(say.hu.omsg.1) "\005\[BT\]\005 Üzenet elküldve az összes @-nak erről a csatornáról: \002%msg%\002"

#################################### forward ###################################

set black(say.hu.forward.1) "\005\[BT\]\005 \004\[PRIVÁT ÜZENET\]\004 tőle -- <\002%msg.1%\002> ��� \001%msg.8%\001"

##################################### mb #######################################

set black(say.hu.mb.5) "IRC kliens visszaélés miatt használva. Kérlek fontold meg egy másik kliens használatát."

##################################### HandleBan ################################

set black(say.hu.handleban.1) "Felhasználó a feketelistán!"

##################################### Exempt ###################################

set black(say.hu.exempt.1) "Állandó"
set black(say.hu.exempt.2) "\005\[BT\]\005 \[CSATORNA\]: * (\002%msg.1%\002 kivételek találhatók)"
set black(say.hu.exempt.3) "\005\[BT\]\005 A következő kivételek megjelenítéséhez használd: \001%char%exempt list global -next\001 (\002%counter%\002 hátralévő kivétel)"
set black(say.hu.exempt.4) "\005\[BT\]\005 *** Kivételek vége ***"
set black(say.hu.exempt.5) "\005\[BT\]\005 \002%msg.2%\002 ; \002%msg.3%\002 ; Hozzáadva: \002%msg.4%\002 ; Dátum: \002%msg.12%\002 ; Lejár: %msg.13% \002%msg.15%\002 \002%msg.17%\002 ; Indok: %msg.20%"
set black(say.hu.exempt.6) "\005\[BT\]\005 \[CSATORNA\]: %chan% (\002%msg.1%\002 kivétel található)"
set black(say.hu.exempt.10) "\005\[BT\]\005 A következő kitiltások megjelenítéséhez használd: \001%char%exempt list -next\001 (\002%counter%\002 hátralévő kivétel)"
set black(say.hu.exempt.11) "\005\[BT\]\005 \002%msg.2%\002 ; \002%msg.3%\002 ; Hozzáadva: \002%msg.4%\002 ; Dátum: \002%msg.12%\002 ; Lejár: %msg.13% ; Indok: %msg.14%"
set black(say.hu.exempt.13) "Soha"
set black(say.hu.exempt.14) "\005\[BT\]\005 A következő kivételek megjelenítéséhez használd: \001%char%exempt %chan% list -next\001 (\002%counter%\002 hátralévő kitiltás)"
set black(say.hu.exempt.7) "\005\[BT\]\005 Kivételt adtam hozzá a kitiltáshoz a következő host esetében: \002%msg.1%\002 a %chan%-on"
set black(say.hu.exempt.8) "\005\[BT\]\005 Kivételt adtam hozzá a kitiltáshoz a következő host esetében: \002%msg.1%\002 az összes csatornán"
set black(say.hu.exempt.9) "\005\[BT\]\005 Töröltem a kitiltás kivételét a következő host esetében: \002%msg.1%\002 a %chan%-on"
set black(say.hu.exempt.12) "\005\[BT\]\005 Töröltem a kitiltás kivételét a következő host esetében: \002%msg.1%\002 az összes csatornán"
set black(say.hu.exempt.15) "\005\[BT\]\005 Nincs kitiltás kivétel a következő host esetében: \002%msg.1%\002 a %chan%-on"
set black(say.hu.exempt.16) "\005\[BT\]\005 Nincs kitiltás kivétel a következő host esetében: \002%msg.1%\002 az összes csatornán"


###################################### AutoUpdate ################################

set black(say.hu.autoupdate.1) "\005\[BT\]\005 Nem sikerült végrehajtani a(z) \%msg.1%\001: A \002TLS\002 csomag nincs telepítve."
set black(say.hu.autoupdate.2) "\005\[BT\]\005 Az frissítés sikertelen, nem tudtam ellenőrizni, hogy vannak-e új frissítések."
set black(say.hu.autoupdate.3) "\005\[BT\]\005 Találtam egy \001ÚJ\001 BlackTools verziót: \002%msg.1%\002, elindítom a letöltést..."
set black(say.hu.autoupdate.4) "\005\[BT\]\005 Új hibajavításokat találtam a telepített \002BlackTools %msg.1%\002 verzióhoz, elindítom a letöltést..."
set black(say.hu.autoupdate.5) "\005\[BT\]\005 Nem találtam új frissítéseket."
set black(say.hu.autoupdate.6) "\005\[BT\]\005 A frissítés sikertelen: \002%msg.1%\002"
set black(say.hu.autoupdate.7) "\005\[BT\]\005 Törlöm a legutóbbi frissítés által készített biztonsági másolatot..."
set black(say.hu.autoupdate.8) "\005\[BT\]\005 Biztonsági másolatot készítek a \001BlackTools\001 könyvtárhoz..."
set black(say.hu.autoupdate.9) "\005\[BT\]\005 A \001BlackTools\001 könyvtár biztonsági másolatának mentése sikertelen: \002%msg.1%\002"
set black(say.hu.autoupdate.10) "\005\[BT\]\005 A frissítés sikertelen, nem tudtam biztonsági másolatot készíteni a \001BlackTools.tcl\001 fájlhoz."
set black(say.hu.autoupdate.11) "\005\[BT\]\005 Biztonsági másolatot készítek a \001BlackTools.tcl\001 fájlhoz... kész"
set black(say.hu.autoupdate.12) "\005\[BT\]\005 Biztonsági másolat elkészült."
set black(say.hu.autoupdate.13) "\005\[BT\]\005 Mentem az információkat a régi \001BlackTools.tcl\001 fájlból..."
set black(say.hu.autoupdate.14) "\005\[BT\]\005 Töröltem az összes régi \001BlackTools\001 fájlt..."
set black(say.hu.autoupdate.15) "\005\[BT\]\005 BlackTools \002%msg.1%\002 letöltése. Legutóbbi hibajavítás: \002%msg.2%\002"
set black(say.hu.autoupdate.16) "\005\[BT\]\005 A frissítés sikertelen, nem tudtam letölteni a \001BlackTools\001-ot."
set black(say.hu.autoupdate.17) "\005\[BT\]\005 \001BlackTools\001 letöltve a következő helyre: \002%msg.1%\002"
set black(say.hu.autoupdate.18) "\005\[BT\]\005 Visszaállítom az információkat a régi \001BlackTools.tcl\001 fájlból..."
set black(say.hu.autoupdate.19) "\005\[BT\]\005 Visszaállítva a \002%msg.1%\002 változók a régi \001BlackTools.tcl\001 fájlból."
set black(say.hu.autoupdate.20) "\005\[BT\]\005 Nincs visszaállított változó a régi \001BlackTools.tcl\001 fájlból."
set black(say.hu.autoupdate.21) "\005\[BT\]\005 Visszaállítom a beállításokat, kitiltásokat és egyéb információkat..."
set black(say.hu.autoupdate.22) "\005\[BT\]\005 Nem találtam olyan fájlt, amely tartalmazna beállításokat, kitiltásokat vagy egyéb információkat..."
set black(say.hu.autoupdate.23) "\005\[BT\]\005 Visszaállítva (\002%msg.1%\002) fájlokat, amelyek tartalmazzák a beállításokat, kitiltásokat és egyéb információkat."
set black(say.hu.autoupdate.24) "\005\[BT\]\005 Frissítés az \001BlackTools\001-hoz befejezve \002%msg.1%\002. Változások: \002https://github.com/tclscripts/BlackTools-TCL/blob/master/ChangeLog\002"
set black(say.hu.autoupdate.25) "\005\[BT\]\005 Ha valami nem működött jól, a biztonsági másolatot megtalálod itt: \001\"%msg.1%\"\001 a következő frissítésig. Megtekintheted a frissítés naplóját is itt: \001\"%msg.2%\"\001"
set black(say.hu.autoupdate.26) "\005\[BT\]\005 Ne felejtsd el, hogy információkat és hibajelentéseket a BT-hez itt találsz: \002WwW.TclScripts.Net\002"
set black(say.hu.autoupdate.27) "\005\[BT\]\005 Frissítés indítva: \001%msg.1%\001"
set black(say.hu.autoupdate.28) "\005\[BT\]\005 Ellenőrzöm az új frissítéseket..."
set black(say.hu.autoupdate.29) "\005\[BT\]\005 Már fut..."
set black(say.hu.autoupdate.30) "\005\[BT\]\005 Nem sikerült elindítani a frissítést. Indok: \002%msg%\002"
set black(say.hu.autoupdate.31) "\005\[BT\]\005 Nem tudtam ellenőrizni, hogy vannak-e új frissítések. Kérlek próbáld újra később."
set black(say.hu.autoupdate.32) "\005\[BT\]\005 Találtam egy új \001BlackTools\001 verziót: \002%msg%\002. Használd \001%char%update start\001 a frissítés elindításához."
set black(say.hu.autoupdate.33) "\005\[BT\]\005 Nem találtam új \001BlackTools\001 verziót, de találtam egy hibajavítást (\002%msg%\002) a jelenlegi verzióhoz. Használd \001%char%update start\001 a frissítés elindításához."
set black(say.hu.autoupdate.34) "\005\[BT\]\005 Az \001AutoFrissités\001 ki van kapcsolva. Indok: \002%msg%\002"
set black(say.hu.autoupdate.35) "\005\[BT\]\005 Az \001AutoFrissités\001 már fut."
set black(say.hu.autoupdate.36) "\005\[BT\]\005 Az \001AutoFrissités\001 módot bekapcsoltad."
set black(say.hu.autoupdate.37) "\005\[BT\]\005 Az \001AutoFrissités\001 már ki van kapcsolva."
set black(say.hu.autoupdate.38) "\005\[BT\]\005 Az \001AutoFrissités\001 módot kikapcsoltad."
set black(say.hu.autoupdate.39) "\005\[BT\]\005 Az \001AutoFrissités\001 jelenleg fut."
set black(say.hu.autoupdate.40) "\005\[BT\]\005 Az \001AutoFrissités\001 átugorva. Indok: \002Manuális frissítés engedélyezve\002."
set black(say.hu.autoupdate.41) "\005\[BT\]\005 Az \001AutoFrissités\001 időzítése: \002%msg.1%\002 perc"
set black(say.hu.autoupdate.42) "\005\[BT\]\005 Az \001AutoFrissités\001 időzítése beállítva: \002%msg.1%\002 (%msg.2% perc)"
set black(say.hu.autoupdate.43) "\005\[BT\]\005 Az \001AutoFrissités\001 talált egy új frissítést: BlackTools \002%msg.1%\002 (Utolsó frissítés: \001%msg.2%\001)."
set black(say.hu.autoupdate.45) "\005\[BT\]\005 A frissítés befejezéséhez szükséges az eggdrop újraindítása a \002restart\002 parancs segítségével."
set black(say.hu.autoupdate.46) "\005\[BT\]\005 Automatikus újraindítás 10 másodpercen belül a frissítés befejezéséhez."
set black(say.hu.autoupdate.47) "\005\[BT\]\005 Az utolsó frissítés (\001%msg.1%\001) egy másik eggdrop által lett telepítve ugyanabból az archívból. Használd a \001%char%update start\001 a frissítés befejezéséhez."
set black(say.hu.autoupdate.48) "\005\[BT\]\005 Az utolsó frissítés (\001%msg.1%\001) talált telepítve egy másik eggdrop által ugyanabból az archívból. Befejezem a frissítést."
set black(say.hu.autoupdate.49) "\005\[BT\]\005 Az \001AutoFrissités\001 véglegesen kikapcsolva."

######################################## ALIAS ###################################

set black(say.hu.alias.1) "\005\[BT\]\005 Használd: \002%char%alias\002 add <parancs> \[argumentumok\]"
set black(say.hu.alias.2) "\005\[BT\]\005 \002%msg.1%\002 nem érvényes parancs számodra."
set black(say.hu.alias.3) "\005\[BT\]\005 \002%msg.1%\002 már hozzá van adva mint \001alias\001 a következő paranccsal: \002%msg.2%\002"
set black(say.hu.alias.4) "\005\[BT\]\005 \002%msg.1%\002 hozzá lett adva mint \001alias\001 a következő paranccsal: \002%msg.2%\002"
set black(say.hu.alias.5) "\005\[BT\]\005 \002%msg.1%\002 nem lett hozzáadva mint \001alias\001"
set black(say.hu.alias.6) "\005\[BT\]\005 Töröltem a \002%msg.1%\002-t az \001alias\001 parancsok listájáról"
set black(say.hu.alias.7) "\002ALIAS PARANCSOK:\002"

######################################## VOTE ###################################

set black(say.hu.vote.1) "\005\[BT\]\005 Használd: \002%char%vote\002 add <szavazás neve> -option <opció 1> -option <opció 2>.. \[-time \[HH/NN/ÉÉ ÓÓ:PP\]\] (lejárat ideje) \[-type 1/0\] (1 - hozzáférésű felhasználók, 0 - minden felhasználó)"
set black(say.hu.vote.2) "\005\[BT\]\005 Kérlek használj érvényes időt \[HH/NN/ÉÉ ÓÓ:PP\] például 21/12/24 00:00"
set black(say.hu.vote.3) "\005\[BT\]\005 Kérlek használj érvényes típust \[-type 1/0\] (\0021\002 - hozzáférésű felhasználók, \0020\002 - minden felhasználó)"
set black(say.hu.vote.4) "\005\[BT\]\005 Már van egy ugyanolyan nevű szavazás. Kérlek válassz másikat."
set black(say.hu.vote.5) "\005\[BT\]\005 Hozzáadtam a szavazást az ID-vel \002%msg.3%\002 és a nevével \"%msg.1%\", opciókkal \[%msg.2%\]. Lejár: \002SOHA\002."
set black(say.hu.vote.6) "\005\[BT\]\005 Hozzáadtam a szavazást az ID-vel \002%msg.4%\002 és a nevével \"%msg.1%\", opciókkal \[%msg.2%\]. Lejár: \002%msg.3%\002."
set black(say.hu.vote.7) "\005\[BT\]\005 Használd: \002%char%vote\002 del <id>"
set black(say.hu.vote.8) "\005\[BT\]\005 Nem találtam szavazást az ID-vel: \002%msg.1%\002."
set black(say.hu.vote.9) "\005\[BT\]\005 Töröltem a szavazást az ID-vel: \002%msg.1%\002."
set black(say.hu.vote.10) "\005\[BT\]\005 Használd: \002%char%vote\002 end <id>"
set black(say.hu.vote.11) "\005\[BT\]\005 A szavazás az ID-vel: \002%msg.1%\002 már befejeződött."
set black(say.hu.vote.12) "\005\[BT\]\005 Befejeztem a szavazást az ID-vel: \002%msg.1%\002."
set black(say.hu.vote.13) "\002AKTÍV\002"
set black(say.hu.vote.14) "\002BEFEJEZVE\002"
set black(say.hu.vote.15) "\002Hozzáférésű felhasználók\002"
set black(say.hu.vote.16) "\002Minden felhasználó\002"
set black(say.hu.vote.17) "\005\[BT\]\005 Szavazás részletei -- ID: \002%msg.1%\002 ; Név: \002%msg.2%\002 ; Hozzáadta: \002%msg.7%\002 ; Állapot: \002%msg.4%\002 ; Célközönség: \002%msg.5%\002 ; Lejár: \002%msg.6%\002"
set black(say.hu.vote.18) "Leadott szavazatok: N/A"
set black(say.hu.vote.19) "\005\[BT\]\005 Szavazatok száma: %msg.1%. Összes szavazat: \002%msg.2%\002."
set black(say.hu.vote.20) "\005\[BT\]\005 A szavazás az ID-vel: \002%msg.1%\002 befejeződött, már nem szavazhatsz."
set black(say.hu.vote.21) "\005\[BT\]\005 Kérlek válassz egy szavazási opciót: A-tól Z-ig."
set black(say.hu.vote.22) "\005\[BT\]\005 Nincs opció a(z) \002%msg.1%\002 karakterrel ehhez a szavazáshoz. A szavazási opciók: %msg.2%"
set black(say.hu.vote.23) "\005\[BT\]\005 Már választottál opciót ehhez a szavazáshoz."
set black(say.hu.vote.24) "\005\[BT\]\005 Kiválasztottad a(z) \002%msg.1%\002 opciót az ID-vel: \002%msg.2%\002 és a névvel: \002%msg.3%\002 szavazáshoz."
set black(say.hu.vote.25) "\005\[BT\]\005 ID: \002%msg.1%\002 ; Név: \002%msg.2%\002 ; Hozzáadta: \002%msg.7%\002 ; Állapot: \002%msg.4%\002 ; Célközönség: \002%msg.5%\002 ; Lejár: \002%msg.6%\002 ; Részletes parancs: \002%char%vote %msg.1%\002"
set black(say.hu.vote.26) "\005\[BT\]\005 Vége a szavazás listázásnak"
set black(say.hu.vote.27) "\005\[BT\]\005 A következő szavazások listázásához használd: \001%char%vote list -next\001 (\002%counter%\002 hátralévő szavazás)"
set black(say.hu.vote.28) "\005\[BT\]\005 A következő szavazások listázásához használd: \001%char%vote %chan% list -next\001 (\002%counter%\002 hátralévő szavazás)"
set black(say.hu.vote.29) "\005\[BT\]\005 A szavazatok listája %chan% csatornára:"
set black(say.hu.vote.30) "\005\[BT\]\005 Nincsenek szavazatok %chan% csatornán."
set black(say.hu.vote.31) "\005\[BT\]\005 A következő szavazatok listázásához használd: \001%char%vote list %id% -next\001 (\002%counter%\002 hátralévő szavazás)"
set black(say.hu.vote.32) "\005\[BT\]\005 A következő szavazatok listázásához használd: \001%char%vote %chan% list %id% -next\001 (\002%counter%\002 hátralévő szavazás)"
set black(say.hu.vote.33) "\005\[BT\]\005 Nincsenek szavazatok az %msg.1% ID-jű szavazáshoz %chan% csatornán."
set black(say.hu.vote.34) "\005\[BT\]\005 \002#%msg.1%\002 Név: \002%msg.2%\002 ; Host: %msg.3% ; Szavazat: \002%msg.4%\002 ; Szavazat dátuma: \002%msg.5%\002"
set black(say.hu.vote.35) "\005\[BT\]\005 A szavazatok listája az ID-vel: \002%msg.1%\002 %chan% csatornára:"
set black(say.hu.vote.36) "\005\[BT\]\005 A szavazatok listázásának vége"
set black(say.hu.vote.37) "\005\[BT\]\005 ID: \002%msg.1%\002 ; Név: \002%msg.2%\002 ; Hozzáadta: \002%msg.7%\002 ; Állapot: \002%msg.4%\002 ; Célközönség: \002%msg.5%\002 ; Részletes parancs: \002%char%vote %msg.1%\002"
set black(say.hu.vote.38) "\005\[BT\]\005 Szavazás részletei -- ID: \002%msg.1%\002 ; Név: \002%msg.2%\002 ; Hozzáadta: \002%msg.7% ; Állapot: \002%msg.4%\002 ; Célközönség: \002%msg.5%\002"
set black(say.hu.vote.39) "\005\[BT\]\005 Használd: \002%char%vote\002 time <id> <HH/NN/ÉÉ ÓÓ:PP> (új lejárat beállítása)"
set black(say.hu.vote.40) "\005\[BT\]\005 Beállítottam az új lejárati időt az ID-vel: \002%msg.1%\002 %msg.2% múlva"
set black(say.hu.vote.41) "\005\[BT\]\005 Szavazási opciók: \[%msg.1%\]"
set black(say.hu.vote.42) "\005\[BT\]\005 -- SZAVAZÁS -- Elérhető SZAVAZÁSOK, amelyekre válaszolhatsz. Az ID-k: \002%msg.1%\002 . Részletek megtekintéséhez használd a \001%char%vote <id>\001 parancsot. \002SZAVAZÁS\002-hoz használd a \001%char%vote <id> <betű>\001 parancsot. A lista megtekintéséhez használd a \001%char%vote list\001 parancsot."

##############################
############################################################################################################
#   Vége :)                                                                                                #
############################################################################################################
