-- BLUE LOCK RIVALS MOBILE - DRIBLE INFINITO + ULTIMATE INFINITA

local player = game.Players.LocalPlayer
local replicatedStorage = game:GetService("ReplicatedStorage")
local skillFolder = replicatedStorage:WaitForChild("Skills")

-- Skills comuns
local skills = {
    Dribble = "AccelerationSkill",  -- Aceleração (drible)
    Ultimate = "AwakeningSkill"      -- Modo Ultimate
}

-- Função para usar as skills
local function useSkill(skillName)
    local skillEvent = skillFolder:FindFirstChild(skillName)
    if skillEvent then
        skillEvent:FireServer()
    else
        warn("Skill não encontrada:", skillName)
    end
end

-- Criar a interface de botões
local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "SkillButtonsMobile"

local dribbleBtn = Instance.new("TextButton", screenGui)
dribbleBtn.Size = UDim2.new(0, 120, 0, 50)
dribbleBtn.Position = UDim2.new(0.75, 0, 0.7, 0)
dribbleBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
dribbleBtn.Text = "DRIBLE"
dribbleBtn.TextScaled = true
dribbleBtn.TextColor3 = Color3.new(1,1,1)

local ultiBtn = Instance.new("TextButton", screenGui)
ultiBtn.Size = UDim2.new(0, 120, 0, 50)
ultiBtn.Position = UDim2.new(0.75, 0, 0.8, 0)
ultiBtn.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
ultiBtn.Text = "ULTIMATE"
ultiBtn.TextScaled = true
ultiBtn.TextColor3 = Color3.new(1,1,1)

-- Ações dos botões
dribbleBtn.MouseButton1Click:Connect(function()
    useSkill(skills.Dribble)
end)

ultiBtn.MouseButton1Click:Connect(function()
    useSkill(skills.Ultimate)
end)

print("Drible Infinito + Ultimate Infinita para Celular carregados!")
