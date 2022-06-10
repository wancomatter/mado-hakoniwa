playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 2
tellraw @s {"translate":"弾数が足りません。%sキーでドロップしてリロードしてください。","with":[{"keybind":"key.drop"}],"color":"red"}
