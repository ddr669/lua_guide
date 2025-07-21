#!/bin/lua

function newAccount(balance)
	local account = {}

	-- make a private function to keep private 
	-- the variables
	account.deposit = function(amount)
		balance = balance + amount
		return balance
	end

	account.withdraw = function(amount)
		balance = balance - amount
		return balance
	end

	account.getBalance = function() return balance end

	return account
end
account = newAccount(100)

print("amount in your balance: "..account.getBalance())
print("Add 50$ in your balance: "..account.deposit(50))

print("amount in your balance: "..account.getBalance())
print("Poor guy..."..account.withdraw(150))
-- dont work 
print("this balance doesnt exist",account.balance)

-- high order functions
-- passing arguments through functions with functions
function multiplyBy(factor)
	return function(x)
		return x * factor
	end
end
double = multiplyBy(2)
tiple = multiplyBy(3)

print("5 * 2 = "..double(5))
print("5 * 3 = "..tiple(5))






