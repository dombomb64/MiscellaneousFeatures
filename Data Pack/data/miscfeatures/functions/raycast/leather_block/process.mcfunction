## Move
execute at @s run function miscfeatures:raycast/leather_block/move

## Check for block
execute as @s[tag=mf.raycast.hit.block] at @s positioned ^ ^ ^ align xyz positioned ~0.5 ~ ~0.5 run function miscfeatures:block/leather_block/place

## Cleanup
kill @s