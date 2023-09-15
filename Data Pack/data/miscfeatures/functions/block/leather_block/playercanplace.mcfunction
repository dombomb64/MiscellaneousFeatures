## Detect use
execute if score @s mf.entity.using.warped_fungus_on_a_stick matches 1.. run function miscfeatures:raycast/leather_block/cast
execute if entity @s[gamemode=!creative] if score @s mf.entity.using.warped_fungus_on_a_stick matches 1.. if score .temp1 mf.vars matches -1 run item modify entity @s weapon.mainhand miscfeatures:subtract1