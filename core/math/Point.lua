local Class = require('core.lib.30log');

local Point = Class('core.math.Point', {
	x = 0,
	y = 0
});

function Point:init(x, y)
	self:set(x, y);
end

function Point:set(x, y)
	self.x = x or 0;
	self.y = y or 0;
end

function Point.__tostring(point)
	return '{ ' .. point.x .. ' : ' .. point.y .. ' }';
end

return Point;