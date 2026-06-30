# run by location check when a trample-able sus block is stepped on to be destroyed with the trampling curse

execute if block ~ ~-1 ~ suspicious_gravel run playsound block.suspicious_gravel.break block @a ~ ~-1 ~ 1 0.9
execute if block ~ ~-1 ~ suspicious_gravel run setblock ~ ~-1 ~ gravel

execute if block ~ ~-1 ~ suspicious_sand run playsound block.suspicious_sand.break block @a ~ ~-1 ~ 1 0.9
execute if block ~ ~-1 ~ suspicious_sand run setblock ~ ~-1 ~ sand

execute if block ~ ~-1 ~ #contrasting_curses:sus_red_sand run playsound block.suspicious_sand.break block @a ~ ~-1 ~ 1 0.9
execute if block ~ ~-1 ~ #contrasting_curses:sus_red_sand run setblock ~ ~-1 ~ red_sand

execute if block ~ ~-1 ~ #contrasting_curses:sus_packed_ice run playsound block.glass.break block @a ~ ~-1 ~ 1 0.9
execute if block ~ ~-1 ~ #contrasting_curses:sus_packed_ice run setblock ~ ~-1 ~ packed_ice

execute if block ~ ~-1 ~ #contrasting_curses:sus_mud run playsound block.mud.break block @a ~ ~-1 ~ 1 0.9
execute if block ~ ~-1 ~ #contrasting_curses:sus_mud run setblock ~ ~-1 ~ mud