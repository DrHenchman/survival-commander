### Executed as a commander at the location of the command block to destroy

# Drop the correct command block type
execute if block ~ ~ ~ minecraft:command_block run give @s minecraft:command_block
execute if block ~ ~ ~ minecraft:chain_command_block run give @s minecraft:chain_command_block
execute if block ~ ~ ~ minecraft:repeating_command_block run give @s minecraft:repeating_command_block

# Destroy the block
fill ~ ~ ~ ~ ~ ~ minecraft:air destroy
