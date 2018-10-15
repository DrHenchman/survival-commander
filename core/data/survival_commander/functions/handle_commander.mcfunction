### Executed as a commander

# Detect if commander is currently commanding
execute if entity @s[scores={SC_commanding=0}] at @s if block ~ ~-1 ~ #survival_commander:command_block run scoreboard players add @s SC_commanding 1
execute if entity @s[scores={SC_commanding=0},nbt={SelectedItem:{id:"minecraft:command_block"}}] run scoreboard players add @s SC_commanding 1
execute if entity @s[scores={SC_commanding=0},nbt={SelectedItem:{id:"minecraft:chain_command_block"}}] run scoreboard players add @s SC_commanding 1
execute if entity @s[scores={SC_commanding=0},nbt={SelectedItem:{id:"minecraft:repeating_command_block"}}] run scoreboard players add @s SC_commanding 1

# Give destroyed command blocks
execute at @s if block ~ ~-1 ~ #survival_commander:command_block{Command:"DELETE"} positioned ~ ~-1 ~ run function survival_commander:destroy_command_block
# Take placed command blocks
execute if entity @s[scores={SC_placed_CB=1..}] run clear @s minecraft:command_block 1
execute if entity @s[scores={SC_placed_CCB=1..}] run clear @s minecraft:chain_command_block 1
execute if entity @s[scores={SC_placed_RCB=1..}] run clear @s minecraft:repeating_command_block 1

# Put the commander into creative if they are commanding, otherwise put them into survival
execute if entity @s[scores={SC_commanding=1..}] run gamemode creative @s
execute if entity @s[scores={SC_commanding=0}] run gamemode survival @s

# Reset the scoreboards
scoreboard players set @s SC_placed_CB 0
scoreboard players set @s SC_placed_CCB 0
scoreboard players set @s SC_placed_RCB 0
scoreboard players set @s SC_commanding 0

