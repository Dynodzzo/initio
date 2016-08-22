local Class = require('core.lib.30log');
local GameState = require('core.game.GameState');

local insert = table.insert;

local GameManager = Class('core.game.GameManager', {
	registeredStates = {},
	livingStates = {}
});

local Instance = GameManager();

function GameManager.new()
	error('Cannot instantiate from a Singleton class.');
end

function GameManager.init() end

function GameManager.extend()
	error('Cannot extend from a Singleton class.');
end

function GameManager:getInstance()
	return Instance;
end

function GameManager:exists(name)
	if (not self.registeredStates[name]) then
		error('The GameState "' .. name .. '" has not been registered.');
	end
end

function GameManager:register(name, state)
	if (not self.registeredStates[name]) then
		if (not state:extends(GameState)) then
			error('StateManager can only handle GameState instances');
		end
		
		print('Registering a new state : ' .. name);
		self.registeredStates[name] = state;
	end
end

function GameManager:switch(name)
	self:exists(name);
	
	self:pop();
	self:push(name);
end

function GameManager:push(name)
	self:exists(name);
	
	local previous = self.livingStates[#self.livingStates];
	insert(self.livingStates, self.registeredStates[name]());
	self.livingStates[#self.livingStates]:enter(previous);
end

function GameManager:pop()
	if (#self.livingStates <= 0) then
		error('No more states to pop.');
	end
	
	self.livingStates[#self.livingStates]:leave();
	self.livingStates[#self.livingStates] = nil;
end

function GameManager:update(dt)
	if (#self.livingStates > 0) then
		self.livingStates[#self.livingStates]:update(dt);
	end
end

function GameManager:draw()
	if (#self.livingStates > 0) then
		self.livingStates[#self.livingStates]:draw();
	end
end

function GameManager:keypressed(key, scanCode, isRepeat)
	if (#self.livingStates > 0) then
		self.livingStates[#self.livingStates]:keypressed(key, scanCode, isRepeat);
	end
end

function GameManager:keyreleased(key)
	if (#self.livingStates > 0) then
		self.livingStates[#self.livingStates]:keyreleased(key);
	end
end

function GameManager:mousemoved(x, y, dx, dy)
	if (#self.livingStates > 0) then
		self.livingStates[#self.livingStates]:mousemoved(x, y, dx, dy);
	end
end

function GameManager:mousepressed(x, y, button, isTouch)
	if (#self.livingStates > 0) then
		self.livingStates[#self.livingStates]:mousepressed(x, y, button, isTouch);
	end
end

function GameManager:mousereleased(x, y, button, isTouch)
	if (#self.livingStates > 0) then
		self.livingStates[#self.livingStates]:mousereleased(x, y, button, isTouch);
	end
end

return GameManager;