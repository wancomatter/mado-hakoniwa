execute if entity @e[tag=b3vermilionLance,limit=1] as @e[tag=b3vermilionLance] at @s run function wancomatter:boss/dusk/skill1/tick
execute if entity @e[tag=b3fireGate,limit=1] as @e[tag=b3fireGate] at @s run function wancomatter:boss/dusk/skill2/tick
execute if entity @e[tag=b3fireArrow,limit=1] run scoreboard players add @e[tag=b3fireArrow] counter 1
execute if entity @e[tag=b3fireArrow,limit=1] as @e[tag=b3fireArrow] at @s run function wancomatter:boss/dusk/skill2/tick2
execute if entity @e[tag=b3ignisStrike,limit=1] as @e[tag=b3ignisStrike] at @s run function wancomatter:boss/dusk/skill3/tick
execute if entity @e[tag=b3magmaBase,limit=1] as @e[tag=b3magmaBase] at @s run function wancomatter:boss/dusk/skill4/tick
execute if entity @e[tag=b3magmaCross,limit=1] run scoreboard players add @e[tag=b3magmaCross] counter 1
execute if entity @e[tag=b3magmaCross,limit=1] as @e[tag=b3magmaCross] at @s run function wancomatter:boss/dusk/skill4/tick2
execute if entity @e[tag=b3s5using,limit=1] as @e[tag=b3s5using] at @s run function wancomatter:boss/dusk/skill5/tick
execute if entity @e[tag=b3volcanoSeed,limit=1] as @e[tag=b3volcanoSeed] at @s run function wancomatter:boss/dusk/skill6/tick1
execute if entity @e[tag=b3volcano,limit=1] run scoreboard players add @e[tag=b3volcano] counter 1
execute if entity @e[tag=b3volcano,limit=1] as @e[tag=b3volcano] unless score @s counter matches 60.. at @s run function wancomatter:boss/dusk/skill6/tick2
execute if entity @e[tag=b3volcano,limit=1] as @e[tag=b3volcano] if score @s counter matches 60.. at @s run function wancomatter:boss/dusk/skill6/tick3
execute if entity @e[tag=b3s6slime,limit=1] run scoreboard players add @e[tag=b3s6slime] counter 1
execute if entity @e[tag=b3s6slime,limit=1,scores={counter=4..}] as @e[tag=b3s6slime,scores={counter=4..}] run data merge entity @s {Health:0f,Size:0}
execute if entity @e[tag=b3roundStand,limit=1] as @e[tag=b3roundStand] at @s run function wancomatter:boss/dusk/skill7/tick
execute if entity @e[tag=b3roundLance,limit=1] as @e[tag=b3roundLance] at @s run function wancomatter:boss/dusk/skill7/tick2
execute if entity @e[tag=b3s0target,limit=1] as @e[tag=b3s0target] at @s run function wancomatter:boss/dusk/skill0/tick
execute if entity @e[tag=b3circleArrow,limit=1] as @e[tag=b3circleArrow] at @s run function wancomatter:boss/dusk/skill8/tick
execute if entity @e[tag=b3circleFire,limit=1] as @e[tag=b3circleFire] at @s run function wancomatter:boss/dusk/skill8/tick2

execute if entity @e[tag=b3s21arrow,limit=1] run function wancomatter:boss/dusk/skill21/tick1
execute if entity @e[tag=b3s21turret,limit=1] as @e[tag=b3s21turret] at @s run function wancomatter:boss/dusk/skill21/tick2
execute if entity @e[tag=b3s21shot,limit=1] run function wancomatter:boss/dusk/skill21/tick3

execute if entity @e[tag=b3s22charge,limit=1] as @e[tag=b3s22charge] at @s run function wancomatter:boss/dusk/skill22/tick
execute if entity @e[tag=b3s22meteor,limit=1] as @e[tag=b3s22meteor] at @s run function wancomatter:boss/dusk/skill22/tick3
execute if entity @e[tag=b3s22fire,limit=1] as @e[tag=b3s22fire] at @s run function wancomatter:boss/dusk/skill22/tick4
execute if entity @e[tag=b3s22flash,limit=1] as @e[tag=b3s22flash] at @s run function wancomatter:boss/dusk/skill22/tick5


