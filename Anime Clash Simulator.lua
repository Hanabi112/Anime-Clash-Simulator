if PlaceId == 7842028704 then
end
wait(.1)
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/VenyxUI/main/Reuploaded"))() --someone reuploaded it so I put it in place of the original back up so guy can get free credit.
local venyx = library.new("Ability Hub", 5013109572)
local Main = venyx:addPage("Main", 5012544693)
local TP = venyx:addPage("Teleport", 5012544693)
local Misc = venyx:addPage("Misc", 5012544693)
local AutoHit = Main:addSection("Main")
-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end

colors:addKeybind("Toggle Keybind", Enum.KeyCode.RightControl, function()
print("Activated Keybind")
venyx:toggle()
end, function()
print("Changed Keybind")
end)

AutoHit:addToggle("Auto Hit", _G.Auto_Hit, function(Value)
_G.Auto_Hit = Value

while wait(.1) do
if _G.Auto_Hit then
 local args = {
    [1] = "Stats",
    [2] = "TrainStat",
    [3] = "Chakra"
}

game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))   
end
end
end)

AutoHit:addToggle("Auto Sell", _G.Auto_Sell, function(Value)
_G.Auto_Sell = Value
    while wait(.1) do
        if _G.Auto_Sell then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(256.32629394531, 12757.068359375, 681.27337646484)
        end
    end
end)

AutoHit:addButton("Sell", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(256.32629394531, 12716.446289062, 681.27337646484)
end)

AutoHit:addButton("Shop", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(257.12155151367, 12716.642578125, 785.76293945312)
end)

local Pet = Main:addSection("Pet Shop")

Pet:addToggle("AutoGrey Scroll", nil, function(Value)
    Grey_Scroll = Value
    while wait(.1) do
        if Grey_Scroll then
            local args = {
                [1] = "Pets",
                [2] = "BuyPet",
                [3] = {
                    ["ShopId"] = "Grey Scroll"
                }
            }
            
            game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
        end
    end
end)

Pet:addToggle("AutoBlue Scroll", nil, function(Value)
    Blue_Scroll = Value
    while wait(.1) do
        if Blue_Scroll then
            local args = {
                [1] = "Pets",
                [2] = "BuyPet",
                [3] = {
                    ["ShopId"] = "Blue Scroll"
                }
            }
            
            game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
        end
    end
end)

Pet:addButton("Grey Scroll", function()
    local args = {
        [1] = "Pets",
        [2] = "BuyPet",
        [3] = {
            ["ShopId"] = "Grey Scroll"
        }
    }
    
    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Pet:addButton("Blue Scroll", function()
    local args = {
        [1] = "Pets",
        [2] = "BuyPet",
        [3] = {
            ["ShopId"] = "Blue Scroll"
        }
    }
    
    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

local Zone = TP:addSection("Island")

Zone:addToggle("AutoUnlock Island", _G.AutoUnlock_Island, function(Value)
    _G.AutoUnlock_Island = Value
    if _G.AutoUnlock_Island then
        wait(.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(204.313, 1019.78, 709.693)
        wait(.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(225.489, 3094.47, 706.057)
        wait(.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(215.422, 6157.2, 731.442)
        wait(.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(182.713, 9591.26, 751.096)
        wait(.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(202.396, 12763.5, 739.269)
    end
end)

Zone:addButton("First Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(246.92568969727, 4.1475296020508, 495.80648803711)
end)

Zone:addButton("Marine Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(204.313, 1019.78, 709.693)
end)

Zone:addButton("Pirate Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(225.489, 3094.47, 706.057)
end)

Zone:addButton("Outskirts City Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(215.422, 6157.2, 731.442)
end)

Zone:addButton("Namekian Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(182.713, 9591.26, 751.096)
end)

Zone:addButton("Demon Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(202.396, 12763.5, 739.269)
end)

local Server = Misc:addSection("Server")

Server:addButton("Server Hop", function()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                -- delfile("NotSameServers.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(.1)
                end
            end
        end
    end
    function Teleport() 
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end)

Server:addButton("Rejoin", function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").localPlayer)
end)
