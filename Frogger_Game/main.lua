function love.load()

screenWidth = love.graphics.getWidth()
screenHeight = love.graphics.getHeight()
-- SCREEN HEIGHT = 600 & WIDTH = 800

-- IMAGES LOAD
frogImage = love.graphics.newImage("res/frogx2ver2.png")
hearth = love.graphics.newImage("res/hearth.png")
background = love.graphics.newImage("res/Background.png")
crocImage = love.graphics.newImage("res/croc.png")
ouchImage = love.graphics.newImage("res/ouch2.png")
gameOverImage = love.graphics.newImage("res/GameOver.png")
winImage = love.graphics.newImage("res/win.png")
pauseImage = love.graphics.newImage("res/pause.png")
-- END IMAGES LOAD

-- FROG
frogWidth = frogImage:getWidth()
frogHeight = frogImage:getHeight()
frogStartX = (screenWidth / 2) - (frogWidth / 2)
frogStartY = screenHeight - frogHeight
frogX = frogStartX
frogY = frogStartY
frogSpeed = 150
frogLives = 3
-- END FROG

-- MESSAGE
green = {0, 1, 0, 1} 
love.graphics.setFont(love.graphics.newFont(20))
ouchMsgX = frogX + 40
ouchMsgY = frogY - 30
-- END MESSAGE

--CROC
crocWidth = crocImage:getWidth() / 2
crocHeight = crocImage:getHeight() / 2
crocStartPosX = 0 - crocWidth * 2

crocSpeed1 = 100
crocSpeed2 = 200
crocSpeed3 = 300
crocSpeed4 = 450

croc1Y = screenHeight - crocHeight * 2
croc1X = crocStartPosX + crocWidth * 6
croc2Y = croc1Y
croc2X = crocStartPosX + crocWidth * 4
croc3Y = croc1Y
croc3X = crocStartPosX + crocWidth * 2
croc4Y = croc1Y
croc4X = crocStartPosX 
croc5Y = croc1Y - crocHeight * 2
croc5X = crocStartPosX
croc6Y = croc1Y - crocHeight * 2
croc6X = crocStartPosX * 3
croc7Y = croc1Y - crocHeight * 4
croc7X = crocStartPosX 
croc8Y = croc1Y - crocHeight * 4
croc8X = crocStartPosX + crocWidth * 4
croc9Y = croc1Y - crocHeight * 5
croc9X = crocStartPosX  - crocWidth * 2
-- END CROC

-- BOOLS
gameOver = false
win = false
pause = true
ouchMsg = false
-- BOOLS
end

function love.keypressed(key)  -- KEY PRESSED ONCE
   
  if key == "p" then
        if (pause == true) then
            pause = false
        elseif (pause == false) then
            pause = true
        end
   end


 
 if key == "r" then
    if (gameOver == true) then
    gameOver = false
    notShowMsg = false
    ouchMsg = false
    win = false
    frogLives = 3
    end
    if (win == true) then
        gameOver = false
        notShowMsg = false
        ouchMsg = false
        win = false
        croc1X = crocStartPosX + crocWidth * 6
        croc2X = crocStartPosX + crocWidth * 4
        croc3X = crocStartPosX + crocWidth * 2
        croc4X = crocStartPosX 
        croc5X = crocStartPosX
        croc6X = crocStartPosX * 3
        croc7X = crocStartPosX 
        croc8X = crocStartPosX + crocWidth * 4
        croc9X = crocStartPosX  - crocWidth * 2
        frogX = frogStartX
        frogY = frogStartY
        frogLives = 3
        end
 end
end -- end key pressed once

function love.update(dt) -- UPDATE

if (gameOver == false) then
if (win == false) then 
if (pause == false) then

    if (frogY < 20) then
        win = true
    end
