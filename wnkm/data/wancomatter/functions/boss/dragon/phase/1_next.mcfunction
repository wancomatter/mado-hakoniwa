tellraw @a {"text":"治癒の雨露が降り注ぐ……","color":"#8888ff","bold":true}
tellraw @a {"text":"全ての存在は8秒毎にHPが最大値の1%だけ回復する。","color":"#8888ff"}

tag @s add dragon_boss.heal_rain
weather rain

bossbar set minecraft:dragon1 color yellow
scoreboard players operation @s Mana = @s maxHP
scoreboard players operation @s Mana /= #4 counter

scoreboard players add @s maxMana 1
scoreboard players set @s counter 0
scoreboard players set @a boss_hate 0

