## Pre-tick setup
execute as @a at @s run function miscfeatures:pretick/playervars

## Entity ticking

### Player
execute as @a[nbt={SelectedItem:{id:"minecraft:leather_horse_armor",tag:{mf.item:"leather_block"}}},nbt={Inventory:[{Slot:-106b}]},nbt=!{Inventory:[{Slot:-106b,tag:{mf.item:"leather_block.offhand"}}]}] run title @s actionbar {"translate":"miscfeatures.itemNeedsFreeOffhand","fallback":"Please use the Miscellaneous Features resource pack and set your game language to English (US).","italic":false}
execute as @a[nbt={SelectedItem:{id:"minecraft:leather_horse_armor",tag:{mf.item:"leather_block"}}},nbt=!{Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{mf.item:"leather_block.offhand",HideFlags:4,Unbreakable:1b,CustomModelData:1,display:{Name:'[{"text":"[","color":"white","italic":false},{"translate":"miscfeatures.slotTaken","fallback":"Please use the Miscellaneous Features resource pack and set your game language to English (US).","color":"red","italic":false},{"text":"]","color":"white","italic":false}]'}}
execute as @a[nbt={SelectedItem:{id:"minecraft:leather_horse_armor",tag:{mf.item:"leather_block"}}},nbt={Inventory:[{Slot:-106b,tag:{mf.item:"leather_block.offhand"}}]}] at @s run function miscfeatures:block/leather_block/playercanplace
execute as @a[nbt=!{SelectedItem:{id:"minecraft:leather_horse_armor",tag:{mf.item:"leather_block"}}}] run clear @s warped_fungus_on_a_stick{mf.item:"leather_block.offhand"}

### Horse
execute as @e[type=#warpedlib:equines,nbt={ArmorItem:{tag:{mf.item:"leather_block"}}}] at @s run summon item ~ ~ ~ {Motion:[0.0d,0.25d,0.0d],CustomNameVisible:1b,CustomName:'{"translate":"miscfeatures.niceTry","fallback":"Please use the Miscellaneous Features resource pack and set your game language to English (US).","color":"red"}',Item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{mf.item:"leather_block",display:{Name:'{"translate":"block.miscfeatures.leather_block","fallback":"Please use the Miscellaneous Features resource pack and set your game language to English (US).","italic":false}'},CustomModelData:1}}}
execute as @e[type=#warpedlib:equines,nbt={ArmorItem:{tag:{mf.item:"leather_block"}}}] if data entity @s ArmorItem.tag.display.color at @s store result entity @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{mf.item:"leather_block"}},Age:0s}] Item.tag.display.color int 1 run data get entity @s ArmorItem.tag.display.color 1
execute as @e[type=#warpedlib:equines,nbt={ArmorItem:{tag:{mf.item:"leather_block"}}}] run item replace entity @s horse.armor with air 1

## Block placement
execute as @e[type=item_frame,tag=mf.blockInitPlace] at @s align xyz positioned ~0.5 ~ ~0.5 run function miscfeatures:block/place

## Block ticking
execute as @e[type=item_display,tag=mf.block.redstone_button] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function miscfeatures:block/redstone_button/tick
execute as @e[type=item_display,tag=mf.block.donut_block] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function miscfeatures:block/donut_block/tick
execute as @e[type=item_display,tag=mf.block.donut_block.falling.base] at @s run function miscfeatures:block/donut_block/fallingtick
execute as @e[type=item_display,tag=mf.block.leather_block] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function miscfeatures:block/leather_block/tick

## Cleanup
tag @a remove mf.justPlacedBlock
tag @e remove mf.entity.dontKill
scoreboard players set @a mf.entity.using.warped_fungus_on_a_stick 0

kill @e[type=item,nbt={Item:{tag:{mf.item:"leather_block.offhand"}}}]