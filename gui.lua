local function printLogo()
    print("   _____                 ____              __ ")
    print("  / ___/___  _______  __/ __ )____  ____  / /_")
    print("  \\__ \\/ _ \\/ ___/ / / / __  / __ \\/ __ \\/ __/")
    print(" ___/ /  __/ /__/ /_/ / /_/ / /_/ / /_/ / /_  ")
    print("/____/\\___/\\___/\\____/_____/\\____/\\____/\\__/  ")
    print("Alpha-1")
end

local function keyLogo()
    print(" ____ ____ ____ ____ ____ ____ ____ ____ ")
    print("||S |||e |||c |||u |||B |||o |||o |||t ||")
    print("||__|||__|||__|||__|||__|||__|||__|||__||")
    print("|/__\\|/__\\|/__\\|/__\\|/__\\|/__\\|/__\\|/__\\|")
    print("Alpha-1")
end

local function CUI(m)
    n=1
    l=#m
    while true do
        term.clear()
        term.setCursorPos(1,1)
        printLogo()
        --keyLogo()
        print("")
        for i=1, l, 1 do
            if i==n then print("["..m[i].."]") else print("", m[i]) end
        end
        a, b = os.pullEventRaw()
        if a == "key" then
            if b == 200 and n>1 then n=n-1 end
            if b == 208 and n<=2 then n=n+1 end
            if b == 28 then break end
        end
    end
    term.clear()
    term.setCursorPos(1,1)
    return n
end

return { printLogo = printLogo, keyLogo = keyLogo, CUI = CUI }