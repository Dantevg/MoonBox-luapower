local bitmap = require "bitmap" -- Bitmap image manipulation
local bmp = require "bmp"       -- .bmp file format

math.randomseed(os.clock())

-- Create new 50x50 1-bit grayscale bitmap
local image = bitmap.new( 10, 5, "g8" )

-- Getter and setter
local get, set = bitmap.pixel_interface(image)

-- Draw on bitmap
for x = 0, image.w-1 do
	for y = 0, image.h-1 do
		set( x, y, math.random(0,255) )
	end
end

-- Draw image to character output
local function getChar(colour)
	return ({ " ", "-", "=", "#" })[ math.floor(colour/255*4)+1 ] or "AAAA"
end

for y = 0, image.h-1 do
	local line = ""
	for x = 0, image.w-1 do
		line = line .. getChar( get(x, y) )
	end
	print(line)
end

-- Write image to bmp file
local function write( buffer, size )
	print( buf, size )
end

local success, err = bmp.save( image, write )
if not success then error("Couldn't save to file: "..err) end