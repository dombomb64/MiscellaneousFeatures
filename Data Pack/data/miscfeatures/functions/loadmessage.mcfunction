execute if score .timesLoaded mf.vars matches 1 run tellraw @a [{"text":"✨","color":"yellow","bold":true},{"text":"Thanks for installing ","color":"gray","bold":false},{"text":"Miscellaneous Features","color":"#73D0FF","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Miscellaneous Features","color":"#73D0FF","bold":true},{"text":" is a data pack created by ","color":"white","bold":false},{"text":"dombomb64","color":"#73D0FF","bold":true},{"text":".","color":"white","bold":false}]}},{"text":"!","color":"gray","bold":false},{"text":"✨","color":"yellow","bold":true},{"text":"\n(This message will never show again.)","color":"dark_gray","bold":false,"italic":true}]
execute unless score .timesLoaded mf.vars matches 1 run tellraw @a [{"text":"Successfully loaded Miscellaneous Features.","color":"dark_gray","bold":false,"italic":true}]

execute unless entity @p run schedule function miscfeatures:loadmessage 1t