#!/bin/lua
--[[
--	using os to get time and date
--
--]]
print("date-:"..os.date())
-- formatted %d - day; %m - month; %Y - year
print("Formatted date-:"..os.date("%d-%m-%Y"))

--
-- clock is the time in miliseconds count by CPU
startTime = os.clock()
for i = 1, 1000000 do
	math.sqrt(i)
end

endTime = os.clock()

print("Elapsed CPU time: "..endTime - startTime.."seconds")






