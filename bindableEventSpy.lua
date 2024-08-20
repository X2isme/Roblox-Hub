local function getFullPath(instance)
    local path = {}
    while instance do
        table.insert(path, 1, instance.Name)
        instance = instance.Parent
    end
    return table.concat(path, "/")
end

local function spyBindableEvent(event)
    -- Connect to the event's signal to spy on when it's fired
    event.Event:Connect(function(...)
        print("BindableEvent fired:", event.Name)
        local args = {...}
        for i, v in ipairs(args) do
            print("Argument " .. i .. ":", v)
        end
        
        -- Print the full path of the event
        print("Path:", getFullPath(event))
    end)
end

-- Function to check and spy on all existing BindableEvents in the game
local function checkExistingBindableEvents()
    for _, instance in ipairs(game:GetDescendants()) do
        if instance:IsA("BindableEvent") then
            spyBindableEvent(instance)
        end
    end
end

-- Spy on new BindableEvents that are added in the future
game.DescendantAdded:Connect(function(instance)
    if instance:IsA("BindableEvent") then
        spyBindableEvent(instance)
    end
end)

-- Initial check for existing BindableEvents
checkExistingBindableEvents()
