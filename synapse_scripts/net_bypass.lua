-- this was written by myself
local setsimulationradius = setsimulationradius or set_simulation_radius
game:GetService("RunService").Stepped:Connect(function()
    settings().Physics.AllowSleep = false
    if setsimulationradius then setsimulationradius(math.huge*math.huge,math.huge*math.huge) end
end)
-- this code under was copied from HatHub
_G.objs = {}
spoof = function(obj, property, value)
      local s = pcall(function()
            local lol = obj[property]
      end)
      if s then
            table.insert(_G.objs, {obj, property, value})
      end
end
spoof(game.Players.LocalPlayer, "MaximumSimulationRadius", 1000)
spoof(game.Players.LocalPlayer, "SimulationRadius", 1000)
sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius", math.huge)
sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
local NetworkAccess = coroutine.create(function()
    settings().Physics.AllowSleep = false
    game:GetService("RunService").RenderStepped:Wait()
end)
coroutine.wrap(function()
    while true do
        game:GetService("Players").LocalPlayer.ReplicationFocus = workspace
        game:GetService("RunService").Heartbeat:wait()
    end
end)()
-- this code under is written by myself
local setscriptable = setscriptable or set_scriptable
local g = game
local s = g.GetService
function netlessfunc()
    local lplr = game.Players.LocalPlayer
    local chr = lplr.Character
    setscriptable(lplr, "SimulationRadius", true)
    setscriptable(lplr, "MaxSimulationRadius", true)
    local pset = settings().Physics
    pset.AllowSleep = false
    pset.PhysicsEnvironmentalThrottle = Enum['EnviromentalPhysicsThrottle'].Disabled
    lplr.MaximumSimulationRadius = 10000000
    lplr.ReplicationFocus = workspace or Services.Workspace
    for i, v in next, chr:GetChildren() do
       if v.ClassName == "Accessory" then
            coroutine.wrap(function()
                pcall(function()
                    v.Handle.Velocity = Vector3.new(-17.7, 0, -17.7)
                end)
            end)()
        end
    end
end
s(g, "RunService").Stepped:Connect(netlessfunc)
s(g, "RunService").RenderStepped:Connect(netlessfunc)
s(g, "RunService").Heartbeat:Connect(netlessfunc)
local i = 260
local netlessfunc2 = function()
        while game:GetService("RunService").Heartbeat:wait() do
                for _ = 1, i do
                        netlessfunc()
                end
        end
end
netlessfunc2()
