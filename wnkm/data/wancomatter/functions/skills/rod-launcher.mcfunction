execute if entity @s[scores={dummy=2147483647}] unless entity @s[scores={Mana=0..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=2147483647}] if entity @s[scores={Mana=0..,CooldownX=..0}] run function wancomatter:skills/000/use

execute if entity @s[scores={dummy=1}] unless entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=1}] if entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/001/discharge

execute if entity @s[scores={dummy=2}] unless entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=2}] if entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/002/discharge

execute if entity @s[scores={dummy=3}] unless entity @s[scores={Mana=6..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=3}] if entity @s[scores={Mana=6..,CooldownX=..0}] run function wancomatter:skills/003/discharge

execute if entity @s[scores={dummy=4}] unless entity @s[scores={Mana=5..,CooldownX=..0}] unless entity @s[tag=stoneblast_addable] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=4}] unless entity @s[scores={CooldownX=..0}] if entity @s[tag=stoneblast_addable,scores={Mana=5..}] run function wancomatter:skills/004/discharge
execute if entity @s[scores={dummy=4}] if entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/004/discharge2

execute if entity @s[scores={dummy=5}] unless entity @s[scores={CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=5}] if entity @s[scores={CooldownX=..0}] if entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/005/fail
execute if entity @s[scores={dummy=5}] if entity @s[scores={CooldownX=..0}] unless entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/005/discharge
execute if entity @s[scores={dummy=105}] unless entity @s[scores={CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=105}] if entity @s[scores={CooldownX=..0}] if entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/005/fail
execute if entity @s[scores={dummy=105}] if entity @s[scores={CooldownX=..0}] unless entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/005/discharge

execute if entity @s[scores={dummy=6}] unless entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=6}] if entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/006/discharge

execute if entity @s[scores={dummy=7}] unless entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=7}] if entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/007/discharge

execute if entity @s[scores={dummy=8}] unless entity @s[scores={Mana=5..,CooldownX=..0}] unless entity @s[tag=fireball_addable] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=8}] unless entity @s[scores={CooldownX=..0}] if entity @s[tag=fireball_addable,scores={Mana=5}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=8}] unless entity @s[scores={CooldownX=..0}] if entity @s[tag=fireball_addable,scores={Mana=6..}] run function wancomatter:skills/008/discharge2
execute if entity @s[scores={dummy=8}] if entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/008/discharge

execute if entity @s[scores={dummy=10}] unless entity @s[scores={Mana=0..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=10}] if entity @s[scores={Mana=0..,CooldownX=..0}] run function wancomatter:skills/010/first

execute if entity @s[scores={dummy=11}] unless entity @s[scores={Mana=30..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=11}] if entity @s[scores={Mana=30..,CooldownX=..0}] run function wancomatter:skills/011/first

execute if entity @s[scores={dummy=12}] unless entity @s[scores={Mana=30..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=12}] if entity @s[scores={Mana=30..,CooldownX=..0}] run function wancomatter:skills/012/discharge

execute if entity @s[scores={dummy=13}] unless entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=13}] if entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/013/discharge

execute if entity @s[scores={dummy=14}] unless entity @s[scores={Mana=20..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=14}] if entity @s[scores={Mana=20..,CooldownX=..0}] run function wancomatter:skills/014/discharge

execute if entity @s[scores={dummy=15}] unless entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=15}] if entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/015/discharge

execute if entity @s[scores={dummy=16}] unless entity @s[scores={Mana=21..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=16}] if entity @s[scores={Mana=21..,CooldownX=..0}] run function wancomatter:skills/016/discharge

execute if entity @s[scores={dummy=17}] unless entity @s[scores={Mana=11..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=17}] if entity @s[scores={Mana=11..,CooldownX=..0}] run function wancomatter:skills/017/discharge

execute if entity @s[scores={dummy=18}] unless entity @s[scores={CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=18}] if entity @s[scores={CooldownX=..0}] run function wancomatter:skills/018/check

