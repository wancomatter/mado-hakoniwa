########################################################################
# 前提: 被命中エンティティにhit1タグの付与 
#       実行者 -> マーカー
########################################################################
#data.tmp配列にdata.alreadyHitListをコピーし、コピー配列の要素0～127までを繰り返し参照
#実行者のUUIDと要素0～127のいずれかが一致した時、hit2タグを除去
#配列の最後尾に到達またはhit2タグ除去時、ループを停止
########################################################################

#自身にitタグを付与
tag @s add it

#tmp配列にalreadyHitList配列の要素をコピー
data modify entity @s data.tmp set from entity @s data.alreadyHitList

#hit1タグの付いたエンティティ1体を対象にtmp配列からUUIDチェックする
execute as @e[tag=hit1,limit=1] run function wancomatter:general/hitlist/0

#hit1タグの付いたエンティティがいる場合、もう一度実行
execute if entity @e[tag=hit1,limit=1] run function wancomatter:general/hitlist/check

#自身からitタグを削除
tag @s remove it
