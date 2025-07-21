#!/bin/lua
--[[
--	Some of variable types ( not so much )
--	-Global variable
--	-Local variable
--	-Tabel fields
--
--]]

local a
b = 0
a = 1
lambda = function()
	print(a)
	print(b)
end
lambda()

null_type     = nil --> nil
boolean_type  = 1 | 0 --> boolean
number_type   = 1 --> number
string_type   = "string" --> string
function_type = "a method written in C or lua" --> function
userdata_type = "arbitrary C data" --> userdata
thread_type   = "a process thread or coroutines" --> thread
table_type    = "arrays" --> table 