execute if entity @s[scores={dummy=19}] unless entity @s[scores={Mana=17..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=19}] if entity @s[scores={Mana=17..,CooldownX=..0}] run function wancomatter:skills/019/first

execute if entity @s[scores={dummy=20}] unless entity @s[scores={Mana=4..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=20}] if entity @s[scores={Mana=4..,CooldownX=..0}] if entity @s[tag=windcut_addable] run function wancomatter:skills/020/discharge
execute if entity @s[scores={dummy=20}] if entity @s[scores={Mana=4..,CooldownX=..0}] unless entity @s[tag=windcut_addable] run function wancomatter:skills/020/charge

execute if entity @s[scores={dummy=21}] unless entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=21}] if entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/021/discharge

execute if entity @s[scores={dummy=22}] unless entity @s[scores={Mana=7..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=22}] if entity @s[scores={Mana=7..,CooldownX=..0}] run function wancomatter:skills/022/discharge

execute if entity @s[scores={dummy=23}] unless entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=23}] if entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/023/0.use

execute if entity @s[scores={dummy=24}] unless entity @s[scores={Mana=2..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=24}] if entity @s[scores={Mana=2..,CooldownX=..0}] run function wancomatter:skills/024/0.use

execute if entity @s[scores={dummy=25}] unless entity @s[scores={CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=25}] if entity @s[scores={CooldownX=..0}] if entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/025/fail
execute if entity @s[scores={dummy=25}] if entity @s[scores={CooldownX=..0}] unless entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/025/first
execute if entity @s[scores={dummy=125}] unless entity @s[scores={CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=125}] if entity @s[scores={CooldownX=..0}] if entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/025/fail
execute if entity @s[scores={dummy=125}] if entity @s[scores={CooldownX=..0}] unless entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/025/first

execute if entity @s[scores={dummy=26}] unless entity @s[scores={Mana=100..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=26}] if entity @s[scores={Mana=100..,CooldownX=..0}] run function wancomatter:skills/026/0.use

execute if entity @s[scores={dummy=27}] unless entity @s[scores={Mana=100..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=27}] if entity @s[scores={Mana=100..,CooldownX=..0}] run function wancomatter:skills/027/0.use

execute if entity @s[scores={dummy=28}] unless entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=28}] if entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/028/first

execute if entity @s[scores={dummy=29}] unless entity @s[scores={Mana=4..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=29}] if entity @s[scores={Mana=4..,CooldownX=..0}] run function wancomatter:skills/029/discharge

execute if entity @s[scores={dummy=30}] run function wancomatter:skills/030/discharge

execute if entity @s[scores={dummy=33}] unless entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=33}] if entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/033/check

execute if entity @s[scores={dummy=34}] unless entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=34}] if entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/034/discharge

execute if entity @s[scores={dummy=35}] unless entity @s[scores={Mana=20..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=35}] if entity @s[scores={Mana=20..,CooldownX=..0}] run function wancomatter:skills/035/discharge

execute if entity @s[scores={dummy=36}] unless entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=36}] if entity @s[scores={Mana=5..,CooldownX=..0}] rotated ~ 0 positioned ^ ^0.5 ^0.5 run function wancomatter:skills/036/check

execute if entity @s[scores={dummy=37}] unless entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=37}] if entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/037/discharge

execute if entity @s[scores={dummy=38}] unless entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=38}] if entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/038/discharge

execute if entity @s[scores={dummy=39}] unless entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=39}] if entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/039/discharge

execute if entity @s[scores={dummy=41}] unless entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=41}] if entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/041/discharge

execute if entity @s[scores={dummy=42}] unless entity @s[scores={Mana=20..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=42}] if entity @s[scores={Mana=20..,CooldownX=..0}] run function wancomatter:skills/042/discharge

execute if entity @s[scores={dummy=43..44}] unless entity @s[scores={Mana=4..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=43..44}] if entity @s[scores={Mana=4..,CooldownX=..0}] run function wancomatter:skills/043/discharge