-- CROC COLLISIONS
    if checkCollision(croc1X, croc1Y, crocWidth, crocHeight, frogX, frogY, frogWidth, frogHeight) then -- col croc 1
        frogLives = frogLives -1
        croc1X = crocStartPosX + crocWidth * 6
        croc2X = crocStartPosX + crocWidth * 4
        croc3X = crocStartPosX + crocWidth * 2
        croc4X = crocStartPosX 
        croc5X = crocStartPosX
        croc6X = crocStartPosX * 3
        croc7X = crocStartPosX 
        croc8X = crocStartPosX + crocWidth * 4
        croc9X = crocStartPosX  - crocWidth * 2
        frogX = frogStartX
        frogY = frogStartY
        ouchMsg = true
    end
    if checkCollision(croc2X, croc2Y, crocWidth, crocHeight, frogX, frogY, frogWidth, frogHeight) then -- col croc 2
        frogLives = frogLives -1
        croc1X = crocStartPosX + crocWidth * 6
        croc2X = crocStartPosX + crocWidth * 4
        croc3X = crocStartPosX + crocWidth * 2
        croc4X = crocStartPosX 
        croc5X = crocStartPosX
        croc6X = crocStartPosX * 3
        croc7X = crocStartPosX 
        croc8X = crocStartPosX + crocWidth * 4
        croc9X = crocStartPosX  - crocWidth * 2
        frogX = frogStartX
        frogY = frogStartY
        ouchMsg = true
    end
    if checkCollision(croc3X, croc3Y, crocWidth, crocHeight, frogX, frogY, frogWidth, frogHeight) then -- col croc 3
        frogLives = frogLives -1
        croc1X = crocStartPosX + crocWidth * 6
        croc2X = crocStartPosX + crocWidth * 4
        croc3X = crocStartPosX + crocWidth * 2
        croc4X = crocStartPosX 
        croc5X = crocStartPosX
        croc6X = crocStartPosX * 3
        croc7X = crocStartPosX 
        croc8X = crocStartPosX + crocWidth * 4
        croc9X = crocStartPosX  - crocWidth * 2
        frogX = frogStartX
        frogY = frogStartY
        ouchMsg = true
    end
    if checkCollision(croc4X, croc4Y, crocWidth, crocHeight, frogX, frogY, frogWidth, frogHeight) then -- col croc 4
        frogLives = frogLives -1
        croc1X = crocStartPosX + crocWidth * 6
        croc2X = crocStartPosX + crocWidth * 4
        croc3X = crocStartPosX + crocWidth * 2
        croc4X = crocStartPosX 
        croc5X = crocStartPosX
        croc6X = crocStartPosX * 3
        croc7X = crocStartPosX 
        croc8X = crocStartPosX + crocWidth * 4
        croc9X = crocStartPosX  - crocWidth * 2
        frogX = frogStartX
        frogY = frogStartY
        ouchMsg = true
    end
    if checkCollision(croc5X, croc5Y, crocWidth, crocHeight, frogX, frogY, frogWidth, frogHeight) then -- col croc 4
        frogLives = frogLives -1
        croc1X = crocStartPosX + crocWidth * 6
        croc2X = crocStartPosX + crocWidth * 4
        croc3X = crocStartPosX + crocWidth * 2
        croc4X = crocStartPosX 
        croc5X = crocStartPosX
        croc6X = crocStartPosX * 3
        croc7X = crocStartPosX 
        croc8X = crocStartPosX + crocWidth * 4
        croc9X = crocStartPosX  - crocWidth * 2
        frogX = frogStartX
        frogY = frogStartY
        ouchMsg = true
    end
    if checkCollision(croc6X, croc6Y, crocWidth, crocHeight, frogX, frogY, frogWidth, frogHeight) then -- col croc 4
        frogLives = frogLives -1
        croc1X = crocStartPosX + crocWidth * 6
        croc2X = crocStartPosX + crocWidth * 4
        croc3X = crocStartPosX + crocWidth * 2
        croc4X = crocStartPosX 
        croc5X = crocStartPosX
        croc6X = crocStartPosX * 3
        croc7X = crocStartPosX 
        croc8X = crocStartPosX + crocWidth * 4
        croc9X = crocStartPosX  - crocWidth * 2
        frogX = frogStartX
        frogY = frogStartY
        ouchMsg = true
    end
    if checkCollision(croc7X, croc7Y, crocWidth, crocHeight, frogX, frogY, frogWidth, frogHeight) then -- col croc 4
        frogLives = frogLives -1
        croc1X = crocStartPosX + crocWidth * 6
        croc2X = crocStartPosX + crocWidth * 4
        croc3X = crocStartPosX + crocWidth * 2
        croc4X = crocStartPosX 
        croc5X = crocStartPosX
        croc6X = crocStartPosX * 3
        croc7X = crocStartPosX 
        croc8X = crocStartPosX + crocWidth * 4
        croc9X = crocStartPosX  - crocWidth * 2
        frogX = frogStartX
        frogY = frogStartY
        ouchMsg = true
    end
    if checkCollision(croc8X, croc8Y, crocWidth, crocHeight, frogX, frogY, frogWidth, frogHeight) then -- col croc 4
        frogLives = frogLives -1
        croc1X = crocStartPosX + crocWidth * 6
        croc2X = crocStartPosX + crocWidth * 4
        croc3X = crocStartPosX + crocWidth * 2
        croc4X = crocStartPosX 
        croc5X = crocStartPosX
        croc6X = crocStartPosX * 3
        croc7X = crocStartPosX 
        croc8X = crocStartPosX + crocWidth * 4
        croc9X = crocStartPosX  - crocWidth * 2
        frogX = frogStartX
        frogY = frogStartY
        ouchMsg = true
    end
    if checkCollision(croc9X, croc9Y, crocWidth, crocHeight, frogX, frogY, frogWidth, frogHeight) then -- col croc 4
        frogLives = frogLives -1
        croc1X = crocStartPosX + crocWidth * 6
        croc2X = crocStartPosX + crocWidth * 4
        croc3X = crocStartPosX + crocWidth * 2
        croc4X = crocStartPosX 
        croc5X = crocStartPosX
        croc6X = crocStartPosX * 3
        croc7X = crocStartPosX 
        croc8X = crocStartPosX + crocWidth * 4
        croc9X = crocStartPosX  - crocWidth * 2
        frogX = frogStartX
        frogY = frogStartY
        ouchMsg = true
    end
