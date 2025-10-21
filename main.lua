function _init()
    i_corridor()
    i_archery()
    i_fruit()
end

function _update()
    move()
    if player.state == "corridor" then
        u_corridor()
    else
        if player.state == "archery" then
            u_archery()
        else
            if player.state == "fruit" then
                u_fruit()
            end
        end
    end
end

function _draw()
    cls()
    if player.state == "corridor" then
        d_corridor()
    else
        if player.state == "archery" then
            d_archery()
        else
            if player.state == "fruit" then
                d_fruit()
            end
        end
    end
end