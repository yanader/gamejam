function i_corridor()
    player = {
        x = 65,
        y = 65,
        spr = 1,
        state = "corridor"
    }
end

function u_corridor()
    if player.x < 1 and player.y <= 70 and player.y >= 50 then
        player.state = "fruit"
        player.x = 63
        player.y = 63
    else
        if player.x > 119 and player.y <= 70 and player.y >= 50 then
            player.state = "archery"
            player.x = 63
            player.y = 63
        end
    end
end

function d_corridor()
    map(0, 0)
    spr(player.spr, player.x, player.y)
end