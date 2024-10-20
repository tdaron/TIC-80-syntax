--TIC-80 Syntax from https://github.com/nesbox/TIC-80/wiki/
--This code is obtainable in https://github.com/hayattgd/TIC-80-syntax/

--[[
MIT License

Copyright (c) 2024 hayattgd

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
--]]

---This function allows you to read the status of TIC's controller buttons.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/btn)
---@param id integer
---@return boolean is_pressed
function btn(id) return false end

---This function allows you to read the status of one of TIC's buttons.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/btnp)
---@param id integer
---@param hold? integer
---@param period? integer
---@return boolean is_pressed
function btnp(id, hold, period) return false end

---This function draws a filled circle of the desired <strong>radius</strong> and <strong>color</strong> with its center at <strong>x</strong>, <strong>y</strong>.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/circ)
---@param x integer
---@param y integer
---@param radius integer
---@param color integer
function circ(x, y, radius, color) end

---Draws the circumference of a circle with its center at <strong>x</strong>, <strong>y</strong> using the <strong>radius</strong> and <strong>color</strong> requested.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/circb)
---@param x integer
---@param y integer
---@param radius integer
---@param color integer
function circb(x, y, radius, color) end

---This function limits drawing to a clipping region or 'viewport' defined by <code>x</code>,<code>y</code>, <code>width</code>, and <code>height</code>.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/clip)
---@param x? integer
---@param y? integer
---@param width? integer
---@param height? integer
function clip(x, y, width, height) end

---This function clears/fills the entire screen using <strong>color</strong>.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/cls)
---@param color? integer
function cls(color) end

---This function draws a filled ellipse centered at <strong>x, y</strong> using palette index <strong>color</strong> and radii <strong>a</strong> and <strong>b</strong>.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/elli)
---@param x integer
---@param y integer
---@param a integer
---@param b integer
---@param color integer
function elli(x, y, a, b, color) end

---This function draws an ellipse border with the radiuses <strong>a</strong> <strong>b</strong> and <strong>color</strong> with its center at <strong>x</strong>, <strong>y</strong>.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/ellib)
---@param x integer
---@param y integer
---@param a integer
---@param b integer
---@param color integer
function ellib(x, y, a, b, color) end

---This function causes program execution to be terminated <strong>after</strong> the current <code>TIC</code> function ends.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/exit)
function exit() end

---Returns <code>true</code> if the specified flag of the sprite is set.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/fget)
---@param sprite_id integer
---@param flag integer
---@return boolean
function fget(sprite_id, flag) return false end

---This function sets the sprite flag to a given boolean value.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/fset)
---@param sprite_id integer
---@param flag integer
---@param bool boolean
function fset(sprite_id, flag, bool) end

---This function will draw text to the screen using the foreground spritesheet as the font.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/font)
---@param text string
---@param x integer
---@param y integer
---@param transcolor? integer
---@param char_width? integer
---@param char_height? integer
---@param fixed? boolean
---@param scale? integer
---@param alt? boolean
---@return integer text_width
function font(text, x, y, transcolor, char_width, char_height, fixed, scale, alt) return 0 end

---The function returns <em>true</em> if the key denoted by <em>keycode</em> is pressed otherwise it returns <strong>false</strong>.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/key)
---@param code? integer
---@return boolean is_pressed
function key(code) return false end

---This function returns <code>true</code> if the given key is pressed but wasn't pressed in the previous frame.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/keyp)
---@param code? integer
---@param hold? integer
---@param period? integer
---@return boolean pressed
function keyp(code, hold, period) return false end

---Draws a straight line from point (x0,y0) to point (x1,y1) in the specified color.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/line)
---@param x0 integer
---@param y0 integer
---@param x1 integer
---@param y1 integer
---@param color integer
function line(x0, y0, x1, y1, color) end

---The map consists of cells of 8x8 pixels, each of which can be filled with a tile using the <a href="https://github.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/map)
---@param x? integer
---@param y? integer
---@param w? integer
---@param h? integer
---@param sx? integer
---@param sy? integer
---@param colorkey? integer
---@param scale? integer
---@param remap? integer
function map(x, y, w, h, sx, sy, colorkey, scale, remap) end

---This function copies a continuous block of <a href="RAM">RAM</a> from one address to another.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/memcpy)
---@param to integer
---@param from integer
---@param length integer
function memcpy(to, from, length) end

---This function sets a continuous block of <a href="RAM">RAM</a> to the same value.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/memset)
---@param addr integer
---@param value integer
---@param length integer
function memset(addr, value, length) end

---This function returns the index of the tile at the specified map coordinates, the top left cell of the map being (0, 0).
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/mget)
---@param x integer
---@param y integer
---@return integer tile_id
function mget(x, y) return 0 end

---This function writes the specified background tile <strong>tile_id</strong> into the map at the given position.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/mset)
---@param x integer
---@param y integer
---@param tile_id integer
function mset(x, y, tile_id) end

---This function returns the mouse coordinates, a boolean value for the state of each mouse button (with true indicating that a button is pressed) and any change in the scroll wheel.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/mouse)
---@return integer x
---@return integer y
---@return boolean left
---@return boolean middle
---@return boolean right
---@return integer scrollx
---@return integer scrolly
function mouse() return 0, 0, false, false, false, 0, 0 end

