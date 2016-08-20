local GameManager = require('core.game.GameManager');
local GameState = require('core.game.GameState');

local MenuState = GameState:extend('app.states.MenuState');

function MenuState:init()

end

function MenuState:enter(previous)

end

function MenuState:leave()

end

function MenuState:update(dt)

end

function MenuState:draw()
	love.graphics.print('Menu', 10, 10);
end

function MenuState:keypressed(key, scanCode, isRepeat)

end

function MenuState:keyreleased(key)

end

function MenuState:mousemoved(x, y, dx, dy)

end

function MenuState:mousepressed(x, y, button, isTouch)

end

function MenuState:mousereleased(x, y, button, isTouch)

end

GameManager:getInstance():register('MenuState', MenuState);

return MenuState;