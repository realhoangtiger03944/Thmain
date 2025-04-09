loadstring(game:HttpGet("https://raw.githubusercontent.com/realhoangtiger03944/cc-dumamay/refs/heads/main/UItiger0000.lua"))()
  
local Window = MakeWindow({
    Hub = {
        Title = "Hoang Tiger | Tổng Hợp v0.3.3",
        Animation = "Cre: Hoang-Tiger 🐅"
    },
    Key = {
        KeySystem = false,
        Title = "Nhập key để tiếp tục🌚🥵",
        Description = "Administrator | HuynhNgocHoang",
        KeyLink = "",
        Keys = {""},
        Notifi = {
            Notifications = true,
            CorrectKey = "Script Đang Chạy!",
            Incorrectkey = "Key không tồn tại!",
            CopyKeyLink = "Đã sao chép link Key"
        }
    }
})

MinimizeButton({
    Image = "http://www.roblox.com/asset/?id=128504363561748",
    Size = {47, 47},
    Color = Color3.fromRGB(10, 10, 10),
    Corner = true,
    Stroke = false,
    StrokeColor = Color3.fromRGB(255, 0, 0)
})

local Tab1o = MakeTab({Name = "Main"})

-- Tab Main
AddButton(Tab1o, {
    Name = "Redz Hub",
    Callback = function()
        local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/newredz/BloxFruits/refs/heads/main/Source.luau"))(Settings)
    end
})

AddButton(Tab1o, {
    Name = "Hoang-Tiger-Hub v0.1",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Hoang223-design/Main-Loading_UI-1/refs/heads/main/HoangTiger-Main-UI.lua"))()
    end
})

AddButton(Tab1o, {
    Name = "Hoang-Tiger-Hub FaiFai v0.2",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Hoang223-design/BF-Tigerfifai/refs/heads/main/HoangTiger-Main-Loading.lua"))()
    end
})

AddButton(Tab1o, {
    Name = "Hoang Tiger CMDS",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realhoangtiger03944/Thmain/refs/heads/main/obf_cmdstiger.lua"))()
    end
})

AddButton(Tab1o, {
    Name = "ASTRAL",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Overgustx2/Main/refs/heads/main/BloxFruits_25.html"))()
    end
})

AddButton(Tab1o, {
    Name = "Banana Cat Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kimprobloxdz/Banana-Free/refs/heads/main/Protected_5609200582002947.lua.txt"))()
    end
})y