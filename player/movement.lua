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
end