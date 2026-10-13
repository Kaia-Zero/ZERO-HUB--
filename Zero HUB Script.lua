local scripts = {
    [93978595733734] = "https://raw.githubusercontent.com/Kaia-Zero/Zero-HUB./refs/heads/main/Zero_HUB.lua",
    [138103330716004] = "https://raw.githubusercontent.com/Kaia-Zero/Zero-HUB/refs/heads/main/3AM.lua",
    [537413528] = "https://raw.githubusercontent.com/Kaia-Zero/Zero-HUB/refs/heads/main/%E0%B8%AA%E0%B8%A3%E0%B9%89%E0%B8%B2%E0%B8%87%E0%B9%80%E0%B8%A3%E0%B8%B7%E0%B8%AD.lua",
    [155615604] = "https://api.flexozy.xyz/raw/VAwAU9Tp",
}

local placeId = game.PlaceId
local url = scripts[placeId]

if not url or url == "" then
    warn("ไม่พบสคริปต์สำหรับ PlaceId:", placeId)
    return
end

local source = game:HttpGet(url)
local fn, err = loadstring(source)

if not fn then
    warn("Compile Error:", err)
    return
end

fn()
