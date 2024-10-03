function love.load()
 -- SCREEN HEIGHT = 600 & WIDTH = 800

green = {0, 1, 0, 1} 
screenWidth = love.graphics.getWidth()
screenHeight = love.graphics.getHeight()

frogImage = love.graphics.newImage("res/frogx2ver2.png")
hearth = love.graphics.newImage("res/hearth.png")
background = love.graphics.newImage("res/Background.png")
chatBox = love.graphics.newImage("res/box2.png")
croc = love.graphics.newImage("res/croc.png")
frogWidth = frogImage:getWidth()
frogHeight = frogImage:getHeight()


frogX = (screenWidth / 2) - (frogWidth / 2)
frogY = screenHeight - frogHeight
moveY = 0
frogSpeed = 150

love.graphics.setFont(love.graphics.newFont(20))

helloMsgX = frogX - 160
helloMsgY = frogY - 40
helloBoxX = helloMsgX - 20
helloBoxY= helloMsgY - 15

crocWidth = croc:getWidth()
crocHeight = croc:getHeight()

crocStartPosX = 0 - crocWidth /2
croc1posY = screenHeight - crocHeight
croc1PosX = crocStartPosX

frogLives = 3
notShowMsg = false
gameOver = false
win = false

end

function love.update(dt)

if (gameOver == false) then
if (win == false) then 


    if (croc1PosX < screenWidth + crocWidth / 2) then
        croc1PosX = croc1PosX + frogSpeed * dt
    elseif
    (croc1PosX >= screenWidth + crocWidth / 2) then
        croc1PosX = crocStartPosX
    end

    if love.keyboard.isDown("right")  then --MOVEMENT IF START
        if (frogX < screenWidth - frogWidth ) then
            frogX = frogX + frogSpeed * dt
            if (notShowMsg == false) then
                notShowMsg = true
            end
        end
    elseif
        love.keyboard.isDown("left")  then
        if (frogX > 0 ) then
          frogX = frogX - frogSpeed * dt
          if (notShowMsg == false) then
            notShowMsg = true
        end
        end
    elseif
        love.keyboard.isDown("up")  then
        if (frogY > 0 ) then
            frogY = frogY - frogSpeed * dt
            if (notShowMsg == false) then
                notShowMsg = true
            end
        end
    elseif
        love.keyboard.isDown("down") then
        if (frogY < screenHeight - frogHeight ) then
            frogY = frogY + frogSpeed * dt
            if (notShowMsg == false) then
                notShowMsg = true
            end
        end
    end -- MOVEMENT IF END

end-- WIN  
end-- GAME OVER
end


function love.draw()
    love.graphics.draw(background, 0, 0)

    love.graphics.draw(hearth, 0, 0)
    love.graphics.print( "X"..frogLives, 40, 5)

    love.graphics.draw(frogImage, frogX, frogY)
    love.graphics.draw(croc, croc1PosX, croc1posY, o , 0.5, 0.5)
    
    if (notShowMsg == false) then
        love.graphics.draw(chatBox, helloBoxX, helloBoxY)
        love.graphics.print( {green ,"Hello, Im Frog, USE the ARROW KEYS to MOVE"}, helloMsgX, helloMsgY)
    end
end

