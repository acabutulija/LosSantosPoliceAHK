#Requires AutoHotkey v2.0



StartWatch(*) {
    Send("t")
    Sleep(100)
    Send("/me takes out an AXON bodycam from the locker, attaches it to his chest. Exchanges the SD card for a new one and presses a button on the side of the device, turning it on.{enter}")
    Sleep(1000)
    ; Send("t/do A red light would indicate that it's unblinking eye is recording everything that unfolds.{enter}")
    ; Sleep(1000)
    ; Send("t{sleep 75}/time{enter}")
    ; Sleep(1000)
    ; status := InputBox("Status", "Status:").value
    ; Send("t{sleep 75}/r 16379, show me start of watch under 4-T-32, 10-" status " from Mission Row.{enter}")
    ; Sleep(1000)
    ; Send("t{sleep 75}/createunit 4-T-32{enter}")
}

EndWatch(*) {
    send("t{sleep 25}/me removes the AXON bodycam from his chest and the duty belt from his waist, returning them to the locker. Changes his clothes back into civilian garments and returns the uniform inside the locker.{enter}")
    Sleep(500)
    send("t{sleep 25}/r 16379, show me disbanding unit and ending watch.{enter}")
    Sleep(500)
    send("t{sleep 25}/disbandunit{enter}")
    Sleep(500)
    send("^d")
    
}

UnrackShotgun(*) {
    send("t{sleep 25}/me unracks the Remington shotgun from the cruiser's gunrack.{enter}")
}

RackShotgun(*) {
    send("t{sleep 25}/me racks the Remington shotgun in the cruiser's gunrack.{enter}")
}

; Cuff(*) {
;     send("t{sleep 25}/me reaches for the persons hands, pulling them behind their back. Takes a pair of cuffs from his duty belt and slaps them on their wrists, interlocking them.{enter}")
    
; }

; Search(*) {
;     send("t{sleep 25}/me begins a methodical search of the suspect, running hands down the arms, then moves to the torso, carefully checking the chest and back.{enter}")
;     
;     send("t{sleep 25}/me proceeds to pat down the waistline and hips, before moving to the legs, checking each pocket along the way. Finally, reaches into pant pockets, feeling for any items, including an ID or any keys.{enter}")
    
; }

DOC(*) {
    tenFifteen := InputBox("10-15s", "10-15s:").value
    time := InputBox("ETA", "ETA:").value
    send("t/dep PD to DOC, enroute to Boilingbroke Penitentiary with " tenFifteen "x10-15s, ETA would be " time " minutes, are you available for processing?{enter}")
    return:
}

Tow(*) {
    send("t{sleep 25}/me pulls a lever and lowers the deck into a slanted position.{enter}")
    Sleep(500)
    send("t{sleep 25}/me grabs a winch and attaches it to the bumper of the vehicle, then operates it's commands and pulls the vehicle on board.{enter}")
    Sleep(500)
    send("t{sleep 25}/me pushes a lever and brings the deck back to it's horizontal position and straps the vehicle's wheels onto the deck.{enter}")
    
}

Untow(*) {
    send("t{sleep 25}/me unstraps the vehicle's wheels from the deck, then pulls a lever and lowers the deck into a slanted position.{enter}")
    Sleep(500)
    send("t{sleep 25}/me operates the winch and pushes the vehicle off the deck, then removes the winch from the vehicle's bumper.{enter}")
    Sleep(500)
    send("t{sleep 25}/me pushes a lever and brings the deck back to it's horizontal position.{enter}")
    
}

ArmoryShotgun(*) {
    Send("t{sleep 25}/me opens the armory locker and takes out a Remington shotgun, checks the safety of the weapon and slings it to his back. Logs in the time in a table on the wall.{enter}")
}

FlightCheck(*) {
    Send("t{sleep 100}/me turns on the flight controls and the instrumental panel.{enter}")
    Sleep(500)
    Send("t{sleep 100}/me turns on the throttle and pitch control, checking the main rotor and tail rotor's condition on the display.{enter}")
    Sleep(500)
    Send("t{sleep 100}/me inspects both the directional gyro and altitude meter.{enter}")
    Sleep(500)
    Send("t{sleep 100}/me turns the auxiliary fuel pump on.{enter}")
    Sleep(500)
    Send("t{sleep 100}/me straps himself in the shoulder harness and connects his headphones to the communications system.{enter}")
    Sleep(500)
    prior := InputBox("Priority?", "Priority?").value
    if (prior == 'a') {
        Send("t{sleep 100}/atc AIR-1 to ATC, show me ascending to 700 ft from MRPD, Priority A.{enter}")
    } else if (prior == 'b') {
        Send("t{sleep 100}/atc AIR-1 to ATC, show me ascending to 1000 ft from MRPD, Priority B.{enter}")
    } else if (prior == 'c') {
        Send("t{sleep 100}/atc AIR-1 to ATC, show me ascending to 1300 ft from MRPD, Priority C.{enter}")
    }
}