execute if entity @s[scores={dummy=45}] unless entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=45}] if entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/045/discharge

execute if entity @s[scores={dummy=46}] unless entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=46}] if entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/046/discharge

execute if entity @s[scores={dummy=47}] unless entity @s[scores={Mana=12..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=47}] if entity @s[scores={Mana=12..,CooldownX=..0}] run function wancomatter:skills/047/discharge

execute if entity @s[scores={dummy=48}] unless entity @s[scores={Mana=0..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=48}] if entity @s[scores={Mana=0..,CooldownX=..0}] run function wancomatter:skills/048/discharge

execute if entity @s[scores={dummy=49}] unless entity @s[scores={Mana=11..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=49}] if entity @s[scores={Mana=11..,CooldownX=..0}] run function wancomatter:skills/049/discharge

execute if entity @s[scores={dummy=50}] unless entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=50}] if entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/050/discharge

execute if entity @s[scores={dummy=51}] unless entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=51}] if entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/051/discharge

execute if entity @s[scores={dummy=52}] unless entity @s[scores={Mana=7..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=52}] if entity @s[scores={Mana=7..,CooldownX=..0}] run function wancomatter:skills/052/discharge

execute if entity @s[scores={dummy=53}] unless entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=53}] if entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/053/discharge

execute if entity @s[scores={dummy=54}] unless entity @s[scores={Mana=24..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=54}] if entity @s[scores={Mana=24..,CooldownX=..0}] run function wancomatter:skills/054/discharge

execute if entity @s[scores={dummy=55}] unless entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=55}] if entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/055/discharge

execute if entity @s[scores={dummy=56}] unless entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=56}] if entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/056/discharge

execute if entity @s[scores={dummy=57}] unless entity @s[scores={Mana=9..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=57}] if entity @s[scores={Mana=9..,CooldownX=..0}] run function wancomatter:skills/057/discharge

execute if entity @s[scores={dummy=58}] unless entity @s[scores={Mana=7..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=58}] if entity @s[scores={Mana=7..,CooldownX=..0}] run function wancomatter:skills/058/discharge

execute if entity @s[scores={dummy=59}] unless entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=59}] if entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/059/discharge

execute if entity @s[scores={dummy=60}] unless entity @s[scores={Mana=4..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=60}] if entity @s[scores={Mana=4..,CooldownX=..0}] run function wancomatter:skills/060/discharge

execute if entity @s[scores={dummy=61}] unless entity @s[scores={Mana=3..,CooldownX=..0}] unless entity @s[tag=denkou_addable] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=61}] unless entity @s[scores={CooldownX=..0}] if entity @s[tag=denkou_addable,scores={Mana=4..7}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=61}] unless entity @s[scores={CooldownX=..0}] if entity @s[tag=denkou_addable,scores={Mana=8..}] run function wancomatter:skills/061/second
execute if entity @s[scores={dummy=61}] if entity @s[scores={Mana=3..,CooldownX=..0}] run function wancomatter:skills/061/first

execute if entity @s[scores={dummy=62}] unless entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=62}] if entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/062/first

execute if entity @s[scores={dummy=63}] unless entity @s[scores={Mana=7..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=63}] if entity @s[scores={Mana=7..,CooldownX=..0}] run function wancomatter:skills/063/first

execute if entity @s[scores={dummy=64}] unless entity @s[scores={Mana=4..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=64}] if entity @s[scores={Mana=4..,CooldownX=..0}] run function wancomatter:skills/064/first

execute if entity @s[scores={dummy=65}] unless entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=65}] if entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/065/first

execute if entity @s[scores={dummy=66}] unless entity @s[scores={Mana=7..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=66}] if entity @s[scores={Mana=7..,CooldownX=..0}] run function wancomatter:skills/066/first

execute if entity @s[scores={dummy=67}] unless entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=67}] if entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/067/first

