local rs = game:GetService("ReplicatedStorage")
local run = game:GetService("RunService")

local openRemote = rs:FindFirstChild("OpenCase") or rs:FindFirstChild("CaseRemote") or rs:FindFirstChild("Open")
local sellRemote = rs:FindFirstChild("SellAll") or rs:FindFirstChild("SellItem") or rs:FindFirstChild("Sell")
local upgradeRemote = rs:FindFirstChild("Upgrade") or rs:FindFirstChild("UpgradeItem") or rs:FindFirstChild("UpgradeCase")

print("[caser] open:", openRemote, "sell:", sellRemote, "upgrade:", upgradeRemote)

run.Heartbeat:Connect(function()
    if openRemote and openRemote:IsA("RemoteEvent") then
        openRemote:FireServer()
    end
    
    if sellRemote and sellRemote:IsA("RemoteEvent") then
        sellRemote:FireServer("all")
    end
    
    if upgradeRemote and upgradeRemote:IsA("RemoteEvent") then
        upgradeRemote:FireServer()
    end
end)