---This function starts playing a <strong>track</strong> created in the <a href="https://github.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/music)
---@param track integer
---@param frame integer
---@param row integer
---@param loop boolean
---@param sustain boolean
---@param tempo integer
---@param speed integer
function music(track, frame, row, loop, sustain, tempo, speed) end

---This function allows you to read directly from RAM.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/peek)
---@param addr integer
---@param bits? integer
---@return integer value
function peek(addr, bits) return 0 end

---This function allows you to read directly from RAM.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/peek)
---@param addr integer
---@return integer value
function peek1(addr) return 0 end

---This function allows you to read directly from RAM.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/peek)
---@param addr integer
---@return integer value
function peek2(addr) return 0 end

---This function allows you to read directly from RAM.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/peek)
---@param addr integer
---@return integer value
function peek4(addr) return 0 end

---This function can read or write individual pixel color values.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/pix)
---@param x integer
---@param y integer
---@param color? integer
---@return integer color
function pix(x, y, color) return 0 end

---The name "pmem" means <strong>persistent memory</strong>.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/pmem)
---@param index integer
---@param val32 integer
---@return integer val32
function pmem(index, val32) return 0 end

---This function allows you to write directly to <a href="https://github.com/nesbox/TIC-80/wiki/RAM">RAM</a>.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/poke)
---@param addr integer
---@param val integer
---@param bits? integer
function poke(addr, val, bits) end

---This function allows you to write directly to <a href="https://github.com/nesbox/TIC-80/wiki/RAM">RAM</a>.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/poke)
---@param addr integer
---@param val integer
function poke1(addr, val) end

---This function allows you to write directly to <a href="https://github.com/nesbox/TIC-80/wiki/RAM">RAM</a>.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/poke)
---@param addr integer
---@param val integer
function poke2(addr, val) end

---This function allows you to write directly to <a href="https://github.com/nesbox/TIC-80/wiki/RAM">RAM</a>.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/poke)
---@param addr integer
---@param val integer
function poke4(addr, val) end

---This will simply print text to the screen using the font defined in config.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/print)
---@param text integer
---@param x integer
---@param y integer
---@param color integer
---@param fixed boolean
---@param scale integer
---@param smallfont boolean
---@return integer width
function print(text, x, y, color, fixed, scale, smallfont) return 0 end

---This function draws a filled rectangle at the specified position.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/rect)
---@param x integer
---@param y integer
---@param width integer
---@param height integer
---@param color integer
function rect(x, y, width, height, color) end

---This function draws a one pixel thick rectangle border.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/rectb)
---@param x integer
---@param y integer
---@param width integer
---@param height integer
---@param color integer
function rectb(x, y, width, height, color) end

---Resets the TIC virtual "hardware" and immediately restarts the cartridge.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/reset)
function reset() end

---This function will play the sound with <strong>id</strong> created in the SFX Editor.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/sfx)
---@param id integer
---@param note integer
---@param duration integer
---@param channel integer
---@param volume integer
---@param speed integer
function sfx(id, note, duration, channel, volume, speed) end

---Draws the <a href="sprite">sprite</a> number <strong>index</strong> at the <strong>x</strong> and <strong>y</strong> <a href="coordinate">coordinate</a>.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/spr)
---@param id integer
---@param x integer
---@param y integer
---@param colorkey? integer
---@param scale? integer
---@param flip? integer
---@param rotate? integer
---@param w? integer
---@param h? integer
function spr(id, x, y, colorkey, scale, flip, rotate, w, h) end

---Use <code>sync()</code> to save data you modify during runtime and would like to persist, or to restore runtime data from the cartridge.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/sync)
---@param mask? integer
---@param bank? integer
---@param tocart? boolean
function sync(mask, bank, tocart) end

---This function draws a triangle filled with texture from either <code>SPRITES</code> or <code>MAP</code> <a href="ram">RAM</a> or VBANK.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/ttri)
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
---@param x3 integer
---@param y3 integer
---@param u1 integer
---@param v1 integer
---@param u2 integer
---@param v2 integer
---@param u3 integer
---@param v3 integer
---@param texsrc? integer
---@param chromakey? integer
---@param z1? integer
---@param z2? integer
---@param z3? integer
function ttri(x1, y1, x2, y2, x3, y3, u1, v1, u2, v2, u3, v3, texsrc, chromakey, z1, z2, z3) end

---This function returns the number of <em>milliseconds</em> elapsed since the cartridge began execution.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/time)
---@return number ticks
function time() return 0 end

---This is a service function, useful for debugging.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/trace)
---@param message string
---@param color? integer
function trace(message, color) end

---This function draws a triangle filled with <strong>color</strong>, using the supplied vertices.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/tri)
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
---@param x3 integer
---@param y3 integer
---@param color integer
function tri(x1, y1, x2, y2, x3, y3, color) end

---This function draws a triangle border with <strong>color</strong>, using the supplied vertices.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/trib)
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
---@param x3 integer
---@param y3 integer
---@param color integer
function trib(x1, y1, x2, y2, x3, y3, color) end

---This function returns the number of <em>seconds</em> elapsed since January 1st, 1970.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/tstamp)
---@return integer timestamp
function tstamp() return 0 end

---VRAM is double-banked, such that the entire 16kb VRAM address space can be "swapped" at any time between banks 0 and 1.
---
---[View documents](https://github.com/nesbox/TIC-80/wiki/vbank)
---@param id integer
function vbank(id) end