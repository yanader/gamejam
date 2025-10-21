function i_fruit()
    smashed_fruits = { 0, 0, 0 }
    fruits = { 2, 3, 4, 5, 6 }
    fruit1 = 0
    fruit2 = 0
    fruit3 = 0
    ticker = 1
end

function u_fruit()
    ticker += 1
    if smashed_fruits[1] == 0 then
        if ticker % 20 == 0 then
            fruit1 = rnd(fruits)
            fruit2 = rnd(fruits)
            fruit3 = rnd(fruits)
        end
        if btnp(5) then
            smashed_fruits[1] = fruit1
        end
    else
        if smashed_fruits[1] ~= 0 and smashed_fruits[2] == 0 then
            if ticker % 20 == 0 then
                fruit2 = rnd(fruits)
                fruit3 = rnd(fruits)
            end
            if btnp(5) then
                smashed_fruits[2] = fruit2
            end
        else
            if smashed_fruits[2] ~= 0 and smashed_fruits[3] == 0 then
                if ticker % 20 == 0 then
                    fruit3 = rnd(fruits)
                end
                if btnp(5) then
                    smashed_fruits[3] = fruit3
                    ticker = 0
                end
            end
        end
    end
    if player.x > 104 and player.y <= 70 and player.y >= 50 then
        player.state = "corridor"
        player.x = 63
        player.y = 63
    end
end

function d_fruit()
    map(32, 0)
    spr(player.spr, player.x, player.y)
    spr(fruit1, 30, 30)
    spr(fruit2, 60, 30)
    spr(fruit3, 90, 30)
    print('press x to smash each fruit', 10, 110, 10)
end