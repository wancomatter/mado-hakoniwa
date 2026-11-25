# 成否に関係なく入力を消費し、次のtickや別装備に持ち越さない。
scoreboard players reset @s rod
execute if entity @s[gamemode=spectator] run return fail
execute unless items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{wnkm:{equipment:"wnkm:equipment/magic_assist/hadal"}}] run return fail

# 現段階では発動対象が1種なので、同じ装備の複製も同じクールダウンを使う。
execute if score @s CooldownX matches 1.. run return run function wnkm:equipment/magic_assist/hadal/1.cooldown_feedback
execute unless score @s Mana matches 7.. run return run function wnkm:equipment/magic_assist/hadal/2.mana_feedback
return run function wnkm:equipment/magic_assist/hadal/0.cast
