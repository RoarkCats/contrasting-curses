# run from main as/at all ignition tagged markers

# sepuku if nobody nearby
execute unless entity @a[distance=..10] run return run kill @s

# ignite nearest item if mined
execute unless block ~ ~ ~ #air run return 0

execute if predicate {condition:"random_chance", chance: 0.1} run playsound block.fire.ambient player @a ~ ~ ~ 0.5 0.8
data modify entity @n[type=item,nbt={Age:0s,PickupDelay:10s}] Fire set value 200s
# shorten life by item level
execute store result score #ignition_hp contrasting_curses run data get entity @s data.level -1 
scoreboard players add #ignition_hp contrasting_curses 5
execute store result entity @n[type=item,nbt={Age:0s,PickupDelay:10s}] Health short 1 run scoreboard players get #ignition_hp contrasting_curses

kill @s[type=marker]