-- END CROC COLLISIONS

    if (frogLives < 1) then
        gameOver = true
    end

    -- FIRST LINE OF CROCS
    if (croc1X < screenWidth + crocWidth ) then
        croc1X = croc1X + crocSpeed1 * dt
    elseif
    (croc1X >= screenWidth + crocWidth ) then
        croc1X = crocStartPosX
    end

    if (croc2X < screenWidth + crocWidth ) then
        croc2X = croc2X + crocSpeed1 * dt
    elseif
    (croc2X >= screenWidth + crocWidth  ) then
        croc2X = crocStartPosX 
    end

    if (croc3X < screenWidth + crocWidth ) then
        croc3X = croc3X + crocSpeed1 * dt
    elseif
    (croc3X >= screenWidth + crocWidth ) then
        croc3X = crocStartPosX
    end

    if (croc4X < screenWidth + crocWidth ) then
        croc4X = croc4X + crocSpeed1 * dt
    elseif
    (croc4X >= screenWidth + crocWidth ) then
        croc4X = crocStartPosX
    end
    -- END FIRST LINE OF CROCS

    -- SECOND LINE OF CROCS
    if (croc5X < screenWidth + crocWidth ) then
        croc5X = croc5X + crocSpeed3 * dt
    elseif
    (croc5X >= screenWidth + crocWidth ) then
        croc5X = crocStartPosX
    end

    if (croc6X < screenWidth + crocWidth ) then
        croc6X = croc6X + crocSpeed3 * dt
    elseif
    (croc6X >= screenWidth + crocWidth ) then
        croc6X = crocStartPosX
    end
    -- END SECOND LINE OF CROCS

    -- THIRD LINE OF CROCS
    if (croc7X < screenWidth + crocWidth ) then
        croc7X = croc7X + crocSpeed4 * dt
    elseif
    (croc7X >= screenWidth + crocWidth ) then
        croc7X = crocStartPosX
    end

    if (croc8X < screenWidth + crocWidth ) then
        croc8X = croc8X + crocSpeed4 * dt
    elseif
    (croc8X >= screenWidth + crocWidth ) then
        croc8X = crocStartPosX
    end
    -- END THIRD LINE

    -- FOURTH LINE OF CROCS

    if (croc9X < screenWidth + crocWidth ) then
        croc9X = croc9X + crocSpeed3 * dt
    elseif
    (croc9X >= screenWidth + crocWidth ) then
        croc9X = crocStartPosX
    end
    -- END FOURTH LINE

    if love.keyboard.isDown("right")  then --MOVEMENT IF START
        if (frogX < screenWidth - frogWidth ) then
            frogX = frogX + frogSpeed * dt
            if (ouchMsg == true) then 
                ouchMsg = false
            end
        end
    elseif
        love.keyboard.isDown("left")  then
        if (frogX > 0 ) then
          frogX = frogX - frogSpeed * dt
          if (ouchMsg == true) then 
            ouchMsg = false
          end
        end
    elseif
        love.keyboard.isDown("up")  then
        if (frogY > 0 ) then
            frogY = frogY - frogSpeed * dt
            if (ouchMsg == true) then 
                ouchMsg = false
            end
        end
    elseif
        love.keyboard.isDown("down") then
        if (frogY < screenHeight - frogHeight ) then
            frogY = frogY + frogSpeed * dt
            if (ouchMsg == true) then 
                ouchMsg = false
            end
        end
    end -- MOVEMENT IF END

