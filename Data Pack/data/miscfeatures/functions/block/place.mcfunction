## Check for space
execute unless block ~ ~ ~ #replaceable run function miscfeatures:block/rejectplace
execute unless block ~ ~ ~ #replaceable run kill @s[type=item_frame]
execute unless block ~ ~ ~ #replaceable run return 0

## Set the block
execute if entity @s[tag=mf.block.redstone_button] run function miscfeatures:block/redstone_button/place
execute if entity @s[tag=mf.block.donut_block] run function miscfeatures:block/donut_block/place

## Cleanup
kill @s[type=item_frame]