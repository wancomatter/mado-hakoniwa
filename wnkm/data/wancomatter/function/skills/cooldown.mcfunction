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
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] store result score @s dummy run data get entity @s SelectedItem.components."minecraft:custom_data".LegacySkill
data modify storage wnkm:work Items set from entity @s Inventory
execute if score @s dummy matches 1 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:1}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 2 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:2}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 3 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:3}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 4 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:4}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 5 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:5}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 6 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:6}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches -6 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:-6}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 7 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:7}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 8 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:8}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 9 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:9}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 10 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:10}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 11 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:11}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 12 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:12}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 13 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:13}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 14 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:14}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 15 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:15}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 16 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:16}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 17 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:17}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 18 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:18}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 19 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:19}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 20 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:20}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 21 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:21}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 22 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:22}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 23 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:23}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 24 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:24}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 25 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:25}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 26 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:26}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 27 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:27}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 28 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:28}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 29 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:29}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 30 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:30}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 31 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:31}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 32 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:32}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 33 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:33}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 34 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:34}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 35 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:35}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 36 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:36}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 37 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:37}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 38 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:38}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 39 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:39}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 40 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:40}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 41 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:41}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 42 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:42}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 43..44 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:43}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 43..44 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:44}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 45 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:45}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 46 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:46}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 47 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:47}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 48 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:48}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 49 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:49}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 50 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:50}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 51 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:51}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 52 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:52}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 53 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:53}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 54 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:54}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 55 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:55}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 56 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:56}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 57 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:57}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 58 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:58}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 59 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:59}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 60 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:60}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 61 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:61}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 62 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:62}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 63 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:63}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 64 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:64}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 65 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:65}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 66 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:66}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 67 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:67}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 68 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:68}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 69 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:69}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 70 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:70}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 71 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:71}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 72 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:72}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 73 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:73}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 74 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:74}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 75 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:75}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 76 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:76}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 77 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:77}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 78 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:78}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 79 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:79}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 80 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:80}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 81 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:81}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 82 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:82}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 83 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:83}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 84 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:84}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 85 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:85}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 86 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:86}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 87 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:87}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 88 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:88}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 89 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:89}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 90 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:90}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 91 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:91}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 92 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:92}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 93 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:93}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 94 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:94}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 95 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:95}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 96 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:96}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 97 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:97}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 98 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:98}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 99 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:99}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 100 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:100}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 101 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:101}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 102 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:102}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 103 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:103}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 104 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:104}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 105 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:105}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 106 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:106}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 107 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:107}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 108 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:108}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 109..110 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:109}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 109..110 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:110}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 111 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:111}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 112 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:112}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 113 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:113}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 114 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:114}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 115 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:115}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 116 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:116}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 117..118 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:117}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 117..118 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:118}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 119 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:119}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 120 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:120}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter

