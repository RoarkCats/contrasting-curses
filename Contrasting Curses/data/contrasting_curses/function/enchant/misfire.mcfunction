# Stop execution early second pass
execute unless entity @s[type=#arrows] as @e[type=#arrows,tag=contrasting_curses.misfired_arrow] at @s run function contrasting_curses:enchant/misfire_apply
execute unless entity @s[type=#arrows] run return 1

# Doesnt yet have motion data on first pass
tag @s add contrasting_curses.misfired_arrow
schedule function contrasting_curses:enchant/misfire 1t replace

playsound item.bundle.insert_fail player @a ~ ~ ~ 1 1.3
playsound item.bundle.insert_fail player @a ~ ~ ~ 1 1.3
# playsound block.tripwire.detach player @a ~ ~ ~ 1 0.7