CivFlightCheck1(*) {
    Send("t{sleep 25}/me walks around the aircraft and inspects it's overall condition.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me checks the pitot tube, making sure it is clear.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me checks the windshield making sure it's intact.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me inspects the fresh air vent making sure that it is clear.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me inspects the landing light, making sure that it's working.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me checks the landing gear, making sure it is intact.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me checks the cowl door, making sure that it is latched.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me inspects the engine air intake, making sure that there is no obstruction.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me inspects the engine oil level, making sure there is at least 4 Qts of oil.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me checks the oil filter, making sure there is no leakage.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me checks the fuel and oil lines, making sure there are no leaks.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me inspects the exhaust system, making sure it is clear.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me checks the engine's overall condition, making sure it's intact.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me looks over the main rotor's blades, looking for any visible damage.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me checks the pitch change boots, making sure there is no leakage.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me checks the swashplate, making sure it's intact.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me checks the rods ends, making sure they are intact.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me inspects the tail rotor's blades, looking for any visible damage.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me checks the gearbox oil, making sure there is no leakage.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me inspects the tail rotor's rod ends, making sure they are intact.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me enters the interior of the helicopter, then turns on the battery switch.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me engages the circuit breaker.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me checks if there is sufficient fuel quantity.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me checks the status of the lights and instrumental panel.{enter}")
}

CivFlightCheck2(*) {
    Send("t{sleep 25}/me fastenes the seatbelt and straps himself in the shoulder harness.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me makes sure the doors are secured.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me turns the fuel valve on.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me sets the throttle to FULLY TRAVEL mode.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me sets the collective to FULLY DOWN mode.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me sets the cyclic and pedals to neutral position.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me disengages the rotor brake.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me turns on the avionics.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me equips the headset, turns it on and connects it to the communications system.{enter}")
}

CivFlightCheck3(*) {
    Send("t{sleep 25}/me makes sure the rotor blades are in the clear.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me turns the ignition switch to start.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me engages the clutch swtich.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me sets the warm-up RPM level to 75%.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me makes sure that the engine gauges are showing a green light.{enter}")
}

CivFlightCheck4(*) {
    Send("t{sleep 25}/me sets the collective to FULLY DOWN mode.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me switches the throttle to closed status.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me disengages the clutch switch.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me engages the rotor brake.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me turns off the avionics, ignition switch and battery switch.{enter}")
    Sleep(500)
    Send("t{sleep 25}/me unfastenes the seatbelt and removes himself from the shoulder harness, taking off the headphones.{enter}")
}


ArmorySubmenu := Menu()
ArmorySubmenu.Add("Shotgun", ArmoryShotgun)
GunrackSubmenu := Menu()
GunrackSubmenu.Add("Shotgun", RackShotgun)

LSPDMenu := Menu()
LSPDMenu.Add("Unrack Shotgun", UnrackShotgun)
LSPDMenu.Add("Armory", ArmorySubmenu)
LSPDMenu.Add("Gunrack", GunrackSubmenu)

WatchSubmenu := Menu()
WatchSubmenu.Add("Start", StartWatch)
WatchSubmenu.Add("End", EndWatch)

LSPDMenu.Add("Watch", WatchSubmenu)
; LSPDMenu.Add("Cuff", Cuff)
; LSPDMenu.Add("Search", Search)
LSPDMenu.Add("DOC", DOC)

FlatbedSubmenu := Menu()
FlatbedSubmenu.Add("Tow", Tow)
FlatbedSubmenu.Add("Untow", Untow)

LSPDMenu.Add("Flatbed", FlatbedSubmenu)

LSPDMenu.Add("Flight check", FlightCheck)

CivFlightCheck := Menu()
CivFlightCheck.Add("Outside", CivFlightCheck1)
CivFlightCheck.Add("Pre engine start", CivFlightCheck2)
CivFlightCheck.Add("Engine start", CivFlightCheck3)
CivFlightCheck.Add("Shutdown", CivFlightCheck4)

LSPDMenu.Add("Civ flight check", CivFlightCheck)

F10:: {
    LSPDMenu.Show()
}