gamerule maxCommandChainLength 2147483647

scoreboard objectives add playerNumber dummy
scoreboard objectives add teamNumber dummy
scoreboard objectives add counter dummy
scoreboard objectives add foodSaturation dummy
scoreboard objectives add Mana dummy
scoreboard objectives add food food
scoreboard objectives add HPdisplay1 dummy
scoreboard objectives add HPdisplay2 dummy
scoreboard objectives add Cooldown1 dummy
scoreboard objectives add Cooldown2 dummy
scoreboard objectives add Cooldown3 dummy
scoreboard objectives add Cooldown4 dummy
scoreboard objectives add Cooldown5 dummy
scoreboard objectives add Cooldown6 dummy
scoreboard objectives add Cooldown7 dummy
scoreboard objectives add Cooldown8 dummy
scoreboard objectives add Cooldown9 dummy
scoreboard objectives add Cooldown_slot dummy
scoreboard objectives add CooldownX dummy
scoreboard objectives add CooldownX_max dummy
scoreboard objectives add Cooldown1_max dummy
scoreboard objectives add Cooldown2_max dummy
scoreboard objectives add Cooldown3_max dummy
scoreboard objectives add Cooldown4_max dummy
scoreboard objectives add Cooldown5_max dummy
scoreboard objectives add Cooldown6_max dummy
scoreboard objectives add Cooldown7_max dummy
scoreboard objectives add Cooldown8_max dummy
scoreboard objectives add Cooldown9_max dummy
scoreboard objectives add CT_darkRepulser dummy
scoreboard objectives add HPregene dummy
scoreboard objectives add hurtTimeTaken dummy
scoreboard objectives add deathTimer dummy
scoreboard objectives add HP dummy
scoreboard objectives add maxHP dummy
scoreboard objectives add Health health
scoreboard objectives add getHealth dummy
scoreboard objectives add damageTaken minecraft.custom:minecraft.damage_resisted
scoreboard objectives add dmgShield dummy
scoreboard objectives add dmgProtection dummy
scoreboard objectives add hurtByNumber dummy
scoreboard objectives add hurtWeaponNumber dummy
scoreboard objectives add hurtByTime dummy
scoreboard objectives add lastHurtByNumber dummy
scoreboard objectives add dummy dummy
scoreboard objectives add shieldBlock minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add rod minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add rod2 minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add fishrod minecraft.used:minecraft.fishing_rod
scoreboard objectives add aviate minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add subcounter dummy
scoreboard objectives add subcounter2 dummy
scoreboard objectives add magicBoost dummy
scoreboard objectives add armorResist dummy
scoreboard objectives add magicResist dummy
scoreboard objectives add projectileResist dummy
scoreboard objectives add fireResist dummy
scoreboard objectives add blastResist dummy
scoreboard objectives add maxMana dummy
scoreboard objectives add bless1 dummy
scoreboard objectives add bless2 dummy
scoreboard objectives add bless3 dummy
scoreboard objectives add bless4 dummy
scoreboard objectives add recoilY dummy
scoreboard objectives add recoilXZ dummy
scoreboard objectives add recoilTime dummy
scoreboard objectives add ManaCount dummy
scoreboard objectives add ManaRegenCount dummy
scoreboard objectives add ManaRegenAmount dummy
scoreboard objectives add ManaOperation dummy
scoreboard objectives add HPCount dummy
scoreboard objectives add HPRegenCount dummy
scoreboard objectives add HPRegenAmount dummy
scoreboard objectives add rod_drop minecraft.dropped:minecraft.carrot_on_a_stick
scoreboard objectives add hold_gun dummy
scoreboard objectives add ManaPer20 dummy
scoreboard objectives add ManaReactiveHeal dummy
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add crossbow_sneak dummy
scoreboard objectives add damageBoost dummy
scoreboard objectives add boss_hate dummy
scoreboard objectives add boss_hate2 dummy
scoreboard objectives add boss_counter1 dummy
scoreboard objectives add s12slot dummy
scoreboard objectives add s29slot dummy
scoreboard objectives add s33slot dummy
scoreboard objectives add s79slot dummy
scoreboard objectives add s83slot dummy
scoreboard objectives add s104count dummy
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add jumpBug dummy
scoreboard objectives add holdItem dummy
scoreboard objectives add levitateOperate dummy
scoreboard objectives add trident minecraft.used:minecraft.trident
scoreboard objectives add bow minecraft.used:minecraft.bow
scoreboard objectives add egg_skeleton minecraft.used:minecraft.skeleton_spawn_egg
scoreboard objectives add egg_blaze minecraft.used:minecraft.blaze_spawn_egg
scoreboard objectives add egg_stray minecraft.used:minecraft.stray_spawn_egg
scoreboard objectives add egg_cave_spider minecraft.used:minecraft.cave_spider_spawn_egg
scoreboard objectives add egg_witch minecraft.used:minecraft.witch_spawn_egg
scoreboard objectives add egg_creeper minecraft.used:minecraft.creeper_spawn_egg
scoreboard objectives add egg_magma_cube minecraft.used:minecraft.magma_cube_spawn_egg
scoreboard objectives add egg_pufferfish minecraft.used:minecraft.pufferfish_spawn_egg
scoreboard objectives add egg_drowned minecraft.used:minecraft.drowned_spawn_egg
scoreboard objectives add SelectItemSlot1 dummy
scoreboard objectives add SelectItemSlot2 dummy
scoreboard objectives add autogun_shot dummy
scoreboard objectives add blessNo5 dummy
scoreboard objectives add blessNo23 dummy
scoreboard objectives add fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add HPheal dummy
scoreboard objectives add healPower dummy
scoreboard objectives add statCTAmount dummy
#damageBoost/100がダメージに加算される。ダメージ判定毎に0になる。
scoreboard objectives add statDamageBoost dummy
#damageBoostの防具や加護ステータス版。damageBoostはスキル効果等ベースに対しこちらは永続。
#instantDMGshield: バニラのダメージソース用に用いるダメージ軽減用スコアオブジェクト。instandDMGS_timeにて時間管理。
scoreboard objectives add instantDMGshield dummy
scoreboard objectives add instantDMGS_time dummy
scoreboard objectives add instantKB_resist dummy
scoreboard objectives add page dummy
scoreboard objectives add pageChange dummy
scoreboard objectives add cost dummy
scoreboard objectives add pvpteamsaver dummy
scoreboard objectives add info dummy "戦況"
scoreboard objectives add floatboots_count dummy
scoreboard objectives add sliding_boots dummy
scoreboard objectives add respawnX dummy
scoreboard objectives add respawnY dummy
scoreboard objectives add respawnZ dummy

