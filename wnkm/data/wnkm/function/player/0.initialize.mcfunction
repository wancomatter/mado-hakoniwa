execute unless entity @s[type=player] run return fail
execute unless data storage wnkm:version {world:1} run return fail
execute if score @s wnkm.schema matches 1.. run return 1

# 新版の装備を受け取れるのは、初回初期化が完了したプレイヤーだけ。
function wnkm:player/1.reset_legacy
execute if items entity @s enderchest.* * run return fail
execute if items entity @s inventory.* * run return fail
execute if items entity @s hotbar.* * run return fail
execute if items entity @s armor.* * run return fail
execute if items entity @s weapon.offhand * run return fail
execute unless function wnkm:player/2.create_state run return fail
scoreboard players set @s wnkm.schema 1
return 1
