--  Lua class implementation reference from: https://zhuanlan.zhihu.com/p/123971515
function class (name, base)
  local c = { __name = name, base = base }
  if base then
    setmetatable (c, { __index = base })
  end

  c.new = function (...)
    local instance = {}
    setmetatable (instance, { __index = c })
    if c.constructor then
      c.constructor (instance, ...)
    end
    return instance
  end

  c.getName = function ()
    return c.__name or ""
  end

  return c
end
