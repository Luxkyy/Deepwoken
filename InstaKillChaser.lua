game.StarterGui:SetCore("SendNotification", {Title = "Credits!", Text = "Made By Luxky#4758", Icon = "rbxassetid://12471971016", Duration = 5})

local isTrue = false

local TS = game:GetService("TweenService")

function checkifDialogueFrame()
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.DialogueGui:GetDescendants()) do
        if v:FindFirstChild("ChoiceSheet") and v.ChoiceSheet:FindFirstChild("ChoiceScroll") and v.ChoiceSheet.ChoiceScroll:FindFirstChild("ChoiceTemplate") and v.ChoiceSheet.ChoiceScroll.ChoiceTemplate.Button.Text == "Ethiron's Wake?" and v.Visible == true then
            isTrue = true
            return v:FindFirstChild("ChoiceSheet").ChoiceScroll.ChoiceTemplate.Button
            else
            isTrue = false
        end
    end
end

repeat
    wait(1)
    checkifDialogueFrame()
    print("False")
until isTrue == true
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
local tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(4.5), {CFrame = CFrame.new(-4900, 600, -4592)})
tween:Play()

delay(4,function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
end)

wait(3)
game.StarterGui:SetCore("SendNotification", {Title = "Notice!", Text = "Click Ethiron's Wake?", Icon = "rbxassetid://9449248979", Duration = 5})
keypress(0x31)
keyrelease(0x31)
