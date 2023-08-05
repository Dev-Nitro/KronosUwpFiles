getgenv().getscriptclosure = function(obj, methodName)
    local method = obj[methodName]
    if type(method) == "function" then
        return function(...)
            local args = {...}
            return method(unpack(args))
        end
    else
        error("Method '" .. methodName .. "' not found or not a valid function.")
    end
end

getgenv().getcallbackvalue = function(callbackObj, callbackName)
    if not callbackObj or type(callbackName) ~= "string" then
        error("Invalid callback object or name provided.")
    end

    local callback = callbackObj[callbackName]
    if type(callback) == "function" then
        return callback
    else
        error("Invalid callback function.")
    end
end

getgenv().setscriptable = function(obj, propertyName, isScriptable)
    if type(obj) ~= "userdata" or not obj:IsA("Instance") then
        error("Invalid object provided. Expected userdata (Instance).")
    elseif type(propertyName) ~= "string" or propertyName == "" then
        error("Invalid property name provided.")
    elseif type(isScriptable) ~= "boolean" then
        error("Invalid isScriptable flag provided. Expected a boolean.")
    end

    local wasScriptable = isscriptable(obj, propertyName)
    obj:SetAttribute(propertyName, isScriptable)

    return wasScriptable
end

getgenv().setclipboard = function(clipboardtxt)
    writefile("setclipboard.reader", tostring(clipboardtxt))
end

getgenv().identifyexecutor = function()
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

--ProtoSmasher
getgenv().make_writeable = function(t) setreadonly(t, false) end
getgenv().make_readonly = function(t) setreadonly(t, true) end
getgenv().is_readonly = isreadonly
getgenv().is_writeable = function(t) return not isreadonly(t) end
getgenv().get_nil_instances = getnilinstances
getgenv().click_detector = fireclickdetector
getgenv().is_c_closure = iscclosure
getgenv().is_l_closure = islclosure
