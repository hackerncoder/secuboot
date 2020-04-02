local protected_file = { "/startup", "/secubios/.protectfile" }
local old_fsOpen = _G["fs"]["open"]

_G["fs"]["open"] = function (path, mode)
    mode = string.lower(mode)
    for i=1, #protected_file do
        if shell.resolveProgram(path) == shell.resolveProgram(protected_file[i]) and (mode ~= "r" and mode ~= "rb") then
            return nil
        end
    end
    
    return old_fsOpen (path, mode)
end