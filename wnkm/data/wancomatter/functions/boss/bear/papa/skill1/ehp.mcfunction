tag @e[tag=bear_p] add usedskill
scoreboard players set @s hurtWeaponNumber -1
scoreboard players operation @s hurtByNumber = @e[tag=bear_p,limit=1] playerNumber

execute anchored eyes positioned ^ ^ ^ anchored feet facing entity @e[tag=bear_p,limit=1,sort=nearest] feet rotated ~ 0 positioned ^ ^-0.25 ^1.5 as @e[limit=4] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:2,Invulnerable:1b}
effect give @e[tag=bear_p] luck 1 9 true
tag @s add bear_s1target
schedule function wancomatter:boss/bear/papa/skill1/ehp_2t 2t
execute unless score #difficult counter matches 2..4 run schedule function wancomatter:boss/bear/papa/skill1/shot_arrow_root 14t
execute if score #difficult counter matches 2 run schedule function wancomatter:boss/bear/papa/skill1/shot_arrow_root 12t
execute if score #difficult counter matches 3 run schedule function wancomatter:boss/bear/papa/skill1/shot_arrow_root 10t
execute if score #difficult counter matches 4 run schedule function wancomatter:boss/bear/papa/skill1/shot_arrow_root 8t
advancement revoke @s only wancomatter:boss/bear