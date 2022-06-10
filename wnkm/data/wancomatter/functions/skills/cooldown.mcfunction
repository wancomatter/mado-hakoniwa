tag @s remove skill_success
execute store result score #dummy subcounter run data get entity @s SelectedItemSlot

execute if score #dummy subcounter matches 0 run scoreboard players operation @s Cooldown1 = @s CooldownX
execute if score #dummy subcounter matches 0 run scoreboard players operation @s Cooldown1_max = @s CooldownX_max

execute if score #dummy subcounter matches 1 run scoreboard players operation @s Cooldown2 = @s CooldownX
execute if score #dummy subcounter matches 1 run scoreboard players operation @s Cooldown2_max = @s CooldownX_max

execute if score #dummy subcounter matches 2 run scoreboard players operation @s Cooldown3 = @s CooldownX
execute if score #dummy subcounter matches 2 run scoreboard players operation @s Cooldown3_max = @s CooldownX_max

execute if score #dummy subcounter matches 3 run scoreboard players operation @s Cooldown4 = @s CooldownX
execute if score #dummy subcounter matches 3 run scoreboard players operation @s Cooldown4_max = @s CooldownX_max

execute if score #dummy subcounter matches 4 run scoreboard players operation @s Cooldown5 = @s CooldownX
execute if score #dummy subcounter matches 4 run scoreboard players operation @s Cooldown5_max = @s CooldownX_max

execute if score #dummy subcounter matches 5 run scoreboard players operation @s Cooldown6 = @s CooldownX
execute if score #dummy subcounter matches 5 run scoreboard players operation @s Cooldown6_max = @s CooldownX_max

execute if score #dummy subcounter matches 6 run scoreboard players operation @s Cooldown7 = @s CooldownX
execute if score #dummy subcounter matches 6 run scoreboard players operation @s Cooldown7_max = @s CooldownX_max

execute if score #dummy subcounter matches 7 run scoreboard players operation @s Cooldown8 = @s CooldownX
execute if score #dummy subcounter matches 7 run scoreboard players operation @s Cooldown8_max = @s CooldownX_max

execute if score #dummy subcounter matches 8 run scoreboard players operation @s Cooldown9 = @s CooldownX
execute if score #dummy subcounter matches 8 run scoreboard players operation @s Cooldown9_max = @s CooldownX_max
#scoreboard players add #dummy subcounter 1
#execute store result entity @s SelectedItem.tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] store result score @s dummy run data get entity @s SelectedItem.tag.CustomModelData
data modify storage wnkm:work Items set from entity @s Inventory
execute if score @s dummy matches 1 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 2 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 3 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 4 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 5 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 6 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches -6 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:-6}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 7 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 8 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 9 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 10 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 11 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 12 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:12}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 13 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:13}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 14 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:14}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 15 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:15}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 16 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:16}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 17 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:17}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 18 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:18}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 19 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:19}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 20 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:20}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 21 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:21}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 22 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:22}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 23 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:23}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 24 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:24}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 25 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:25}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 26 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:26}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 27 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:27}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 28 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:28}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 29 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:29}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 30 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:30}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 31 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:31}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 32 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:32}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 33 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:33}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 34 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:34}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 35 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:35}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 36 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:36}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 37 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:37}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 38 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:38}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 39 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:39}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 40 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:40}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 41 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:41}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 42 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:42}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 43..44 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:43}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 43..44 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:44}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 45 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:45}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 46 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:46}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 47 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:47}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 48 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:48}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 49 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:49}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 50 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:50}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 51 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:51}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 52 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:52}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 53 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:53}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 54 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:54}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 55 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:55}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 56 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:56}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 57 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:57}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 58 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:58}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 59 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:59}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 60 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 61 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:61}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 62 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:62}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 63 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:63}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 64 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:64}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 65 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:65}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 66 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:66}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 67 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:67}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 68 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:68}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 69 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:69}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 70 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:70}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 71 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:71}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 72 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:72}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 73 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:73}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 74 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:74}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 75 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:75}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 76 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:76}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 77 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:77}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 78 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:78}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 79 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:79}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 80 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:80}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 81 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:81}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 82 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:82}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 83 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:83}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 84 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:84}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 85 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:85}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 86 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:86}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 87 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:87}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 88 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:88}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 89 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:89}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 90 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:90}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 91 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:91}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 92 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:92}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 93 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:93}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 94 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:94}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 95 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:95}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 96 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:96}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 97 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:97}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 98 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:98}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 99 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:99}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 100 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:100}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 101 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:101}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 102 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:102}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 103 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:103}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 104 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:104}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 105 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:105}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 106 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:106}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 107 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:107}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 108 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:108}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 109..110 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:109}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 109..110 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:110}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 111 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:111}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 112 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:112}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 113 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:113}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 114 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:114}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 115 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:115}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 116 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:116}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 117..118 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:117}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 117..118 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:118}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 119 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:119}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 120 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:120}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter

