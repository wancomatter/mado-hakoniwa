data merge storage wnkm:boss {pose:{x:0,y:0,z:-40.0,time:5}}
execute as @e[tag=dragon1_stand_wingL] run function wancomatter:boss/dragon/pose_set
data merge storage wnkm:boss {pose:{x:0,y:0,z:40.0,time:5}}
execute as @e[tag=dragon1_stand_wingR] run function wancomatter:boss/dragon/pose_set
tp @s ~ ~-0.245 ~