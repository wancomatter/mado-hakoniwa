#実行者 -> strengthの効果が付与された人

execute if entity @s[type=!player] run function wancomatter:general/effect/strengtheffection_mob
attribute @s attack_damage modifier remove wnkm:legacy_modifier/648d7064-6a60-4f59-8abe-c2c23a6dd7a9
