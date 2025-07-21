#!/bin/lua
--[[
--	Loop in lua
--
--]]
--
-- While loop
condition = true
while ( condition ) do
	print("This run forever until break;")
	condition = false
end
--
--
-- for loop with array
print("for loop: ")
array_of_number = {10, 20, 30, 40, 50}
for _, v in ipairs(array_of_number) do
	print(_, v)
end
--
-- using tables 
--
days = {
	["Mon"]="Monday",
	["Tue"]="Tuesday",
	["Wed"]="Wednesday",
	["Thu"]="Thursday",
	["Fri"]="Friday",
	["Sat"]="Saturday",
	["Sun"]="Sunday"
}
for _, value in pairs(days) do
	print(_, value)
end

--
-- and for with a variable
--
-- from 10 to 19 by 1
for i = 10, 19, 1 do
	print(i)
end
--
-- repeat and until
--
i = 10
repeat
	print("value of i: "..i)
	i = i + 1
until i > 20



