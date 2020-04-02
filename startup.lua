local installed = false
if fs.exists("/secuboot") then 
    installed = true
    options={"Start CraftOS   ", "Harden Security "} 
else 
    options={"Start CraftOS   ", "Harden Security ", "Install SecuBios"} 
end

local gui = require("secuboot.gui")

while true do

local n=gui.CUI(options)
if n == 1 then
    if installed then
        --os.run({}, "/secuboot/.protectfile")
    end
    return
else if n == 2 then
    if installed then
        os.run({}, "/secuboot/.sbsetting")
    else
        os.run({}, "/disk/secuboot/.sbsetting")
    end
else if n == 3 then
    os.run({}, "/disk/secuboot/.install")
    os.reboot()
end end end
end