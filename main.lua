function _init()
    i_fruit()
end

function _update()
    move()
    u_fruit()
end

function _draw()
    cls()
    map(32, 0)
    spr(player.spr, player.x, player.y)
    d_fruit()
end