local clientPlants = workspace:WaitForChild("ClientPlants")

local fruits = getgenv().FruitList or {}

for _, word in ipairs(words) do
    for _, model in ipairs(clientPlants:GetChildren()) do
        if model:IsA("Model") and string.find(string.lower(model.Name), string.lower(word)) then
            for _, subModel in ipairs(model:GetChildren()) do
                if subModel:IsA("Model") and string.find(string.lower(subModel.Name), "fruit") then
                    if not subModel:FindFirstChildOfClass("Highlight") then
                        local highlight = Instance.new("Highlight")
                        highlight.FillColor = Color3.fromRGB(255, 0, 225)
                        highlight.OutlineColor = Color3.fromRGB(255, 0, 225)
                        highlight.FillTransparency = 0
                        highlight.OutlineTransparency = 0
                        highlight.Parent = subModel
                    end
                end
            end
        end
    end
end
