function i_archery()
    player.x = archery_map.player_x
    player.y = archery_map.player_y
    arrows = {}
end

function u_archery()
    target.x = 60 + cos(time() * target.speed) * target.distance
    if btnp(4) and #arrows == 0 then
        fire_arrow()
    end
    update_arrows()
    if player.x < 16 and player.y <= 70 and player.y >= 50 then
        player.state = "corridor"
        player.x = 63
        player.y = 63
    end
end

function d_archery()
    map(16, 0)
    spr(player.spr, player.x, player.y)
    spr(target.spr, target.x, target.y)
    draw_arrows()
end

function fire_arrow()
    add(arrows, { player.x, player.y - 5 })
end

function draw_arrows()
    for i = 1, #arrows do
        spr(3, arrows[i][1], arrows[i][2])
    end
end

function update_arrows()
    local retained_arrows = {}
    for i = 1, #arrows do
        arrows[i][2] -= arrow.speed
        if arrows[i][2] >= 0 then
            add(retained_arrows, arrows[i])
        end
    end
    arrows = retained_arrows
end