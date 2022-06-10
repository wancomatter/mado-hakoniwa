execute if entity @s[tag=!use_poseidon,scores={dummy=102}] unless entity @s[scores={Mana=11..,CooldownX=..0}] run tag @s add failed
execute if entity @s[tag=!use_poseidon,scores={dummy=102}] if entity @s[scores={Mana=11..}] run function wancomatter:skills/102/use
execute if entity @s[tag=use_poseidon,scores={dummy=102}] unless entity @s[scores={Mana=11..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[tag=use_poseidon,scores={dummy=102}] if entity @s[scores={Mana=11..,CooldownX=..0}] run function wancomatter:skills/102/discharge
execute if entity @s[tag=use_poseidon] run tag @s remove use_poseidon
