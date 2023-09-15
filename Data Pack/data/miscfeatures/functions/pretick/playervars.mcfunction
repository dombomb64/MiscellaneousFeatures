## Cardinal directions
### Horizontal
execute store result score .temp1 mf.vars run data get entity @s Rotation[0] 1

### South
execute if score .temp1 mf.vars matches -45..44 run scoreboard players set @s mf.entity.cardinalH 2
### West
execute if score .temp1 mf.vars matches 45..134 run scoreboard players set @s mf.entity.cardinalH 5
### North
execute unless score .temp1 mf.vars matches -135..134 run scoreboard players set @s mf.entity.cardinalH 3
### East
execute if score .temp1 mf.vars matches -135..-44 run scoreboard players set @s mf.entity.cardinalH 4

### Vertical
execute store result score .temp1 mf.vars run data get entity @s Rotation[1] 1

### Floor
execute if score .temp1 mf.vars matches 45..90 run scoreboard players set @s mf.entity.cardinalV 1
### Ceiling
execute if score .temp1 mf.vars matches -90..-45 run scoreboard players set @s mf.entity.cardinalV 0
### Forward
execute if score .temp1 mf.vars matches -44..44 run scoreboard players set @s mf.entity.cardinalV 2

## Player IDs
execute unless score @s mf.entity.playerID matches -2147483648..2147483647 run scoreboard players add .lastPlayerID mf.vars 1
execute unless score @s mf.entity.playerID matches -2147483648..2147483647 run scoreboard players operation @s mf.entity.playerID = .lastPlayerID mf.vars