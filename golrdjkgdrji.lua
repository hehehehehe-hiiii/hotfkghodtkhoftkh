-- Console colors
local green = "\x1b[32m"
local red = "\x1b[31m"
local reset = "\x1b[0m"

-- Dummy winner logic (adjust this for real card comparison)
local function isWinner(mySeat)
    return mySeat == 1 -- Change this logic to actual hand comparison
end

Citizen.CreateThread(function()
    print("loaded")

    RegisterNetEvent("sf-txh:spawnCards", function(aaa, acc, mySeat, allCards, eee)
        print("SEAT: " .. tostring(mySeat))

        if isWinner(mySeat) then
            print(green .. "[POKER] You won the hand!" .. reset)
        else
            print(red .. "[POKER] You did not win." .. reset)
        end
    end)
end)
