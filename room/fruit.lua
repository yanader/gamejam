
function i_fruit()
    smashed_fruits = {}
    fruits = {2, 3, 4, 5, 6}
    fruit1 = 0
    fruit2 = 0
    fruit3 = 0
    ticker = 1
end
    
function u_fruit()
    ticker += 1
    if #smashed_fruits == 0 then
        if ticker % 20 == 0 then
            fruit1 = rnd(fruits)
            fruit2 = rnd(fruits)
            fruit3 = rnd(fruits)
        end
        if btnp(5) then
            add(smashed_fruits, fruit1)  
        end
    end
    if #smashed_fruits == 1 then
        print('cabbage', 10, 10, 10)
        if ticker % 20 == 0 then
            fruit2 = rnd(fruits)
            fruit3 = rnd(fruits)
        end
        if btnp(5) then
            add(smashed_fruits, fruit2)  
        end
    end
    if #smashed_fruits == 2 then
        if ticker % 20 == 0 then
            fruit3 = rnd(fruits)
        end
        if btnp(5) then
            add(smashed_fruits, fruit3)  
        end
    end
    -- if #smashed_fruits > 2 then
    --     -- game end condition
    --     ticker = 1
    -- end

end


function d_fruit()
    print(smashed_fruits[1], 20, 10, 10)
    print(fruit1, 20, 15, 1)
    print(ticker, 20, 30, 10)
            spr(fruit1, 30, 30)
            spr(fruit2, 60, 30)
            spr(fruit3, 90, 30)
    print('press x to smash each fruit', 10, 110, 10) 
end