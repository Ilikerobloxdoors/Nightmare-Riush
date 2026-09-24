local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Nightmare Rush",

    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/Nightmare-Riush/main/NIGHTMARE%20RUSH.rbxm",

    Speed = 150,
    DelayTime = 4.5,
    HeightOffset = 0,

    CanKill = true,
    KillRange = 40,

    BreakLights = true,
    BackwardsMovement = false,

    FlickerLights = {
        true,
        2.5,
    },

    Cycles = {
        Min = 1,
        Max = 3,
        WaitTime = 1.5,
    },

    CamShake = {
        true,
        {5, 35, 0.2, 1.3},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://10888024922",
            Image2 = "rbxassetid://10888024922",

            Shake = true,

            Sound1 = {
                116282238939992,
                { Volume = 0.5 },
            },

            Sound2 = {
                116282238939992,
                { Volume = 0.5 },
            },

            Flashing = {
                true,
                Color3.fromRGB(132, 1, 1),
            },

            Tease = {
                true,
                Min = 4,
                Max = 4,
            },
        },
    },

    CustomDialog = {
        "You died to Nightmare Rush..."
    },
})

-----[[ Advanced ]]-----

entity.Debug.OnEntitySpawned = function(entityTable)
    print("Nightmare Rush has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Nightmare Rush has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Nightmare Rush has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Nightmare Rush has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Nightmare Rush has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at Nightmare Rush:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died to Nightmare Rush.")
end

------------------------

-- Run the created entity
Creator.runEntity(entity)
