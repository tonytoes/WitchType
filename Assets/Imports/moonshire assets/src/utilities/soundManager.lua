-- NOTE: The entire point of this file is to handle situations where
--       the same sound effect is played multiple times in the same
--       frame. This is a problem because the sound effect will
--       overlap itself, and sound like loud garbage.

sem = {} -- sound effect manager
sem.sounds = {}

-- 'sounds' look like this: [sound effect, args:{ volume, pitch, pitchRand }]

function sem:playSound(sound, args)
    if not sound then return end
    local snd = {sound, args}
    table.insert(sem.sounds, snd)
end

function sem:playAllSounds()
    local finalList = {}
    for _,s in ipairs(sem.sounds) do
        local snd = s[1]
        local args = s[2]
        local volume = 1
        local pitch = 1
        local pitchRand = 0 -- random amount above or below pitch
        if args then
            if args.volume then volume = args.volume end
            if args.pitch then pitch = args.pitch end
            if args.pitchRand then pitchRand = args.pitchRand end
        end

        if not finalList[snd] then
            finalList[snd] = {volume, pitch, pitchRand}
        else
            local oldVol = finalList[snd][1]
            local oldPitch = finalList[snd][2]
            local oldPitchRand = finalList[snd][3]
            local newVol = math.max(oldVol, volume)
            local newPitch = math.max(oldPitch, pitch)
            local newPitchRand = math.min(oldPitchRand, pitchRand)
            finalList[snd] = {newVol, newPitch, newPitchRand}
        end
    end

    for snd,args in pairs(finalList) do
        local volume = args[1]
        local pitch = args[2]
        local pitchRand = args[3]
        if pitchRand and pitchRand > 0 then
            pitch = pitch + math.random()*pitchRand*2 - pitchRand
        end
        dj.play(snd, "static", "effect", volume, pitch)
    end

    removeTable(sem.sounds)
end
