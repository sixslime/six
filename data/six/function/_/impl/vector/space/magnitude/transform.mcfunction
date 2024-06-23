#>six:_/impl/vector/magnitude/transform
#--------------------
# - six:_/impl/vector/magnitude/convert
#--------------------

$data modify entity @s transformation set value [$(x)f,0f,0f,0f,$(y)f,0f,0f,0f,$(z)f,0f,0f,0f,0f,0f,0f,1f]

data modify storage six:out magnitude.result set from entity @s transformation.scale[0]
kill @s