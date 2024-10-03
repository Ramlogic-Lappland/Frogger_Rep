function love.load()

screenWidth = love.graphics.getWidth()
screenHeight = love.graphics.getHeight()
-- SCREEN HEIGHT = 600 & WIDTH = 800

-- IMAGES LOAD
frogImage = love.graphics.newImage("res/frogx2ver2.png")
hearth = love.graphics.newImage("res/hearth.png")
background = love.graphics.newImage("res/Background.png")
chatBox = love.graphics.newImage("res/box2.png")
crocImage = love.graphics.newImage("res/croc.png")
ouchImage = love.graphics.newImage("res/ouch2.png")
gameOverImage = love.graphics.newImage("res/GameOver.png")
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
helloMsgX = frogX - 160
helloMsgY = frogY - 40
ouchMsgX = frogX + 40
ouchMsgY = helloMsgY
helloBoxX = helloMsgX - 20
helloBoxY= helloMsgY - 15
-- END MESSAGE

--CROC
crocWidth = crocImage:getWidth() / 2
crocHeight = crocImage:getHeight() / 2
crocStartPosX = 0 - crocWidth * 2
croc1Y = screenHeight - crocHeight * 2
croc1X = crocStartPosX
-- END CROC

-- BOOLS
notShowMsg = false
gameOver = false
win = false
ouchMsg = false
-- BOOLS
end

function love.update(dt)

    if (gameOver == true) then
        if love.keyboard.isDown("r") then
            gameOver = false
            notShowMsg = false
            ouchMsg = false
            croc1X = crocStartPosX
            frogX = frogStartX
            frogY = frogStartY
            frogLives = 3
        end
    end

if (gameOver == false) then
if (win == false) then 

    if checkCollision(croc1X, croc1Y, crocWidth, crocHeight, frogX, frogY, frogWidth, frogHeight) then
        frogLives = frogLives -1
        croc1X = crocStartPosX
        frogX = frogStartX
        frogY = frogStartY
        ouchMsg = true
    end

    if (frogLives < 1) then
        gameOver = true
    end

    if (croc1X < screenWidth + crocWidth ) then
        croc1X = croc1X + frogSpeed * dt
    elseif
    (croc1X >= screenWidth + crocWidth ) then
        croc1X = crocStartPosX
    end

    if love.keyboard.isDown("right")  then --MOVEMENT IF START
        if (frogX < screenWidth - frogWidth ) then
            frogX = frogX + frogSpeed * dt
            if (ouchMsg == true) then 
                ouchMsg = false
            end
            if (notShowMsg == false) then
                notShowMsg = true
            end
        end
    elseif
        love.keyboard.isDown("left")  then
        if (frogX > 0 ) then
          frogX = frogX - frogSpeed * dt
          if (ouchMsg == true) then 
            ouchMsg = false
        end
          if (notShowMsg == false) then
            notShowMsg = true
        end
        end
    elseif
        love.keyboard.isDown("up")  then
        if (frogY > 0 ) then
            frogY = frogY - frogSpeed * dt
            if (ouchMsg == true) then 
                ouchMsg = false
            end
            if (notShowMsg == false) then
                notShowMsg = true
            end
        end
    elseif
        love.keyboard.isDown("down") then
        if (frogY < screenHeight - frogHeight ) then
            frogY = frogY + frogSpeed * dt
            if (ouchMsg == true) then 
                ouchMsg = false
            end
            if (notShowMsg == false) then
                notShowMsg = true
            end
        end
    end -- MOVEMENT IF END

end-- WIN  
end-- GAME OVER
end-- END UPDATE


function love.draw()
    love.graphics.draw(background, 0, 0)

    love.graphics.draw(hearth, 0, 0)
    love.graphics.print( "X"..frogLives, 40, 5)

    love.graphics.draw(frogImage, frogX, frogY)
    love.graphics.draw(crocImage, croc1X, croc1Y, o , 0.5, 0.5)
    
    if (ouchMsg == true) then
        love.graphics.draw(ouchImage, ouchMsgX, ouchMsgY)
    end
    if (notShowMsg == false) then
        love.graphics.draw(chatBox, helloBoxX, helloBoxY)
        love.graphics.print( {green ,"Hello, Im Frog, USE the ARROW KEYS to MOVE"}, helloMsgX, helloMsgY)
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