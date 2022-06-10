summon minecraft:armor_stand ~ ~ ~ {Tags:["discharge","kusaNagiSlash"],NoGravity:1b,Marker:1b,Invisible:1b}
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @a[tag=now-kusaNagi,limit=1] playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @a[tag=now-kusaNagi,limit=1] teamNumber
execute if score @s counter matches ..1 as @a[tag=now-kusaNagi] at @s facing ^2.8977774788672048602492295991867 ^ ^0.77645713530756228704669651287214 run tp @e[tag=discharge] ~ ~ ~ ~ ~
execute if score @s counter matches ..1 as @a[tag=now-kusaNagi] at @s positioned ^-2.8977774788672048602492295991867 ^ ^0.77645713530756228704669651287214 run tp @e[tag=discharge] ~ ~0.9 ~
execute if score @s counter matches 2 as @a[tag=now-kusaNagi] at @s facing ^-2.8977774788672048602492295991867 ^ ^0.77645713530756228704669651287214 run tp @e[tag=discharge] ~ ~ ~ ~ ~
execute if score @s counter matches 2 as @a[tag=now-kusaNagi] at @s positioned ^2.8977774788672048602492295991867 ^ ^0.77645713530756228704669651287214 run tp @e[tag=discharge] ~ ~0.9 ~
execute if score @s counter matches 3 as @a[tag=now-kusaNagi] at @s facing ^2.5980762113533159402911695122588 ^ ^1.5 run tp @e[tag=discharge] ~ ~ ~ ~ ~
execute if score @s counter matches 3 as @a[tag=now-kusaNagi] at @s positioned ^-2.5980762113533159402911695122588 ^ ^1.5 run tp @e[tag=discharge] ~ ~0.9 ~
execute if score @s counter matches 4 as @a[tag=now-kusaNagi] at @s facing ^-2.5980762113533159402911695122588 ^ ^1.5 run tp @e[tag=discharge] ~ ~ ~ ~ ~
execute if score @s counter matches 4 as @a[tag=now-kusaNagi] at @s positioned ^2.5980762113533159402911695122588 ^ ^1.5 run tp @e[tag=discharge] ~ ~0.9 ~
execute if score @s counter matches 5 as @a[tag=now-kusaNagi] at @s facing ^2.1213203435596425732025330863145 ^ ^2.1213203435596425732025330863145 run tp @e[tag=discharge] ~ ~ ~ ~ ~
execute if score @s counter matches 5 as @a[tag=now-kusaNagi] at @s positioned ^-2.1213203435596425732025330863145 ^ ^2.1213203435596425732025330863145 run tp @e[tag=discharge] ~ ~0.9 ~
execute if score @s counter matches 6 as @a[tag=now-kusaNagi] at @s facing ^-2.1213203435596425732025330863145 ^ ^2.1213203435596425732025330863145 run tp @e[tag=discharge] ~ ~ ~ ~ ~
execute if score @s counter matches 6 as @a[tag=now-kusaNagi] at @s positioned ^2.1213203435596425732025330863145 ^ ^2.1213203435596425732025330863145 run tp @e[tag=discharge] ~ ~0.9 ~
execute if score @s counter matches 7 as @a[tag=now-kusaNagi] at @s facing ^1.5 ^ ^2.5980762113533159402911695122588 run tp @e[tag=discharge] ~ ~ ~ ~ ~
execute if score @s counter matches 7 as @a[tag=now-kusaNagi] at @s positioned ^-1.5 ^ ^2.5980762113533159402911695122588 run tp @e[tag=discharge] ~ ~0.9 ~
execute if score @s counter matches 8 as @a[tag=now-kusaNagi] at @s facing ^-1.5 ^ ^2.5980762113533159402911695122588 run tp @e[tag=discharge] ~ ~ ~ ~ ~
execute if score @s counter matches 8 as @a[tag=now-kusaNagi] at @s positioned ^1.5 ^ ^2.5980762113533159402911695122588 run tp @e[tag=discharge] ~ ~0.9 ~
execute if score @s counter matches 9 as @a[tag=now-kusaNagi] at @s facing ^0.77645713530756228704669651287214 ^ ^2.8977774788672048602492295991867 run tp @e[tag=discharge] ~ ~ ~ ~ ~
execute if score @s counter matches 9 as @a[tag=now-kusaNagi] at @s positioned ^-0.77645713530756228704669651287214 ^ ^2.8977774788672048602492295991867 run tp @e[tag=discharge] ~ ~0.9 ~
execute if score @s counter matches 10 as @a[tag=now-kusaNagi] at @s facing ^-0.77645713530756228704669651287214 ^ ^2.8977774788672048602492295991867 run tp @e[tag=discharge] ~ ~ ~ ~ ~
execute if score @s counter matches 10 as @a[tag=now-kusaNagi] at @s positioned ^0.77645713530756228704669651287214 ^ ^2.8977774788672048602492295991867 run tp @e[tag=discharge] ~ ~0.9 ~
execute if score @s counter matches 11 as @a[tag=now-kusaNagi] at @s facing ^ ^ ^3 run tp @e[tag=discharge] ~ ~ ~ ~ ~
execute if score @s counter matches 11 as @a[tag=now-kusaNagi] at @s positioned ^ ^ ^3 run tp @e[tag=discharge] ~ ~0.9 ~
execute positioned as @e[tag=discharge] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1.5 0.7
execute positioned as @e[tag=discharge] run playsound minecraft:entity.player.attack.sweep master @a ~ ~1 ~ 1.2 0.5
tag @e[tag=discharge] remove discharge


tag @a[tag=now-kusaNagi] remove now-kusaNagi

#75 60 45 30 15 0