end-- PAUSE
end-- WIN  
end-- GAME OVER
end-- END UPDATE


function love.draw()
    love.graphics.draw(background, 0, 0)

    love.graphics.draw(hearth, 0, 0)
    love.graphics.print( "X"..frogLives, 40, 5)

    love.graphics.draw(frogImage, frogX, frogY)
    love.graphics.draw(crocImage, croc1X, croc1Y, o , 0.5, 0.5)
    love.graphics.draw(crocImage, croc2X, croc2Y, o , 0.5, 0.5)
    love.graphics.draw(crocImage, croc3X, croc3Y, o , 0.5, 0.5)
    love.graphics.draw(crocImage, croc4X, croc4Y, o , 0.5, 0.5)
    love.graphics.draw(crocImage, croc5X, croc5Y, o , 0.5, 0.5)
    love.graphics.draw(crocImage, croc6X, croc6Y, o , 0.5, 0.5)
    love.graphics.draw(crocImage, croc7X, croc7Y, o , 0.5, 0.5)
    love.graphics.draw(crocImage, croc8X, croc8Y, o , 0.5, 0.5)
    love.graphics.draw(crocImage, croc9X, croc9Y, o , 0.5, 0.5)

    if (pause == true) then
        love.graphics.draw(pauseImage, 100, 50)
    end

    if (ouchMsg == true) then
        love.graphics.draw(ouchImage, ouchMsgX, ouchMsgY)
    end 

    if (win == true) then
        love.graphics.draw(winImage, 250, 200)
    end

    if (gameOver == true) then
        love.graphics.draw(gameOverImage, 250, 150)
    end
end

function checkCollision(x1, y1, w1, h1, x2, y2, w2, h2)
    return x1 < x2 + w2 and
           x2 < x1 + w1 and
           y1 < y2 + h2 and
           y2 < y1 + h1
end