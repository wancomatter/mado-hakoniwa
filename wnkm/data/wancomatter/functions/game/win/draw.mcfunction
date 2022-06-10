playsound minecraft:entity.villager.no master @a 0 -100 0 0 1 1
title @a times 10 110 10
title @a title {"text":"Draw!!","color":"gray","underlined":true}
tellraw @a {"text":"--------------------------------","italic":false,"color":"gray"}
tellraw @a ["",{"text":"引き分け。"}]
function wancomatter:game/win/general