#山崩しの印に使うスコアボード
scoreboard objectives add yamakuzushiCT dummy

#mob_managerによる与攻撃/被攻撃エンティティ検知用のスコアボード
scoreboard objectives add AttackedEntity dummy
scoreboard objectives add AttackingEntity dummy

#召喚したmobにつける、召喚主のplayerNumber
scoreboard objectives add ownerNumber dummy
scoreboard objectives add BossHurtTime dummy

#定数定義
scoreboard players set #-1 counter -1
scoreboard players set #counter2 counter 2
scoreboard players set #2 counter 2
scoreboard players set #3 counter 3
scoreboard players set #4 counter 4
scoreboard players set #5 counter 5
scoreboard players set #6 counter 6
scoreboard players set #7 counter 7
scoreboard players set #8 counter 8
scoreboard players set #9 counter 9
scoreboard players set #10 counter 10
scoreboard players set #11 counter 11
scoreboard players set #12 counter 12
scoreboard players set #13 counter 13
scoreboard players set #15 counter 15
scoreboard players set #16 counter 16
scoreboard players set #17 counter 17
scoreboard players set #20 counter 20
scoreboard players set #23 counter 23
scoreboard players set #24 counter 24
scoreboard players set #25 counter 25
scoreboard players set #29 counter 29
scoreboard players set #32 counter 32
scoreboard players set #50 counter 50
scoreboard players set #100 counter 100
scoreboard players set #256 counter 256
scoreboard players set #360 counter 360
scoreboard players set #1000 counter 1000
scoreboard players set #2^15 counter 32768
scoreboard players set #65536 counter 65536
scoreboard players set #16777216 counter 16777216


