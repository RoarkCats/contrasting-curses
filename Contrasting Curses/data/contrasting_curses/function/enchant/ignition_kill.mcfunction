# run as killed entity with ignition cursed weapon

execute if predicate {condition:"random_chance", chance: 0.33} run playsound block.fire.ambient player @a ~ ~ ~ 0.5 0.8

# ignite dropped items
execute as @e[type=item,distance=..3,nbt={Age:0s,PickupDelay:10s}] run data modify entity @s Fire set value 200s
# shorten life by item level (stored as luck duration)
# tellraw @a {"nbt":"active_effects[{id:'minecraft:luck'}].duration","entity":"@s"}
execute store result score #ignition_hp contrasting_curses run data get entity @s active_effects[{id:"minecraft:luck"}].duration -1
scoreboard players add #ignition_hp contrasting_curses 5
execute as @e[type=item,distance=..3,nbt={Age:0s,PickupDelay:10s}] store result entity @s Health short 1 run scoreboard players get #ignition_hp contrasting_curses