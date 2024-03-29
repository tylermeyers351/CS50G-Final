Commando = Class{}

function Commando:init()
    self.x = 50
    self.y = 200

    self.width = 10
    self.height = 30

    self.dy = 0
end

function Commando:collides(entity)
    if (true) then
        return true 
    end
end

function Commando:update(dt)

    -- Apply velocity if above ground
    if self.y < (GROUND_HEIGHT) then
        self.dy = self.dy + GRAVITY * dt
        self.y = self.y + self.dy
    end

    -- Jump
    if love.keyboard.wasPressed('space') then
        self.dy = -7
    end

    -- If fall below ground_height, then bump above it (so doesn't get stuck)
    if self.y > (GROUND_HEIGHT) then
        self.y = GROUND_HEIGHT - 1
    end

end

function Commando:render()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end