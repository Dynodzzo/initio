local GameObject = require('core.model.GameObject');
local Point = require('core.math.Point');
local DrawMode = require('core.graphics.DrawMode');
local Utils = require('core.utils.Utils');

local Triangle = GameObject:extend('core.graphics.Triangle', {
	vertices = {},
	drawMode = DrawMode.LINE
});

function Triangle:init(x1, y1, x2, y2, x3, y3, drawMode)
	self.vertices = Utils.toTable(x1, y1, x2, y2, x3, y3);
	self.drawMode = drawMode or DrawMode.LINE;
end

function Triangle:draw()
	love.graphics.polygon(self.drawMode, self.vertices);
end

return Triangle;