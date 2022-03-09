require ("class")

local ClassA = class ("class A")

function ClassA:constructor ()
  self.value = 10
end

function ClassA:print ()
  print ("name: " .. self:getName () .. ", value:" .. tostring (self.value or 0))
end

local ClassB = class ("class B", ClassA)

function ClassB:constructor ()
  self.value = 20
end

local a = ClassA:new ()
local b = ClassB:new ()
a:print ()
b:print ()