#!/bin/lua

--[[
--	Arithmetic Operators
--	Relational Operators
--	Logical Operators
--	Misc Operators
--]]
-- sum function
--
Sum = function(number1, number2)
	if ((type(number1) and type(number2) == "number"))
	then
		return number1 + number2
	else
		return nil
	end
end
-- end

print("sum of 1+1")
resultado = Sum(1, 1)
print(resultado)
-- substract function
Sub = function(number1, number2)
	return number1 - number2
end
-- end
-- Multiply function
Multi = function(number1, number2)
	return number1 * number2
end
-- end
Divide = function(number1, number2)
	if (number1 and number2 ~= 0) then
		return number1 / number2
	else
		return nil
	end
end

-- string concatenating with .. 
print("sub - ".." 10 ".." - ".." 5 ".." = ", Sub(10, 5))
print("multi -" .. " 10 ".." * ".." 2 ".." = ", Multi(10, 2))
print("divide - ".." 10 ".." / ".. " 2 ".." = ", Divide(10, 2))
--
--
-- Logical Operators

-- return true if values are not nil
Is_equal = function(someValue, otherValue)
	if (someValue and otherValue) then
		return true
	else
		return false
	end
end
-- return true if some value is not nil
One_orMore = function(someValue, otherValue)
	if (someValue or otherValue) then
		return true
	else
		return false
	end
end
-- return false if values is not nil
Negative = function(someValue, otherValue)
	if (not someValue and not otherValue) then
		return true
	else
		return false
	end
end

-- return the lenght of a value
Lenght_of = function(value)
	return #value
end








