drgl = {}

DL = drgl

--example of a function that can only be used if the specified mod is enabled
--[[
if next(SMODS.find_mod('Cryptid')) then
	function DL.press(context)
		return context.cry_press
	end
end

]]

assert(SMODS.load_file("Functions/Defaults.lua"))()

if next(SMODS.find_mod('Cryptid')) then
	assert(SMODS.load_file("Functions/Crylib.lua"))()
else
	assert(SMODS.load_file("Functions/Mainlib.lua"))()
end

if next(SMODS.find_mod("MagicTheJokering")) then
	assert(SMODS.load_file("Functions/MTGlib.lua"))()
end