local pairs = pairs;
local ipairs = ipairs;
local type = type;
local getmetatable = getmetatable;
local setmetatable = setmetatable;
local insert = table.insert;

local Utils = {};

function Utils.clone(table)
    if (type(table) ~= "table") then
		return table;
	end
	
    local meta = getmetatable(table);
    local target = {};
	
    for k, v in pairs(table) do
        if type(v) == "table" then
            target[k] = Utils.clone(v);
        else
            target[k] = v;
        end
    end
	
    setmetatable(target, meta);
	
    return target;
end

function Utils.concat(container, content)
	for index, value in ipairs(content) do
		insert(container, value);
	end
end

function Utils.toTable(...)
	return {...};
end

return Utils;