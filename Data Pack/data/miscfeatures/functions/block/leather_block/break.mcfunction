#execute store result score .temp1 mf.vars run kill @e[type=item,distance=..0.5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:mangrove_roots",Count:1b}}]
#execute if score .temp1 mf.vars matches 1.. run loot spawn ~ ~ ~ loot miscfeatures:blocks/leather_block
execute if data entity @s item.tag.display.color store result entity @e[type=item,distance=..0.5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:mangrove_roots",Count:1b}}] Item.tag.display.color int 1 run data get entity @s item.tag.display.color
execute as @e[type=item,distance=..0.5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:mangrove_roots",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:leather_horse_armor",tag:{mf.item:"leather_block",display:{Name:'{"translate":"block.miscfeatures.leather_block","fallback":"Please use the Miscellaneous Features resource pack and set your game language to English (US).","italic":false}'},CustomModelData:1}}}

particle minecraft:item leather_horse_armor{CustomModelData:1} ~ ~ ~ 0.25 0.25 0.25 0.075 64

stopsound @a[distance=..16] block block.mangrove_roots.break
playsound block.scaffolding.break block @a[distance=..16] ~ ~ ~ 1 0.6

kill @s[type=item_display]