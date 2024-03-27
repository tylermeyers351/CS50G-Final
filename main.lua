function love.load()
    rect = {}
    
    rect.x = 10
    rect.y = 10
    
    rect.dx = 100
    rect.dy = 100

    rect.width = 100
    rect.height = 100

    getW, getH = love.graphics.getWidth(), love.graphics.getHeight()
end

love.window.setTitle("TYLER")

function love.update(dt)

    if (rect.x + rect.width) > getW or rect.x < 0 then
        rect.dx = rect.dx * -1
    end
    
    if (rect.y + rect.height) > getH or rect.y < 0 then
        rect.dy = rect.dy * -1
    end

    rect.x = rect.x + rect.dx * dt
    rect.y = rect.y + rect.dy * dt
end

function love.draw()
    love.graphics.rectangle("fill", rect.x, rect.y, rect.width, rect.height)
end