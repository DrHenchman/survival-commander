

# Commander Sarc and Commander Zedaph
execute as @a[tag=commander] at @s if entity @e[type=minecraft:armor_stand,name=Sarc,distance=..3] run advancement grant @s only survival_commander:story/commander_sarc
execute as @a[tag=commander] at @s if entity @e[type=minecraft:armor_stand,name=Zedaph,distance=..3] run advancement grant @s only survival_commander:story/commander_zedaph

# Episodes
execute as @a[tag=commander] at @s if entity @e[type=minecraft:armor_stand,name=Base,distance=..3] run advancement grant @s only survival_commander:story/base_beginnings
execute as @a[tag=commander] at @s if entity @e[type=minecraft:armor_stand,name=Miner,distance=..3] run advancement grant @s only survival_commander:story/hole_is_born
execute as @a[tag=commander] at @s if entity @e[type=minecraft:armor_stand,name=EvapaQuartz,distance=..3] run advancement grant @s only survival_commander:story/growing_quartz

