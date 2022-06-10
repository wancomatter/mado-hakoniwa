#advancement revoke @s only wancomatter:buff/spica
#advancement revoke @s only wancomatter:buff/spica_end
#tellraw @s [{"text":"[buff] ","color":"yellow"},{"text":"スピカの効果が終了しました","color":"gray"}]
tag @s add buff_spica_end
schedule function wancomatter:skills/094/buff-end2 4t replace