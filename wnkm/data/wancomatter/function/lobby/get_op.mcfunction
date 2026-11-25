tellraw @a [{"text":"[システム] "},{"selector":"@s"},{"text":" がゲームモニター権限を取得しました"}]
item replace entity @s container.18 with minecraft:nether_star[custom_data={invGUI:18b,invGUIitem:1b},custom_name={color:"light_purple",italic:0b,text:"OP: モニターを開く"}]
playsound minecraft:entity.player.levelup master @a 0 -30 0 0 0.5 1
clear @s minecraft:written_book[custom_data~{invGUI:-18b}]
tag @s add op
