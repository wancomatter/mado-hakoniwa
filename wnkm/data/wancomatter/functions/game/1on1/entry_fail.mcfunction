#実行者:tag=1on1_entry(AEC)

tellraw @a[tag=this] [{"text":"[1on1]","color":"gold"},{"text":" 人数が集まりませんでした","color":"white"}]
tag @a[tag=this] remove 1on1_searching
tag @a[tag=this] remove this

kill @s