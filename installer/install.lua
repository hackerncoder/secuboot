local gui = 'https://raw.githubusercontent.com/hackerncoder/secuboot/master/secuboot/gui.lua'
local protectfile = 'https://raw.githubusercontent.com/hackerncoder/secuboot/master/secuboot/protectfile.lua'
local startup = 'https://raw.githubusercontent.com/hackerncoder/secuboot/master/startup.lua'

if fs.exists("/startup") then
  print("Startup already exists, please delete")
  return
end

local getGui = http.get(gui)
local getPrtFile = http.get(protectfile)
local getStartup = http.get(startup)

if not fs.exists("/secuboot") then
  fs.makeDir("/secuboot")
end

local GuiSave = fs.open("/secuboot/gui","w")
  file.write(getGui.readAll())
  file.close()
end

local PrtFileSave = fs.open("/secuboot/.protectfile","w")
  file.write(getPrtFile.readAll())
  file.close()
end

local StartupSave = fs.open("/startup","w")
  file.write(getStartup.readAll())
  file.close()
end