execute unless score @s dummy matches 1.. if data entity @s {SelectedItem:{id:"minecraft:skeleton_spawn_egg"}} store result storage wnkm:work Items[{id:"minecraft:skeleton_spawn_egg"}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute unless score @s dummy matches 1.. if data entity @s {SelectedItem:{id:"minecraft:blaze_spawn_egg"}} store result storage wnkm:work Items[{id:"minecraft:blaze_spawn_egg"}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute unless score @s dummy matches 1.. if data entity @s {SelectedItem:{id:"minecraft:stray_spawn_egg"}} store result storage wnkm:work Items[{id:"minecraft:stray_spawn_egg"}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute unless score @s dummy matches 1.. if data entity @s {SelectedItem:{id:"minecraft:cave_spider_spawn_egg"}} store result storage wnkm:work Items[{id:"minecraft:cave_spider_spawn_egg"}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute unless score @s dummy matches 1.. if data entity @s {SelectedItem:{id:"minecraft:witch_spawn_egg"}} store result storage wnkm:work Items[{id:"minecraft:witch_spawn_egg"}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute unless score @s dummy matches 1.. if data entity @s {SelectedItem:{id:"minecraft:creeper_spawn_egg"}} store result storage wnkm:work Items[{id:"minecraft:creeper_spawn_egg"}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute unless score @s dummy matches 1.. if data entity @s {SelectedItem:{id:"minecraft:magma_cube_spawn_egg"}} store result storage wnkm:work Items[{id:"minecraft:magma_cube_spawn_egg"}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute unless score @s dummy matches 1.. if data entity @s {SelectedItem:{id:"minecraft:pufferfish_spawn_egg"}} store result storage wnkm:work Items[{id:"minecraft:pufferfish_spawn_egg"}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter

scoreboard players set @s dummy 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] store result score @s dummy run data get entity @s SelectedItem.components."minecraft:custom_data".LegacySkill
execute if score @s dummy matches 100 store result storage wnkm:work Items[{id:"minecraft:diamond_sword",components:{"minecraft:custom_data":{LegacySkill:100}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 104 store result storage wnkm:work Items[{id:"minecraft:diamond_sword",components:{"minecraft:custom_data":{LegacySkill:104}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 113 store result storage wnkm:work Items[{id:"minecraft:diamond_sword",components:{"minecraft:custom_data":{LegacySkill:113}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 114 store result storage wnkm:work Items[{id:"minecraft:diamond_sword",components:{"minecraft:custom_data":{LegacySkill:114}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter
execute if score @s dummy matches 114 store result storage wnkm:work Items[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{LegacySkill:114}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter

scoreboard players set @s dummy 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] store result score @s dummy run data get entity @s SelectedItem.components."minecraft:custom_data".LegacySkill
execute if score @s dummy matches 108 store result storage wnkm:work Items[{id:"minecraft:iron_axe",components:{"minecraft:custom_data":{LegacySkill:108}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter

scoreboard players set @s dummy 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:trident"}}] store result score @s dummy run data get entity @s SelectedItem.components."minecraft:custom_data".LegacySkill
execute if score @s dummy matches 101 store result storage wnkm:work Items[{id:"minecraft:trident",components:{"minecraft:custom_data":{LegacySkill:101}}}].components."minecraft:custom_data".usedSkillSlot byte 1 run scoreboard players get #dummy subcounter

fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:inv_copy_stone_1
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:-106b}]
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1024 0 1024 Items[{Slot:0b}] set from block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item
item replace entity @s weapon.offhand from block 1024 0 1024 container.0

data remove block 1024 0 1024 Items[]
data modify block 1024 0 1024 Items set from storage wnkm:work Items
item replace entity @s container.0 from block 1024 0 1024 container.0
item replace entity @s container.1 from block 1024 0 1024 container.1
item replace entity @s container.2 from block 1024 0 1024 container.2
item replace entity @s container.3 from block 1024 0 1024 container.3
item replace entity @s container.4 from block 1024 0 1024 container.4
item replace entity @s container.5 from block 1024 0 1024 container.5
item replace entity @s container.6 from block 1024 0 1024 container.6
item replace entity @s container.7 from block 1024 0 1024 container.7
item replace entity @s container.8 from block 1024 0 1024 container.8
item replace entity @s container.9 from block 1024 0 1024 container.9
item replace entity @s container.10 from block 1024 0 1024 container.10
item replace entity @s container.11 from block 1024 0 1024 container.11
item replace entity @s container.12 from block 1024 0 1024 container.12
item replace entity @s container.13 from block 1024 0 1024 container.13
item replace entity @s container.14 from block 1024 0 1024 container.14
item replace entity @s container.15 from block 1024 0 1024 container.15
item replace entity @s container.16 from block 1024 0 1024 container.16
item replace entity @s container.17 from block 1024 0 1024 container.17
item replace entity @s container.18 from block 1024 0 1024 container.18
item replace entity @s container.19 from block 1024 0 1024 container.19
item replace entity @s container.20 from block 1024 0 1024 container.20
item replace entity @s container.21 from block 1024 0 1024 container.21
item replace entity @s container.22 from block 1024 0 1024 container.22
item replace entity @s container.23 from block 1024 0 1024 container.23
item replace entity @s container.24 from block 1024 0 1024 container.24
item replace entity @s container.25 from block 1024 0 1024 container.25
item replace entity @s container.26 from block 1024 0 1024 container.26

data remove block 1024 0 1024 Items[]
data modify block 1024 0 1024 Items[{Slot:0b}] set from storage wnkm:work Items[{Slot:0b}]
item replace entity @s container.0 from block 1024 0 1024 container.0

data remove block 1024 0 1024 Items[]
loot replace block 1024 0 1024 container.0 loot wancomatter:inv_copy
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:27b}]
data modify block 1024 0 1024 Items[{Slot:1b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:28b}]
data modify block 1024 0 1024 Items[{Slot:2b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:29b}]
data modify block 1024 0 1024 Items[{Slot:3b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:30b}]
data modify block 1024 0 1024 Items[{Slot:4b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:31b}]
data modify block 1024 0 1024 Items[{Slot:5b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:32b}]
data modify block 1024 0 1024 Items[{Slot:6b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:33b}]
data modify block 1024 0 1024 Items[{Slot:7b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:34b}]
data modify block 1024 0 1024 Items[{Slot:8b}].components."minecraft:custom_data".Item set from storage wnkm:work Items[{Slot:35b}]
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1024 0 1024 Items[{Slot:1b}].components."minecraft:custom_data".Item.Slot set value 1b
data modify block 1024 0 1024 Items[{Slot:2b}].components."minecraft:custom_data".Item.Slot set value 2b
data modify block 1024 0 1024 Items[{Slot:3b}].components."minecraft:custom_data".Item.Slot set value 3b
data modify block 1024 0 1024 Items[{Slot:4b}].components."minecraft:custom_data".Item.Slot set value 4b
data modify block 1024 0 1024 Items[{Slot:5b}].components."minecraft:custom_data".Item.Slot set value 5b
data modify block 1024 0 1024 Items[{Slot:6b}].components."minecraft:custom_data".Item.Slot set value 6b
data modify block 1024 0 1024 Items[{Slot:7b}].components."minecraft:custom_data".Item.Slot set value 7b
data modify block 1024 0 1024 Items[{Slot:8b}].components."minecraft:custom_data".Item.Slot set value 8b
data modify block 1024 0 1024 Items[{Slot:0b}] set from block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:1b}] set from block 1024 0 1024 Items[{Slot:1b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:2b}] set from block 1024 0 1024 Items[{Slot:2b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:3b}] set from block 1024 0 1024 Items[{Slot:3b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:4b}] set from block 1024 0 1024 Items[{Slot:4b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:5b}] set from block 1024 0 1024 Items[{Slot:5b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:6b}] set from block 1024 0 1024 Items[{Slot:6b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:7b}] set from block 1024 0 1024 Items[{Slot:7b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:8b}] set from block 1024 0 1024 Items[{Slot:8b}].components."minecraft:custom_data".Item
item replace entity @s container.27 from block 1024 0 1024 container.0
item replace entity @s container.28 from block 1024 0 1024 container.1
item replace entity @s container.29 from block 1024 0 1024 container.2
item replace entity @s container.30 from block 1024 0 1024 container.3
item replace entity @s container.31 from block 1024 0 1024 container.4
item replace entity @s container.32 from block 1024 0 1024 container.5
item replace entity @s container.33 from block 1024 0 1024 container.6
item replace entity @s container.34 from block 1024 0 1024 container.7
item replace entity @s container.35 from block 1024 0 1024 container.8

setblock 1024 0 1024 air
data remove storage wnkm:work Items

scoreboard players reset @s dummy
scoreboard players reset @s CooldownX
scoreboard players reset @s CooldownX_max
