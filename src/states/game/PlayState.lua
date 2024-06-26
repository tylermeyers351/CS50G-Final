PlayState = Class{__includes = BaseState}

function PlayState:enter(params)
    backgroundScroll = 0
    groundScroll = 0

    -- Create a commando class
    commando = Commando()

end

function PlayState:update(dt)
    backgroundScroll = (backgroundScroll + BACKGROUND_SCROLL_SPEED * dt) % BACKGROUND_LOOPING_POINT
    groundScroll = (groundScroll + GROUND_SCROLL_SPEED * dt) % VIRTUAL_WIDTH
    commando:update(dt)
end

function PlayState:render()
    love.graphics.draw(gTextures['background'], -backgroundScroll, 0)
    love.graphics.draw(gTextures['ground'], -groundScroll, VIRTUAL_HEIGHT - 16)
    commando:render()
end