execute if entity @s[scores={dummy=68}] unless entity @s[scores={CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=68}] if entity @s[scores={CooldownX=..0}] if entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/068/fail
execute if entity @s[scores={dummy=68}] if entity @s[scores={CooldownX=..0}] unless entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/068/first
execute if entity @s[scores={dummy=168}] unless entity @s[scores={CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=168}] if entity @s[scores={CooldownX=..0}] if entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/068/fail
execute if entity @s[scores={dummy=168}] if entity @s[scores={CooldownX=..0}] unless entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/068/first

execute if entity @s[scores={dummy=69}] unless entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=69}] if entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/069/first

execute if entity @s[scores={dummy=70}] unless entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=70}] if entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/070/first

execute if entity @s[scores={dummy=71}] unless entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=71}] if entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/071/first

execute if entity @s[scores={dummy=72}] unless entity @s[scores={CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=72}] if entity @s[scores={CooldownX=..0}] if entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/072/fail
execute if entity @s[scores={dummy=72}] if entity @s[scores={CooldownX=..0}] unless entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/072/first
execute if entity @s[scores={dummy=172}] unless entity @s[scores={CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=172}] if entity @s[scores={CooldownX=..0}] if entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/072/fail
execute if entity @s[scores={dummy=172}] if entity @s[scores={CooldownX=..0}] unless entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/072/first

execute if entity @s[scores={dummy=73}] unless entity @s[scores={Mana=7..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=73}] if entity @s[scores={Mana=7..,CooldownX=..0}] run function wancomatter:skills/073/first

execute if entity @s[scores={dummy=74}] unless entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=74}] if entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/074/first

execute if entity @s[scores={dummy=75}] unless entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=75}] if entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/075/0

execute if entity @s[scores={dummy=76}] unless entity @s[scores={Mana=17..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=76}] if entity @s[scores={Mana=17..,CooldownX=..0}] run function wancomatter:skills/076/0

execute if entity @s[scores={dummy=77}] unless entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=77}] if entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/077/0

execute if entity @s[scores={dummy=78}] unless entity @s[scores={Mana=45..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=78}] if entity @s[scores={Mana=45..,CooldownX=..0}] run function wancomatter:skills/078/first

execute if entity @s[scores={dummy=79}] unless entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=79}] if entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/079/summon

execute if entity @s[scores={dummy=80}] unless entity @s[scores={Mana=17..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=80}] if entity @s[scores={Mana=17..,CooldownX=..0}] run function wancomatter:skills/080/first

execute if entity @s[scores={dummy=81}] unless entity @s[scores={Mana=11..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=81}] if entity @s[scores={Mana=11..,CooldownX=..0}] run function wancomatter:skills/081/first

execute if entity @s[scores={dummy=82}] unless entity @s[scores={Mana=18..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=82}] if entity @s[scores={Mana=18..,CooldownX=..0}] run function wancomatter:skills/082/first

execute if entity @s[scores={dummy=83}] unless entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=83}] if entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/083/summon

execute if entity @s[scores={dummy=85}] unless entity @s[scores={Mana=7..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=85}] if entity @s[scores={Mana=7..,CooldownX=..0}] run function wancomatter:skills/085/first

execute if entity @s[scores={dummy=86}] unless entity @s[scores={CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=86}] if entity @s[scores={CooldownX=..0}] if entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/086/fail
execute if entity @s[scores={dummy=86}] if entity @s[scores={CooldownX=..0}] unless entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/086/first
execute if entity @s[scores={dummy=186}] unless entity @s[scores={CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=186}] if entity @s[scores={CooldownX=..0}] if entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/086/fail
execute if entity @s[scores={dummy=186}] if entity @s[scores={CooldownX=..0}] unless entity @s[nbt={SelectedItem:{tag:{Ammo:0}}}] run function wancomatter:skills/086/first

