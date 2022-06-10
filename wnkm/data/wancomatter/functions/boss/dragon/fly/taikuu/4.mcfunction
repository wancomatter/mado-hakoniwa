data merge storage wnkm:boss {pose:{x:0,y:0,z:30,time:3}}
execute as @e[tag=dragon1_stand_wingL,tag=dragon_match_ownerNumber] run function wancomatter:boss/dragon/pose_set
data merge storage wnkm:boss {pose:{x:0,y:0,z:-30,time:3}}
execute as @e[tag=dragon1_stand_wingR,tag=dragon_match_ownerNumber] run function wancomatter:boss/dragon/pose_set