execute unless score @s dummy matches 1.. if data entity @s {SelectedItem:{id:"minecraft:skeleton_spawn_egg"}} store result storage wnkm:work Items[{id:"minecraft:skeleton_spawn_egg"}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute unless score @s dummy matches 1.. if data entity @s {SelectedItem:{id:"minecraft:blaze_spawn_egg"}} store result storage wnkm:work Items[{id:"minecraft:blaze_spawn_egg"}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute unless score @s dummy matches 1.. if data entity @s {SelectedItem:{id:"minecraft:stray_spawn_egg"}} store result storage wnkm:work Items[{id:"minecraft:stray_spawn_egg"}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute unless score @s dummy matches 1.. if data entity @s {SelectedItem:{id:"minecraft:cave_spider_spawn_egg"}} store result storage wnkm:work Items[{id:"minecraft:cave_spider_spawn_egg"}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute unless score @s dummy matches 1.. if data entity @s {SelectedItem:{id:"minecraft:witch_spawn_egg"}} store result storage wnkm:work Items[{id:"minecraft:witch_spawn_egg"}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute unless score @s dummy matches 1.. if data entity @s {SelectedItem:{id:"minecraft:creeper_spawn_egg"}} store result storage wnkm:work Items[{id:"minecraft:creeper_spawn_egg"}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute unless score @s dummy matches 1.. if data entity @s {SelectedItem:{id:"minecraft:magma_cube_spawn_egg"}} store result storage wnkm:work Items[{id:"minecraft:magma_cube_spawn_egg"}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute unless score @s dummy matches 1.. if data entity @s {SelectedItem:{id:"minecraft:pufferfish_spawn_egg"}} store result storage wnkm:work Items[{id:"minecraft:pufferfish_spawn_egg"}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter

scoreboard players set @s dummy 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] store result score @s dummy run data get entity @s SelectedItem.tag.CustomModelData
execute if score @s dummy matches 100 store result storage wnkm:work Items[{id:"minecraft:diamond_sword",tag:{CustomModelData:100}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 104 store result storage wnkm:work Items[{id:"minecraft:diamond_sword",tag:{CustomModelData:104}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 113 store result storage wnkm:work Items[{id:"minecraft:diamond_sword",tag:{CustomModelData:113}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 114 store result storage wnkm:work Items[{id:"minecraft:diamond_sword",tag:{CustomModelData:114}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 114 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:114}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter

scoreboard players set @s dummy 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] store result score @s dummy run data get entity @s SelectedItem.tag.CustomModelData
execute if score @s dummy matches 108 store result storage wnkm:work Items[{id:"minecraft:iron_axe",tag:{CustomModelData:108}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter

scoreboard players set @s dummy 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:trident"}}] store result score @s dummy run data get entity @s SelectedItem.tag.CustomModelData
execute if score @s dummy matches 101 store result storage wnkm:work Items[{id:"minecraft:trident",tag:{CustomModelData:101}}].tag.usedSkillSlot byte 1 run scoreboard players get #dummy subcounter

fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:inv_copy_stone_1
data modify block 0 0 0 Items[{Slot:0b}].tag.Item set from storage wnkm:work Items[{Slot:-106b}]
data modify block 0 0 0 Items[{Slot:0b}].tag.Item.Slot set value 0b
data modify block 0 0 0 Items[{Slot:0b}] set from block 0 0 0 Items[{Slot:0b}].tag.Item
loot replace entity @s weapon.offhand 1 mine 0 0 0 air{inv_copy:1b}

data remove block 0 0 0 Items[]
data modify block 0 0 0 Items set from storage wnkm:work Items
loot replace entity @s container.0 27 mine 0 0 0 air{inv_copy:1b}

data remove block 0 0 0 Items[]
data modify block 0 0 0 Items[{Slot:0b}] set from storage wnkm:work Items[{Slot:0b}]
loot replace entity @s container.0 1 mine 0 0 0 air{inv_copy:1b}

data remove block 0 0 0 Items[]
loot replace block 0 0 0 container.0 loot wancomatter:inv_copy
data modify block 0 0 0 Items[{Slot:0b}].tag.Item set from storage wnkm:work Items[{Slot:27b}]
data modify block 0 0 0 Items[{Slot:1b}].tag.Item set from storage wnkm:work Items[{Slot:28b}]
data modify block 0 0 0 Items[{Slot:2b}].tag.Item set from storage wnkm:work Items[{Slot:29b}]
data modify block 0 0 0 Items[{Slot:3b}].tag.Item set from storage wnkm:work Items[{Slot:30b}]
data modify block 0 0 0 Items[{Slot:4b}].tag.Item set from storage wnkm:work Items[{Slot:31b}]
data modify block 0 0 0 Items[{Slot:5b}].tag.Item set from storage wnkm:work Items[{Slot:32b}]
data modify block 0 0 0 Items[{Slot:6b}].tag.Item set from storage wnkm:work Items[{Slot:33b}]
data modify block 0 0 0 Items[{Slot:7b}].tag.Item set from storage wnkm:work Items[{Slot:34b}]
data modify block 0 0 0 Items[{Slot:8b}].tag.Item set from storage wnkm:work Items[{Slot:35b}]
data modify block 0 0 0 Items[{Slot:0b}].tag.Item.Slot set value 0b
data modify block 0 0 0 Items[{Slot:1b}].tag.Item.Slot set value 1b
data modify block 0 0 0 Items[{Slot:2b}].tag.Item.Slot set value 2b
data modify block 0 0 0 Items[{Slot:3b}].tag.Item.Slot set value 3b
data modify block 0 0 0 Items[{Slot:4b}].tag.Item.Slot set value 4b
data modify block 0 0 0 Items[{Slot:5b}].tag.Item.Slot set value 5b
data modify block 0 0 0 Items[{Slot:6b}].tag.Item.Slot set value 6b
data modify block 0 0 0 Items[{Slot:7b}].tag.Item.Slot set value 7b
data modify block 0 0 0 Items[{Slot:8b}].tag.Item.Slot set value 8b
data modify block 0 0 0 Items[{Slot:0b}] set from block 0 0 0 Items[{Slot:0b}].tag.Item
data modify block 0 0 0 Items[{Slot:1b}] set from block 0 0 0 Items[{Slot:1b}].tag.Item
data modify block 0 0 0 Items[{Slot:2b}] set from block 0 0 0 Items[{Slot:2b}].tag.Item
data modify block 0 0 0 Items[{Slot:3b}] set from block 0 0 0 Items[{Slot:3b}].tag.Item
data modify block 0 0 0 Items[{Slot:4b}] set from block 0 0 0 Items[{Slot:4b}].tag.Item
data modify block 0 0 0 Items[{Slot:5b}] set from block 0 0 0 Items[{Slot:5b}].tag.Item
data modify block 0 0 0 Items[{Slot:6b}] set from block 0 0 0 Items[{Slot:6b}].tag.Item
data modify block 0 0 0 Items[{Slot:7b}] set from block 0 0 0 Items[{Slot:7b}].tag.Item
data modify block 0 0 0 Items[{Slot:8b}] set from block 0 0 0 Items[{Slot:8b}].tag.Item
loot replace entity @s container.27 9 mine 0 0 0 air{inv_copy:1b}

setblock 0 0 0 air
data remove storage wnkm:work Items

scoreboard players reset @s dummy
scoreboard players reset @s CooldownX
scoreboard players reset @s CooldownX_max