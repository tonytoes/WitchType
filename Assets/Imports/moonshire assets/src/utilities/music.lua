music = {}
music.currentSong = ""
music.timer = 0
music.state = 0 -- 0 = normal, 1 = playing alt

function startMusic(song, loop)
    if music.currentSong ~= song then
        if dj.tweens["music"] then
            dj.tweens["music"]:stop()
            settings.musicVolume = settings.musicMaxVolume
        end
        dj.stop("music")
        music.currentSong = song
        if loop then
            dj.playLoopingSeamless(song, "stream", "music")
        else
            dj.play(song, "stream", "music")
        end
    end
end

function playAltMusic(song, pauseTime)
    if settings.musicMaxVolume <= 0 then return end

    music.state = 1
    dj.play(song, "stream", "altMusic")

    flux.to(settings, 0.25, {musicVolume = 0}):oncomplete( function()
        music.timer = pauseTime
    end)
end

function music:update(dt)
    if self.timer > 0 then
        self.timer = self.timer - dt
    end
    if self.timer < 0 then
        self.timer = 0

        if self.state == 1 then -- alt music
            self.state = 0
            dj.stop("altMusic")
            local max = settings.musicMaxVolume
            if settings.musicMaxVolume > 0 then
                flux.to(settings, 0.5, {musicVolume = max})
            end
        end
    end
end
