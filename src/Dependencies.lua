-- libraries
Class = require 'lib/class'
push = require 'lib/push'
Timer = require 'lib/knife.timer'

-- utility
require 'src/constants'
require 'src/states/StateMachine'

-- game states
require 'src/states/BaseState'
require 'src/states/game/PlayState'
require 'src/states/game/StartState'

--general
require 'src/Commando'

--sounds
gSounds = {

}

for i, sound in pairs(gSounds) do
    gSounds[i]:setVolume(0.01)
end

gTextures = {
    ['background'] = love.graphics.newImage('graphics/background.png'),
    ['ground'] = love.graphics.newImage('graphics/ground.png'),
}

gFrames = {

}

gFonts = {
    ['small'] = love.graphics.newFont('fonts/font.ttf', 8),
    ['medium'] = love.graphics.newFont('fonts/font.ttf', 16),
    ['large'] = love.graphics.newFont('fonts/font.ttf', 32),
    ['title'] = love.graphics.newFont('fonts/ArcadeAlternate.ttf', 32)
}