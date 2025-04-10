loadstring(game:HttpGet("https://raw.githubusercontent.com/realhoangtiger03944/cc-dumamay/refs/heads/main/UItiger0000.lua"))()
  
local Window = MakeWindow({
    Hub = {
        Title = "Hoang Tiger | Tổng Hợp v0.3.4",
        Animation = "Tổng hợp ProVIP🤡"
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

local Tab1o = MakeTab({Name = "HT script"})
local Tab2o = MakeTab({Name = "Main2"})

-- Tab 1
AddButton(Tab1o, {
    Name = "HoangTigerHub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realhoangtiger03944/MainI/refs/heads/main/Main-Loading-UI"))()
    end
})

AddButton(Tab1o, {
    Name = "Tigerv0.2",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realhoangtiger03944/MainI/refs/heads/main/Tigerv0.2.lua"))()
    end
})

AddButton(Tab1o, {
    Name = "Hoang Tiger CMDS",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realhoangtiger03944/Thmain/refs/heads/main/obf_cmdstiger.lua"))()
    end
})

--tab 2
AddButton(Tab1o, {
    Name = "ASTRAL",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Overgustx2/Main/refs/heads/main/BloxFruits_25.html"))()
    end
})

AddButton(Tab2o, {
    Name = "Redz Hub",
    Callback = function()
        local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/newredz/BloxFruits/refs/heads/main/Source.luau"))(Settings)
    end
})
