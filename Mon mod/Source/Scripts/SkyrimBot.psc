Scriptname SkyrimBot extends Quest

Bool Property IaMod = False auto

; On utilise une fonction pour éviter de dupliquer le code
Function RegisterInputs()
    UnregisterForAllKeys() ;
    RegisterForKey(62)     ; F4
    Debug.Notification("F4 enregistré")
EndFunction


Event OnInit()
    ; Se lance lors de la toute première installation
    Debug.Notification("scripte bien chargé")
    RegisterInputs()
EndEvent


Event OnPlayerLoadGame()
    ; Se lance à CHAQUE chargement de partie
    Debug.Notification("scripte bien chargé")
    RegisterInputs()
EndEvent


Event OnKeyDown(int keyCode)
    if keyCode == 62
        Debug.Notification("F4 détecté !")
        
        IaMod = !IaMod

        if IaMod
            Debug.Notification("IaMod activé")
            Game.DisablePlayerControls(abMovement = true, abFighting = True, abCamSwitch = false, abLooking = True, abSneaking = True, abMenu = true, abActivate = true)
        Else 
            Debug.Notification("IaMod désactivé")
            Game.EnablePlayerControls()
        EndIf

        

    Else
        Debug.Notification("touche : "+ keyCode)
    EndIf
EndEvent