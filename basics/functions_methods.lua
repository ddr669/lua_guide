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

function calculate(shapeDetails)
	if shapeDetails.height then
		return shapeDetails.length * 
		shapeDetails.width * 
		shapeDetails.height

	else
		return shapeDetails.length * 
		shapeDetails.width
	end
end
shapeDet = {length=2, width=4, height=2}
print("CALCULATE: "..calculate(shapeDet))
--
--
-- closure scope -- can get a var in a other scope
--	like a queue
function startCounter(initialValue)
	local count = initialValue
	return function()
		count = count + 1
		return count
	end
end
incrementer1 = startCounter(10)
incrementer2 = startCounter(100)

for a = 1, 10, 4 do
	print("incrementer1 "..incrementer1())
end
for a = 1, 10, 4 do
	print("incrementer2 "..incrementer2())
end
--
--	list iterator - queue
--
function listIterator(list)
	local i = 0
	local n = #list 

	return function()
		i = i + 1
		if i <= n then return list[i] end
	end
end
list = {1, 2, 3, 4, 5}
for element in listIterator(list) do
	print("element in a queue "..element)
end






