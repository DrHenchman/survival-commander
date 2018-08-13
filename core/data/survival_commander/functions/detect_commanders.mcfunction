
# Detect players who are currently SC_commanding
execute as @a[tag=commander,scores={SC_commanding=0}] at @s if block ~ ~-1 ~ minecraft:command_block run scoreboard players add @s SC_commanding 1
execute as @a[tag=commander,scores={SC_commanding=0}] at @s if block ~ ~-1 ~ minecraft:repeating_command_block run scoreboard players add @s SC_commanding 1
execute as @a[tag=commander,scores={SC_commanding=0}] at @s if block ~ ~-1 ~ minecraft:chain_command_block run scoreboard players add @s SC_commanding 1
execute as @a[tag=commander,scores={SC_commanding=0}] if entity @s[nbt={SelectedItem:{id:"minecraft:command_block"}}] run scoreboard players add @s SC_commanding 1

# Give destroyed command blocks
execute as @a[tag=commander] at @s if block ~ ~-1 ~ minecraft:command_block{Command:"DELETE"} run function survival_commander:destroy_command_block
# Take placed command blocks
execute as @a[tag=commander,scores={SC_placed_CB=1..}] run clear @s minecraft:command_block 1

# Detect commanders who are interacting with command blocks and put them into creative
execute as @a[tag=commander,scores={SC_commanding=1..}] run gamemode creative @s
# Detect commanders who are not interacting with command blocks and put them back into survival
execute as @a[tag=commander,scores={SC_commanding=0}] run gamemode survival @s

# Reset the scoreboards
scoreboard players set @a[tag=commander] SC_placed_CB 0
scoreboard players set @a[tag=commander] SC_commanding 0

