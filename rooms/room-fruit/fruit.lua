function i_fruit()
    smashed_fruits = {16, 0, 0}
    fruits = { 2, 3, 4, 5, 6 }
    fruit1 = 0
    fruit2 = 0
    fruit3 = 0
    ticker = 1
    message = 'press x to smash each fruit'
end

function u_fruit()
    ticker += 1
    if smashed_fruits[1] == 16 then
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
                    if check_match(smashed_fruits) then
                        message = "you win!"
                        fruit_won = true
                    else
                    message = "you lose!  press z to reset"
                    end
                
                end
            end
        end
    end

    if btnp(4) then
        smashed_fruits = { 16, 0, 0}
        message = 'press x to smash each fruit'
    end

    

    if player.x > 104 and player.y <= 70 and player.y >= 50 then
        player.state = "corridor"
        player.x = 63
        player.y = 63
    end
    if player.x <= 8 then
        player.x = 8
    end
end

function d_fruit()
    map(32, 0)
    spr(player.spr, player.x, player.y)
    spr(fruit1, 30, 30)
    spr(fruit2, 60, 30)
    spr(fruit3, 90, 30)
    print(message, 10, 110, 10)
end


function check_match(a)
    local first = a[1]
    for i = 2, #a do
        if a[i] ~= first then
            return false
        end
    end
    return true
end