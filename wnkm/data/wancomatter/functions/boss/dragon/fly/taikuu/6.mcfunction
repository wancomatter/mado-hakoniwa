data merge storage wnkm:boss {pose:{x:0,y:0,z:1.1,time:10}}
execute as @e[tag=dragon1_stand_wingL] run function wancomatter:boss/dragon/pose_add
data merge storage wnkm:boss {pose:{x:0,y:0,z:-1.1,time:10}}
execute as @e[tag=dragon1_stand_wingR] run function wancomatter:boss/dragon/pose_add
tp @s ~ ~0.06 ~