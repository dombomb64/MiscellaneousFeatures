## Scoreboard objectives
scoreboard objectives add mf.vars dummy

scoreboard objectives add mf.block.redstone_button.powerTime dummy
scoreboard objectives add mf.block.donut_block.shakeTime dummy

scoreboard objectives add mf.entity.cardinalH dummy
scoreboard objectives add mf.entity.cardinalV dummy

#scoreboard objectives add mf.entity.playerID dummy

scoreboard objectives add mf.entity.using.warped_fungus_on_a_stick minecraft.used:minecraft.warped_fungus_on_a_stick

## Load message
scoreboard players add .timesLoaded mf.vars 1
function miscfeatures:loadmessage