-- CONSTANTS

local nw = require "nw" -- Cross-platform window/graphics/input lib
-- Except it doesn't work on MacOS 10.13... (https://github.com/luapower/nw/issues/74)
local app = nw:app()



-- FUNCTIONS



-- RUN

local win = app:window{
	w = 600,
	h = 400,
	title = "MoonBox-luapower",
	visible = false,
}


win:show()
app:run()

print("Hello, World!")