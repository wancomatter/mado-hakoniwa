execute if data storage wnkm:version world unless data storage wnkm:version {world:0} run return fail
function wnkm:migration/legacy/2.reset_world
execute unless function wnkm:bootstrap/3.create_world_state run return fail
execute if data storage wnkm:version migration run function wnkm:migration/legacy/4.release_chunks
data remove storage wnkm:version migration
data modify storage wnkm:version world set value 1
return 1
