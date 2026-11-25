playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 2
tellraw @s {"translate":"死返死の発動に失敗しました:MPが不足しています(要求量:%s, 現在値:%s)","with":[{"score":{"name":"@s","objective":"dummy"}},{"score":{"name":"@s","objective":"Mana"}}],"color":"red"}
