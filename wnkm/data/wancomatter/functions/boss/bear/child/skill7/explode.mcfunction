summon creeper ~ -10 ~ {Tags:["this","bear_crash"],CustomName:'"くまくまクラッシュ"',Fuse:0s,ExplosionRadius:2}
effect give @e[tag=bear] luck 1 9 true
execute at @e[tag=bear_s7AEC] run tp @e[tag=this] ~ ~ ~
tag @e[tag=this] remove this
scoreboard players set @s Cooldown2 51
