function love.load()
frogX = 100
frogY = 100
frogSpeed = 100

frogImage = love.graphics.newImage("res/frogx2.png")


end

function love.update(dt)

end

function love.draw()
    love.graphics.draw(frogImage, frogX, frogY)
    love.graphics.print("Hello World", 600, 500)
end

