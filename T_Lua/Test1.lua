--闭包
--该函数调用后返回一个闭包
function BB(F)
    local x = 0
    F.a = function ()
        x = x + 1       --内部使用了外面的局部变量
    end

    return F
end

--Lua面向对象实现继承
Player = {}
function Player:New(go)
    go = go or {}
    setmetatable( go, self )
    self.__index = self
    return go
end

function Player.F1()
    print("F1")
end

function Player.F2()
    print("F2")
end

-------------------------------------------------------

local moduleName = ...
 
-- 打印参数
for i = 1, select('#', ...) do
     print(select(i, ...))
end
 
local this = {}
 
function this.new(r, i) return {r = r, i = i} end
 
-- 定义一个常量i
this.i = this.new(0, 1)
 
function this.add(c1, c2)
    return this.new(c1.r + c2.r, c1.i + c2.i)
end
 
function this.sub(c1, c2)
    return this.new(c1.r - c2.r, c1.i - c2.i)
end
 
return this  -- 返回模块的table