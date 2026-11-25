# マップ由来の予約、表示、保存スコアだけを初期化する。
function wnkm:migration/legacy/3.discard_entities
schedule clear wancomatter:boss/bear/child/skill7/leap
schedule clear wancomatter:boss/bear/child/skill7/target
schedule clear wancomatter:boss/bear/child/skill8/clear_block
schedule clear wancomatter:boss/bear/papa/skill1/ehp_2t
schedule clear wancomatter:boss/bear/papa/skill1/shot_arrow_root
schedule clear wancomatter:boss/bear/papa/skill2/leap
schedule clear wancomatter:boss/bear/papa/skill4/launch
schedule clear wancomatter:boss/detonator/skill0-add
schedule clear wancomatter:boss/detonator/skill21/30t
schedule clear wancomatter:boss/detonator/skill21/60t
schedule clear wancomatter:boss/detonator/skill21/75t
schedule clear wancomatter:boss/detonator/skill22/30t
schedule clear wancomatter:boss/detonator/skill22/60t
schedule clear wancomatter:boss/dusk/skill21/30t
schedule clear wancomatter:boss/dusk/skill21/60t
schedule clear wancomatter:boss/dusk/skill21/75t
schedule clear wancomatter:boss/necro/skill12/0_schedule
schedule clear wancomatter:boss/necro/skill12/2
schedule clear wancomatter:boss/necro/skill12/2_2
schedule clear wancomatter:boss/necro/skill12/3
schedule clear wancomatter:boss/necro/skill12/charge_particle
schedule clear wancomatter:boss/necro/skill12/end
schedule clear wancomatter:boss/necro/skill4/2
schedule clear wancomatter:boss/necro/skill6/0_schedule
schedule clear wancomatter:boss/necro/skill6/charge/particle
schedule clear wancomatter:boss/necro/skill7/sc1
schedule clear wancomatter:boss/necro/skill7/sc2
schedule clear wancomatter:boss/necro/skill7/sc3
schedule clear wancomatter:boss/necro/skill7/sc4
schedule clear wancomatter:game/lobby_first
schedule clear wancomatter:lobby/monitor/start_map_load_schedule
schedule clear wancomatter:map/wave1_schedule1
schedule clear wancomatter:map/wave1_schedule2
schedule clear wancomatter:skills/023/schedule
schedule clear wancomatter:skills/027/schedule/0
schedule clear wancomatter:skills/034/schedule
schedule clear wancomatter:skills/053/schedule
schedule clear wancomatter:skills/057/stopsound
schedule clear wancomatter:skills/094/buff-end2
schedule clear wancomatter:skills/107/charged/schedule
schedule clear wancomatter:skills/118/schedule1
schedule clear wancomatter:skills/arrow/08/schedule
bossbar remove minecraft:arctic
bossbar remove minecraft:bear_c
bossbar remove minecraft:bear_p
bossbar remove minecraft:detonator
bossbar remove minecraft:dragon1
bossbar remove minecraft:dusk
bossbar remove minecraft:kirito
bossbar remove minecraft:necro
bossbar remove minecraft:sils
bossbar remove wnkm:1on1/cake
bossbar remove wnkm:1on1/cake_p1
bossbar remove wnkm:1on1/cake_p2
bossbar remove wnkm:1on1/dream
bossbar remove wnkm:1on1/dream_p1
bossbar remove wnkm:1on1/dream_p2
bossbar remove wnkm:1on1/mine
bossbar remove wnkm:1on1/mine_p1
bossbar remove wnkm:1on1/mine_p2
bossbar remove wnkm:1on1/ruins
bossbar remove wnkm:1on1/ruins_p1
bossbar remove wnkm:1on1/ruins_p2
bossbar remove wnkm:autostart
bossbar remove wnkm:gametime
team remove Aqua
team remove Black
team remove Blue
team remove DarkAqua
team remove DarkBlue
team remove DarkGray
team remove DarkGreen
team remove DarkRed
team remove Gold
team remove Gray
team remove Green
team remove Pink
team remove Purple
team remove Red
team remove White
team remove Yellow
team remove battleroyal
team remove noPush
team remove z_spectate
scoreboard objectives remove AttackedEntity
scoreboard objectives remove AttackingEntity
scoreboard objectives remove BossHurtTime
scoreboard objectives remove CT_darkRepulser
scoreboard objectives remove Cooldown1
scoreboard objectives remove Cooldown1_max
scoreboard objectives remove Cooldown2
scoreboard objectives remove Cooldown2_max
scoreboard objectives remove Cooldown3
scoreboard objectives remove Cooldown3_max
scoreboard objectives remove Cooldown4
scoreboard objectives remove Cooldown4_max
scoreboard objectives remove Cooldown5
scoreboard objectives remove Cooldown5_max
scoreboard objectives remove Cooldown6
scoreboard objectives remove Cooldown6_max
scoreboard objectives remove Cooldown7
scoreboard objectives remove Cooldown7_max
scoreboard objectives remove Cooldown8
scoreboard objectives remove Cooldown8_max
scoreboard objectives remove Cooldown9
scoreboard objectives remove Cooldown9_max
scoreboard objectives remove CooldownX
scoreboard objectives remove CooldownX_max
scoreboard objectives remove Cooldown_slot
scoreboard objectives remove HP
scoreboard objectives remove HPCount
scoreboard objectives remove HPRegenAmount
scoreboard objectives remove HPRegenCount
scoreboard objectives remove HPdisplay1
scoreboard objectives remove HPdisplay2
scoreboard objectives remove HPheal
scoreboard objectives remove HPregene
scoreboard objectives remove Health
scoreboard objectives remove Mana
scoreboard objectives remove ManaCount
scoreboard objectives remove ManaOperation
scoreboard objectives remove ManaPer20
scoreboard objectives remove ManaReactiveHeal
scoreboard objectives remove ManaRegenAmount
scoreboard objectives remove ManaRegenCount
scoreboard objectives remove SelectItemSlot1
scoreboard objectives remove SelectItemSlot2
scoreboard objectives remove armorResist
scoreboard objectives remove autogun_shot
scoreboard objectives remove aviate
scoreboard objectives remove belowHP
scoreboard objectives remove blastResist
scoreboard objectives remove bless1
scoreboard objectives remove bless2
scoreboard objectives remove bless3
scoreboard objectives remove bless4
scoreboard objectives remove blessNo23
scoreboard objectives remove blessNo5
scoreboard objectives remove boss_counter1
scoreboard objectives remove boss_hate
scoreboard objectives remove boss_hate2
scoreboard objectives remove bow
scoreboard objectives remove cost
scoreboard objectives remove counter
scoreboard objectives remove crossbow_sneak
scoreboard objectives remove damageBoost
scoreboard objectives remove damageTaken
scoreboard objectives remove deathTimer
scoreboard objectives remove dmgProtection
scoreboard objectives remove dmgShield
scoreboard objectives remove dummy
scoreboard objectives remove egg_blaze
scoreboard objectives remove egg_cave_spider
scoreboard objectives remove egg_creeper
scoreboard objectives remove egg_drowned
scoreboard objectives remove egg_magma_cube
scoreboard objectives remove egg_pufferfish
scoreboard objectives remove egg_skeleton
scoreboard objectives remove egg_stray
scoreboard objectives remove egg_witch
scoreboard objectives remove fall
scoreboard objectives remove fireResist
scoreboard objectives remove fishrod
scoreboard objectives remove floatboots_count
scoreboard objectives remove food
scoreboard objectives remove foodSaturation
scoreboard objectives remove gameNumber
scoreboard objectives remove getHealth
scoreboard objectives remove healPower
scoreboard objectives remove holdItem
scoreboard objectives remove hold_gun
scoreboard objectives remove hurtByNumber
scoreboard objectives remove hurtByTime
scoreboard objectives remove hurtTimeTaken
scoreboard objectives remove hurtWeaponNumber
scoreboard objectives remove info
scoreboard objectives remove instantDMGS_time
scoreboard objectives remove instantDMGshield
scoreboard objectives remove instantKB_resist
scoreboard objectives remove jump
scoreboard objectives remove jumpBug
scoreboard objectives remove lastHurtByNumber
scoreboard objectives remove levitateOperate
scoreboard objectives remove lifestock
scoreboard objectives remove magicBoost
scoreboard objectives remove magicResist
scoreboard objectives remove maxHP
scoreboard objectives remove maxMana
scoreboard objectives remove ownerNumber
scoreboard objectives remove page
scoreboard objectives remove pageChange
scoreboard objectives remove playerNumber
scoreboard objectives remove projectileResist
scoreboard objectives remove pvpteamsaver
scoreboard objectives remove recoilTime
scoreboard objectives remove recoilXZ
scoreboard objectives remove recoilY
scoreboard objectives remove respawnX
scoreboard objectives remove respawnY
scoreboard objectives remove respawnZ
scoreboard objectives remove rod
scoreboard objectives remove rod2
scoreboard objectives remove rod_drop
scoreboard objectives remove s104count
scoreboard objectives remove s12slot
scoreboard objectives remove s29slot
scoreboard objectives remove s33slot
scoreboard objectives remove s79slot
scoreboard objectives remove s83slot
scoreboard objectives remove shieldBlock
scoreboard objectives remove sliding_boots
scoreboard objectives remove sneak
scoreboard objectives remove statCTAmount
scoreboard objectives remove statDamageBoost
scoreboard objectives remove subcounter
scoreboard objectives remove subcounter2
scoreboard objectives remove teamNumber
scoreboard objectives remove teleporter
scoreboard objectives remove total_dealt
scoreboard objectives remove total_taken
scoreboard objectives remove trident
scoreboard objectives remove yamakuzushiCT

# 旧ワールドに保存された作業領域。
data remove storage wnkm:storage_damage Damage
data remove storage wnkm:storage_damage DamageType
data remove storage wnkm:storage_damage WeaponNumber
data remove storage wnkm:storage_damage attackerPlayerNumber
data remove storage wnkm:storage_damage isKnockbackDamage
data remove storage wnkm:storage_damage isMultiDamage
data remove storage wnkm:boss pose
data remove storage wnkm:boss pos
data remove storage wnkm:work slot
data remove storage wnkm:work Items
data remove storage random: min
data remove storage random: max
