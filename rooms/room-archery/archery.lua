function i_archery()
    player.x = archery_map.player_x
    player.y = archery_map.player_y
    arrows = {}
end

function u_archery()
    target.x = 60 + cos(time() * target.speed) * target.distance
    if btnp(5) and #arrows == 0 then
        fire_arrow()
    end
    update_arrows()
    if player.x < 16 and player.y <= 70 and player.y >= 50 then
        player.state = "corridor"
        player.x = 63
        player.y = 63
    end
    if player.x >= 114 then
        player.x = 114
    end
    if player.y <= 60 then
        player.y = 60
    end
end

function d_archery()
    map(16, 0)
    for i = 8, 112, 8 do
        spr(17, i, 54)
    end
    spr(player.spr, player.x, player.y)
    spr(target.spr, target.x, target.y)
    draw_arrows()
    if player.archery_won == true then
        archery_completed()
    end
end

function fire_arrow()
    -- {x, y, in-flight, hit-target}
    add(arrows, { player.x, player.y - 5, true, false })
end

function draw_arrows()
    for i = 1, #arrows do
        if arrows[i][3] == true or arrows[i][4] == true then
            spr(arrow.spr, arrows[i][1], arrows[i][2])
        end
    end
end

function update_arrows()
    -- check collision
    for i = 1, #arrows do
        if arrows[i][2] == target.y - 1
                and arrows[i][1] >= target.x - 2 and arrows[i][1] <= target.x + 8 then
            arrows[i][3] = false
            arrows[i][4] = true
            player.archery_won = true
        end
    end

    local retained_arrows = {}
    for i = 1, #arrows do
        if arrows[i][4] == true then
            add(retained_arrows, arrows[i])
        end
        if arrows[i][3] == true then
            arrows[i][2] -= arrow.speed
            if arrows[i][2] >= 0 then
                add(retained_arrows, arrows[i])
            end
        end
    end
    arrows = retained_arrows
    for i = 1, #arrows do
        if arrows[i][4] == true then
            arrows[i][1] = target.x
            arrows[i][2] = target.y + 1
        end
    end
end

function archery_completed()
    print("you have won a medal!", 25, 90, 10)
    spr(9, 62, 100)
end