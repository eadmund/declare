luaunit = require('luaunit/luaunit')
require('init')

function testCons()
   local c = cons(1, 2)
   luaunit.assertEquals(c.car, 1)
   luaunit.assertEquals(c.cdr, 2)
   luaunit.assertIs(c.class, classes.CONS)
end

os.exit(luaunit.LuaUnit.run())
