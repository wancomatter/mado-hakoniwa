summon creeper ~ -10 ~ {ExplosionRadius:2,Fuse:0s,Tags:["this","bear_crash","wnkm.owned","wnkm.round"],CustomName:"くまくまクラッシュ"}
effect give @e[tag=bear] luck 1 9 true
execute at @e[tag=bear_s7AEC] run tp @e[tag=this] ~ ~ ~
tag @e[tag=this] remove this
scoreboard players set @s Cooldown2 51
