function love.load()
    
green = {0, 1, 0, 1} 
screenWidth = love.graphics.getWidth()
screenHeight = love.graphics.getHeight()

frogImage = love.graphics.newImage("res/frogx2.png")
frogWidth = frogImage:getWidth()
frogHeight = frogImage:getHeight()

frogX = (screenWidth / 2) - (frogWidth / 2)
frogY = screenHeight - frogHeight

frogSpeed = 150

end

function love.update(dt)

    if love.keyboard.isDown("right") then
        if (frogX < screenWidth - frogWidth ) then
            frogX = frogX + frogSpeed * dt
        end
    end
    if love.keyboard.isDown("left") then
        if (frogX > 0 ) then
            frogX = frogX - frogSpeed * dt
        end
    end
    if love.keyboard.isDown("up") then
        if (frogY > 0 ) then
            frogY = frogY - frogSpeed * dt
        end
    end
    if love.keyboard.isDown("down") then
        if (frogY < screenHeight - frogHeight ) then
            frogY = frogY + frogSpeed * dt
        end
    end


end

function love.draw()
    love.graphics.draw(frogImage, frogX, frogY)
    love.graphics.print( {green ,"Hello World, Im Frog"}, frogX + 60, frogY - 20)
end

