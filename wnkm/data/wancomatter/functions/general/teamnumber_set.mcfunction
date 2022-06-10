execute as @e[team=Red,scores={playerNumber=-2147483648..}] unless score @s teamNumber matches 1 run scoreboard players set @s teamNumber 1
execute as @e[team=Aqua,scores={playerNumber=-2147483648..}] unless score @s teamNumber matches 2 run scoreboard players set @s teamNumber 2
execute as @e[team=Yellow,scores={playerNumber=-2147483648..}] unless score @s teamNumber matches 3 run scoreboard players set @s teamNumber 3
execute as @e[team=Green,scores={playerNumber=-2147483648..}] unless score @s teamNumber matches 4 run scoreboard players set @s teamNumber 4
execute as @e[team=Purple,scores={playerNumber=-2147483648..}] unless score @s teamNumber matches 5 run scoreboard players set @s teamNumber 5
execute as @e[team=White,scores={playerNumber=-2147483648..}] unless score @s teamNumber matches 6 run scoreboard players set @s teamNumber 6
execute as @e[team=Black,scores={playerNumber=-2147483648..}] unless score @s teamNumber matches 7 run scoreboard players set @s teamNumber 7
execute as @e[team=Blue,scores={playerNumber=-2147483648..}] unless score @s teamNumber matches 8 run scoreboard players set @s teamNumber 8
execute as @e[team=Pink,scores={playerNumber=-2147483648..}] unless score @s teamNumber matches 9 run scoreboard players set @s teamNumber 9
execute as @e[team=Gold,scores={playerNumber=-2147483648..}] unless score @s teamNumber matches 10 run scoreboard players set @s teamNumber 10
execute as @e[team=Gray,scores={playerNumber=-2147483648..}] unless score @s teamNumber matches 11 run scoreboard players set @s teamNumber 11
execute as @e[team=DarkRed,scores={playerNumber=-2147483648..}] unless score @s teamNumber matches 12 run scoreboard players set @s teamNumber 12
execute as @e[team=DarkAqua,scores={playerNumber=-2147483648..}] unless score @s teamNumber matches 13 run scoreboard players set @s teamNumber 13
execute as @e[team=DarkGreen,scores={playerNumber=-2147483648..}] unless score @s teamNumber matches 14 run scoreboard players set @s teamNumber 14
execute as @e[team=DarkBlue,scores={playerNumber=-2147483648..}] unless score @s teamNumber matches 15 run scoreboard players set @s teamNumber 15
execute as @e[team=DarkGray,scores={playerNumber=-2147483648..}] unless score @s teamNumber matches 16 run scoreboard players set @s teamNumber 16
execute as @e[team=noPush,scores={playerNumber=-2147483648..}] unless score @s teamNumber matches 17 run scoreboard players set @s teamNumber 17
execute as @e[team=battleroyal,scores={playerNumber=-2147483648..}] unless score @s teamNumber = @s playerNumber run scoreboard players operation @s teamNumber = @s playerNumber
execute unless score #clock_teamnumber counter matches 50.. run scoreboard players set @a[team=z_spectate] teamNumber 0
scoreboard players set #clock_teamnumber counter 0