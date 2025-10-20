function _init()
end

function _update()
    move()
end

function _draw()
    cls()
    spr(player.spr, player.x, player.y)
end