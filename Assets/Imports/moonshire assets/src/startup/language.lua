lcl = {}
lcl.lang = "en"

function lcl:init()
    -- load english by default
    lcl.lang = "en"
    require("lcl/dialogue/en")
    require("lcl/items/en")
    require("lcl/narration/en")
    require("lcl/system/en")

    if settings.lang and settings.lang ~= "en" then
        lcl.lang = settings.lang

        local lclDialogue = require("lcl/dialogue/" .. lcl.lang)
        if lclDialogue then
            for k,v in pairs(lclDialogue) do lcl.dialogue[k] = v end
        end

        local lclItems = require("lcl/items/" .. lcl.lang)
        if lclItems then
            for k,v in pairs(lclItems) do lcl.items[k] = v end
        end

        local lclNarration = require("lcl/narration/" .. lcl.lang)
        if lclNarration then
            for k,v in pairs(lclNarration) do lcl.narration[k] = v end
        end

        local lclSystem = require("lcl/system/" .. lcl.lang)
        if lclSystem then
            for k,v in pairs(lclSystem) do lcl.system[k] = v end
        end
    end

end
