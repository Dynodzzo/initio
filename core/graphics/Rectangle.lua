local GameObject = require('core.model.GameObject');
local Point = require('core.math.Point');
local DrawMode = require('core.graphics.DrawMode');

local Rectangle = GameObject:extend('core.graphics.Rectangle', {
	size = {},
	drawMode = DrawMode.LINE
});

function Rectangle:init(position, size, drawMode)
	Rectangle.super.init(self, position);
	self.size = Point(size.x, size.y);
	self.drawMode = drawMode or DrawMode.LINE;
end

function Rectangle:draw()
	love.graphics.rectangle(self.drawMode, self.position.x, self.position.y, self.size.x, self.size.y);
end

return Rectangle;