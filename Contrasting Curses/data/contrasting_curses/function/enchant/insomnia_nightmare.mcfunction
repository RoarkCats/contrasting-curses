# switch to player context
execute unless entity @s as @a[tag=contrasting_curses.insomnia_nightmare] at @s run return run function contrasting_curses:enchant/insomnia_nightmare

# check still sleeping
tag @s remove contrasting_curses.insomnia_nightmare
execute if entity @s[nbt={SleepTimer:0s}] run return 0

# player nightmare
tp @s @s
playsound block.sculk.charge master @s ~ ~ ~ 2 0.7
playsound block.sculk.charge master @s ~ ~ ~ 2 1.1