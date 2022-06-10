#> wancomatter:operation/random
# data merge storage random: {min:0,max:360}
# random:のstorageにminとmaxを入力して実行する事でその幅内で乱数を生成します

fill 0 0 0 0 0 0 shulker_box{Lock:"wnkm"} replace
execute if data storage random: min store result score #wnkm_random Cooldown1 run data get storage random: min 1000
execute if data storage random: max store result score #wnkm_random Cooldown2 run data get storage random: max 1000

data remove block 0 0 0 Items[]
loot replace block 0 0 0 container.0 loot wancomatter:random/storage

#スコアリセット
scoreboard players reset #wnkm_random

#戻り値
data get block 0 0 0 Items[{Slot:0b}].tag.AttributeModifiers[{Name:"random"}].Amount 0.001