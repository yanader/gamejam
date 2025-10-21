function move()
    if btn(0) then
        player.x -= 1
    end
    if btn(1) then
        player.x += 1
    end
    if btn(2) then
        player.y -= 1
    end
    if btn(3) then
        player.y += 1
    end
    if player.y <= 8 then
        player.y = 8
    end
    if player.y >= 115 then
        player.y = 115
    end
    if player.x <= 8 and (player.y < 64 or player.y > 72) then
        player.x = 8
    end
    if player.x >= 114 and (player.y < 64 or player.y > 72) then
        player.x = 114
    end
end