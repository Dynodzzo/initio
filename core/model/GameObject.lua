local Class = require('core.lib.30log');
local Point = require('core.math.Point');

local GameObject = Class('core.GameObject', {
	position = {}
});

function GameObject:init(position)
	if (position and Class.isInstance(position, Point)) then
		self.position = Point(position.x, position.y);
	else
		self.position = Point();
	end
end

function GameObject:update(dt)

end

function GameObject:draw()

end

function GameObject:keypressed(key, scanCode, isRepeat)

end

function GameObject:keyreleased(key)

end

function GameObject:mousemoved(x, y, dx, dy)

end

function GameObject:mousepressed(x, y, button, isTouch)

end

function GameObject:mousereleased(x, y, button, isTouch)

end

return GameObject;