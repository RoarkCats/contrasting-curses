# run by location check when a fully trample-able block is stepped into to be destroyed with the trampling curse
# required in order to use the destroy method on setblock/fill

playsound minecraft:block.composter.fill player @a ~ ~ ~ 1.2 1.2
execute if block ~ ~ ~ #contrasting_curses:can_trample run setblock ~ ~ ~ air destroy