execute if entity @s[scores={dummy=87}] unless entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=87}] if entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/087/first

execute if entity @s[scores={dummy=88}] unless entity @s[scores={Mana=7..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=88}] if entity @s[scores={Mana=7..,CooldownX=..0}] run function wancomatter:skills/088/first

execute if entity @s[scores={dummy=90}] unless entity @s[scores={Mana=4..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=90}] if entity @s[scores={Mana=4..,CooldownX=..0}] run function wancomatter:skills/090/first

execute if entity @s[scores={dummy=9}] unless entity @s[scores={Mana=250..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=9}] if entity @s[scores={Mana=250..,CooldownX=..0}] run function wancomatter:skills/009/first

execute if entity @s[scores={dummy=91}] unless entity @s[scores={Mana=25..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=91}] if entity @s[scores={Mana=25..,CooldownX=..0}] run function wancomatter:skills/091/first

execute if entity @s[scores={dummy=92}] unless entity @s[scores={Mana=25..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=92}] if entity @s[scores={Mana=25..,CooldownX=..0}] run function wancomatter:skills/092/first

execute if entity @s[scores={dummy=93}] unless entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=93}] if entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/093/first

execute if entity @s[scores={dummy=94}] unless entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=94}] if entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/094/first

execute if entity @s[scores={dummy=95}] unless entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=95}] if entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/095/first


#95はシールドバッシュで使用済
execute if entity @s[scores={dummy=96..99}] unless entity @s[scores={Mana=1..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=96..99}] if entity @s[scores={Mana=1..,CooldownX=..0}] run function wancomatter:skills/096/discharge

execute if entity @s[scores={dummy=104}] unless entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=104}] if entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/104/check

execute if entity @s[scores={dummy=106}] unless entity @s[scores={Mana=6..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=106}] if entity @s[scores={Mana=6..,CooldownX=..0}] run function wancomatter:skills/106/discharge

execute if entity @s[scores={dummy=107}] unless entity @s[scores={Mana=3..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=107}] if entity @s[scores={Mana=3..,CooldownX=..0}] run function wancomatter:skills/107/discharge

execute if entity @s[scores={dummy=109}] unless entity @s[scores={Mana=2..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=109}] if entity @s[scores={Mana=2..,CooldownX=..0}] run function wancomatter:skills/109/discharge

execute if entity @s[scores={dummy=110}] run tag @s add failed

execute if entity @s[scores={dummy=111}] unless entity @s[scores={Mana=2..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=111}] if entity @s[scores={Mana=2..,CooldownX=..0}] run function wancomatter:skills/111/discharge

execute if entity @s[scores={dummy=114}] unless entity @s[scores={Mana=3..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=114}] if entity @s[scores={Mana=3..,CooldownX=..0}] run function wancomatter:skills/114/discharge

execute if entity @s[scores={dummy=115}] unless entity @s[scores={CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=115}] if entity @s[scores={CooldownX=..0}] run function wancomatter:skills/115/discharge

execute if entity @s[scores={dummy=117..118}] unless entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=117..118}] if entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/117/discharge

execute if entity @s[scores={dummy=201}] unless entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=201}] if entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/201/0.use

execute if entity @s[scores={dummy=202}] unless entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=202}] if entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/202/0.use

execute if entity @s[scores={dummy=203}] unless entity @s[scores={Mana=21..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=203}] if entity @s[scores={Mana=21..,CooldownX=..0}] run function wancomatter:skills/203/0.use

execute if entity @s[scores={dummy=204}] unless entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=204}] if entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/204/0.use

execute if entity @s[scores={dummy=205}] unless entity @s[scores={Mana=52..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=205}] if entity @s[scores={Mana=52..,CooldownX=..0}] run function wancomatter:skills/205/0.use

execute if entity @s[scores={dummy=206}] unless entity @s[scores={Mana=20..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=206}] if entity @s[scores={Mana=20..,CooldownX=..0}] run function wancomatter:skills/206/0.use
