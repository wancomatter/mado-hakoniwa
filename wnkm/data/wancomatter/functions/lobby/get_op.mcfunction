tellraw @a [{"text":"[システム] "},{"selector":"@s"},{"text":" がゲームモニター権限を取得しました"}]
item replace entity @s container.18 with minecraft:nether_star{invGUI:18b,display:{Name:'{"text":"OP: モニターを開く","italic":false,"color":"light_purple"}'},invGUIitem:1b}
playsound minecraft:entity.player.levelup master @a 0 -30 0 0 0.5 1
clear @s minecraft:written_book{invGUI:-18b}
tag @s add op