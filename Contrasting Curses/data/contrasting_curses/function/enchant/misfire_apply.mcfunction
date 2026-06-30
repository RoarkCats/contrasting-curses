data modify entity @s Motion[1] set value -0.15
execute store result entity @s Motion[0] double 0.1 run data get entity @s Motion[0]
execute store result entity @s Motion[2] double 0.1 run data get entity @s Motion[2]

tag @s remove contrasting_curses.misfired_arrow