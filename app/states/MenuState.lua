local GameManager = require('core.game.GameManager');
local GameState = require('core.game.GameState');
local Rectangle = require('core.graphics.Rectangle');
local Circle = require('core.graphics.Circle');
local Triangle = require('core.graphics.Triangle');
local Point = require('core.math.Point');
local DrawMode = require('core.graphics.DrawMode');
local MouseButton = require('core.input.MouseButton');
local Luvent = require('core.lib.luvent');

local MenuState = GameState:extend('app.states.MenuState', {});

function MenuState:init()
	self.rect = Rectangle(Point(100, 200), Point(80, 50), DrawMode.FILL);
	self.circ = Circle(Point(350, 90), 30, DrawMode.LINE, 30);
	self.tri = Triangle(480, 400, 590, 350, 560, 340, DrawMode.FILL);
end

function MenuState:enter(previous)
	
end

function MenuState:leave()

end

function MenuState:update(dt)

end

function MenuState:draw()
	love.graphics.print('Menu', 10, 10);
	self.rect:draw();
	self.circ:draw();
	self.tri:draw();
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