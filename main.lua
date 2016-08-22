-- For debug purposes only
Inspect = require('core.lib.inspect');

local GameManager = require('core.game.GameManager');
local MenuState = require('app.states.MenuState');

local game = GameManager:getInstance();

function love.load(arg)
	game:push('MenuState');
end

function love.update(dt)
	game:update(dt);
end

function love.draw()
	game:draw();
end

function love.keypressed(key, scanCode, isRepeat)
	game:keypressed(key, scanCode, isRepeat);
end

function love.keyreleased(key)
	game:keyreleased(key);
end

function love.mousemoved(x, y, dx, dy)
	game:mousemoved(x, y, dx, dy);
end

function love.mousepressed(x, y, button, isTouch)
	game:mousepressed(x, y, button, isTouch);
end

function love.mousereleased(x, y, button, isTouch)
	game:mousereleased(x, y, button, isTouch);
end