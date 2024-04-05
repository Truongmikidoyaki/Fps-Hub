local function applyOptimizations()
    local workspace = game.Workspace
    local lighting = game.Lighting
    local terrain = workspace.Terrain
    local starterGui = game:GetService("StarterGui")

    terrain.WaterWaveSize = 0
    terrain.WaterWaveSpeed = 0
    terrain.WaterReflectance = 0
    terrain.WaterTransparency = 0

    lighting.GlobalShadows = false
    lighting.FogEnd = 9e9
    lighting.Brightness = 0

    settings().Rendering.QualityLevel = "Level01"

    for _, descendant in pairs(game:GetDescendants()) do
        if descendant:IsA("BasePart") or descendant:IsA("MeshPart") then
            descendant.Material = "SmoothPlastic"
            descendant.Reflectance = 0
            descendant.CastShadow = false
        elseif descendant:IsA("Decal") then
            descendant.Transparency = 1
        elseif descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") then
            descendant.Lifetime = NumberRange.new(0)
        elseif descendant:IsA("Explosion") then
            descendant.BlastPressure = 1
            descendant.BlastRadius = 1
        elseif descendant:IsA("Fire") or descendant:IsA("SpotLight") or descendant:IsA("Smoke") then
            descendant.Enabled = false
        end
    end

    for _, effect in pairs(lighting:GetChildren()) do
        if effect:IsA("PostEffect") or effect:IsA("DepthOfFieldEffect") then
            effect.Enabled = false
        end
    end

    setclipboard("https://discord.com/invite/8DH3hvQA6x")

    starterGui:SetCore("SendNotification", {
        Title = "FPS Boost",
        Text = "The FPS Boost has applied!\nDiscord link copied to clipboard!",
        Duration = 7,
        Style = {
            Title = {
                Font = Enum.Font.SourceSansBold,
                TextSize = 20,
                TextStrokeTransparency = 0,
                TextColor = Color3.new(1, 1, 1),
            },
            Background = {
                Transparency = 0.1,
                BackgroundColor3 = Color3.new(0, 0.7, 1),
                BorderSizePixel = 0,
            },
        },
    })

    print("The FPS Boost has applied!")
    print("Discord link copied to clipboard!")
    print("Made by entity. Enjoy the ultimate performance boost!")
end

applyOptimizations()

local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i,v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("MeshPart") then
        v.Material = "Plastic"
v.Reflectance = 0
elseif v:IsA("Decal") and decalsyeeted then 
v.Transparency = 1
elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then 
v.Lifetime = NumberRange.new(0)
    end
end