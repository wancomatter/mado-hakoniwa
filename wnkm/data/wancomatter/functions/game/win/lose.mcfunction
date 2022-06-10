playsound minecraft:block.portal.travel master @a 0 -100 0 0 1 1
title @a times 10 110 10
title @a title {"text":"You lose...","color":"dark_purple","underlined":true}
scoreboard players set @e[tag=boss] HP 0
scoreboard players reset @e[tag=boss] Mana
scoreboard players reset @e[tag=boss] maxMana
kill @e[tag=bear_sleep]
function wancomatter:game/win/general