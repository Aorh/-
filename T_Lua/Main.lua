--Lua元表元方法
--Lua本身没有面向对象的思想，但是可以根据表、元表、元方法来靠近它
--实现继承、重载、自定义操作等
--在某个表中赋值或索引某个字段时，存在字段直接操作
--该表中不存在该字段，拿到元表
--索引时查看元表__index,赋值时看元表_newindex,字段指向的是一个表则使用这个表重复以上操作，是方法就调用该方法
-- local t = {
--     m = function () print(100) return 1 end,
-- }

-- local t0 = {
--     __index = t
-- }

-- local t1 = {

-- }
-- setmetatable(t1,t0)

-- local t2 = {
--     __index = t1
-- }

-- local test = {}
-- setmetatable(test,t2)
-- print(test.m())
-- local b = false
-- local v = 2
-- local a = not b or true
-- print(a)

-- local test1 = require "test1"
-- local xxx= require("T1")
-- print(...)
-- c1 = test1.new(0, 1)
-- c2 = test1.new(1, 2)
 
-- ret = test1.add(c1, c2)
-- print(ret.r, ret.i)

local t = {1,2,3,4,5}
local y = table.concat( t, 1,9)
local x = table.remove( t,2 )

print()

print("End")