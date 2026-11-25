#実行者 -> weaknessの効果が付与された人

execute if entity @s[type=!player] run function wancomatter:general/effect/weaknesseffection_mob
attribute @s attack_damage modifier remove wnkm:legacy_modifier/22653b89-116e-49dc-9b6b-9971489b5be5
