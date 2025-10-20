function i_archery()
    player.x = archery_map.player_x
    player.y = archery_map.player_y
    arrows = {}
end

function u_archery()
    target.x = 60 + cos(time() * target.speed) * target.distance
    if btnp(4) then
        fire_arrow()
    end
    update_arrows()
end

function d_archery()
    map(16, 0)
    spr(player.spr, player.x, player.y)
    spr(target.spr, target.x, target.y)
    draw_arrows()
    print(#arrows)
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