team add Red
team modify Red color red
team modify Red collisionRule pushOwnTeam
team modify Red friendlyFire false
team modify Red nametagVisibility hideForOtherTeams
team add Aqua
team modify Aqua color aqua
team modify Aqua collisionRule pushOwnTeam
team modify Aqua friendlyFire false
team modify Aqua nametagVisibility hideForOtherTeams
team add Yellow
team modify Yellow color yellow
team modify Yellow collisionRule pushOwnTeam
team modify Yellow friendlyFire false
team modify Yellow nametagVisibility hideForOtherTeams
team add Green
team modify Green color green
team modify Green collisionRule pushOwnTeam
team modify Green friendlyFire false
team modify Green nametagVisibility hideForOtherTeams
team add Purple
team modify Purple color dark_purple
team modify Purple collisionRule pushOwnTeam
team modify Purple friendlyFire false
team modify Purple nametagVisibility hideForOtherTeams
team add White
team modify White color white
team modify White collisionRule pushOwnTeam
team modify White friendlyFire false
team modify White nametagVisibility hideForOtherTeams
team add Black
team modify Black color black
team modify Black collisionRule pushOwnTeam
team modify Black friendlyFire false
team modify Black nametagVisibility hideForOtherTeams
team add Blue
team modify Blue color blue
team modify Blue collisionRule pushOwnTeam
team modify Blue friendlyFire false
team modify Blue nametagVisibility hideForOtherTeams
team add Pink
team modify Pink color light_purple
team modify Pink collisionRule pushOwnTeam
team modify Pink friendlyFire false
team modify Pink nametagVisibility hideForOtherTeams
team add Gold
team modify Gold color gold
team modify Gold collisionRule pushOwnTeam
team modify Gold friendlyFire false
team modify Gold nametagVisibility hideForOtherTeams
team add Gray
team modify Gray color gray
team modify Gray collisionRule pushOwnTeam
team modify Gray friendlyFire false
team modify Gray nametagVisibility hideForOtherTeams
team add DarkRed
team modify DarkRed color dark_red
team modify DarkRed collisionRule pushOwnTeam
team modify DarkRed friendlyFire false
team modify DarkRed nametagVisibility hideForOtherTeams
team add DarkAqua
team modify DarkAqua color dark_aqua
team modify DarkAqua collisionRule pushOwnTeam
team modify DarkAqua friendlyFire false
team modify DarkAqua nametagVisibility hideForOtherTeams
team add DarkGreen
team modify DarkGreen color dark_green
team modify DarkGreen collisionRule pushOwnTeam
team modify DarkGreen friendlyFire false
team modify DarkGreen nametagVisibility hideForOtherTeams
team add DarkBlue
team modify DarkBlue color dark_blue
team modify DarkBlue collisionRule pushOwnTeam
team modify DarkBlue friendlyFire false
team modify DarkBlue nametagVisibility hideForOtherTeams
team add DarkGray
team modify DarkGray color dark_gray
team modify DarkGray collisionRule pushOwnTeam
team modify DarkGray friendlyFire false
team modify DarkGray nametagVisibility hideForOtherTeams

team add noPush
team modify noPush collisionRule never
team modify noPush friendlyFire false
team modify noPush nametagVisibility hideForOtherTeams

team add battleroyal
team modify battleroyal color yellow
team modify battleroyal collisionRule always
team modify battleroyal nametagVisibility hideForOwnTeam
team modify battleroyal friendlyFire true
team modify battleroyal seeFriendlyInvisibles false

team add z_spectate "観戦者"
team modify z_spectate prefix "[観戦] "
team modify z_spectate collisionRule never
team modify z_spectate nametagVisibility always
team modify z_spectate friendlyFire true
team modify z_spectate seeFriendlyInvisibles false

scoreboard objectives add belowHP dummy
scoreboard objectives modify belowHP displayname {"text":"HP"}
scoreboard objectives setdisplay belowName belowHP

scoreboard objectives setdisplay list cost

team join Red Red
team join Aqua Aqua
team join Yellow Yellow
team join Green Green
team join Purple Purple
team join White White
team join Black Black
team join Blue Blue
team join Pink Pink
team join Gold Gold
team join Gray Gray
team join DarkRed DarkRed
team join DarkAqua DarkAqua
team join DarkGreen DarkGreen
team join DarkBlue DarkBlue
team join DarkGray DarkGray
team join Aqua 残り人数
