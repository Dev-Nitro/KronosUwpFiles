getgenv().setclipboard = function(clipboardtxt)
    writefile("setclipboard.reader", tostring(clipboardtxt))
end

getgenv().identifyexecutor = function()
    return "Kronos UWP"
end

getgenv().getexecutorname = function()
    return "Kronos UWP"
end

--Compatibility

--SynapseX
getgenv().syn_mouse1press = mouse1press
getgenv().syn_mouse2click = mouse2click
getgenv().syn_mousemoverel = movemouserel
getgenv().syn_mouse2release = mouse2up
getgenv().syn_mouse1release = mouse1up
getgenv().syn_mouse2press = mouse2down
getgenv().syn_mouse1click = mouse1click
getgenv().syn_newcclosure = newcclosure
getgenv().syn_clipboard_set = setclipboard
getgenv().syn_clipboard_get = getclipboard
getgenv().syn_islclosure = islclosure
getgenv().syn_iscclosure = iscclosure
getgenv().table.lock = makereadonly
getgenv().table.islock = isreadonly
getgenv().table.unlock = makewriteable
getgenv().syn_getsenv = getsenv
getgenv().syn_getscripts = getscripts
getgenv().syn_getgenv = getgenv
getgenv().syn_getinstances = getinstances
getgenv().syn_getreg = getreg
getgenv().syn_getrenv = getrenv
getgenv().syn_getnilinstances = getnilinstances
getgenv().syn_fireclickdetector = fireclickdetector
getgenv().syn_getgc = getgc
