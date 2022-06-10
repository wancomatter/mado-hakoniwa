execute if data entity @s SelectedItem.tag.double_cast_first run function wancomatter:general/bless/double_cast_second
execute if data entity @s Inventory[{tag:{double_cast_available:1b}}] unless data entity @s SelectedItem.tag.double_cast_first unless data entity @s SelectedItem.tag.usedSkillSlot run function wancomatter:general/bless/double_cast_first
execute if data entity @s {SelectedItem:{tag:{double_cast_first:2b}}} run function wancomatter:general/bless/double_cast_first_remove

execute if data entity @s Inventory[{tag:{onepoint_cast_available:1b}}] unless data entity @s SelectedItem.tag.usedSkillSlot run function wancomatter:general/bless/onepoint_cast_check_slot

scoreboard players operation @s CooldownX *= @s statCTAmount
scoreboard players operation @s CooldownX /= #1000 counter
scoreboard players operation @s CooldownX_max *= @s statCTAmount
scoreboard players operation @s CooldownX_max /= #1000 counter

tag @s add skill_success