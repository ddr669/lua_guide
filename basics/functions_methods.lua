#!/bin/lua
--[[
--	functions and methods with lua
--
--]]
function average(...)
	result = 0
	local args = {...}
	for index, value in ipairs(args) do
		result = result + value
	end
	return result/#args
end

print("The average is "..average(10, 5, 3, 4, 5, 6))
print("nothing"..average())

--
-- using positional parameters

args = { type="Rect", length=2, width=4 }
function calculateArea(arguments)
	local length = arguments.length
	local breadth = arguments.width

	if arguments.type == "Rect" then
		return length * breadth
	end
end
print("the area of a rect with 5 cm :"..calculateArea({
	type="Rect",
	length=5,
	width=5
}))




