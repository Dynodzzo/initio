local GameObject = require('core.model.GameObject');
local Point = require('core.math.Point');
local DrawMode = require('core.graphics.DrawMode');

local Circle = GameObject:extend('core.graphics.Circle', {
	radius = 0,
	drawMode = DrawMode.LINE,
	points = 10,
});

function Circle:init(position, radius, drawMode, points)
	Circle.super.init(self, position);
	self.radius = radius or 0;
	self.drawMode = drawMode or DrawMode.LINE;
	self.points = points or 10;
end

function Circle:draw()
	love.graphics.circle(self.drawMode, self.position.x, self.position.y, self.radius, self.points);
end

return Circle;