Commando = Class{}

function Commando:init()
    self.x = 50
    self.y = VIRTUAL_HEIGHT - 50

    self.width = 10
    self.height = 30

    self.dy = 0
end

function Commando:collides(entity)
    if (x) then
        return true 
    end
end

function Commando:update(dt)
    -- if love.keyboard.wasPressed('space') then
    --     self.dy = -5
    -- end

    -- if (self.y > VIRTUAL_HEIGHT) then
    --     self.y = self.y + self.dy
    -- end
end

function Commando:render()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end