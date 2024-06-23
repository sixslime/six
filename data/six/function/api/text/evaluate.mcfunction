#> six:api > text/evaluate
#--------------------
# -> text : dynamicText
#--------------------
# <- result : staticText
#--------------------
#> evaluates dynamic json <text> to static json text (no dynamic elemets).
#--------------------
#-IMPORTANT: execution context is not kept during in evaluation.
#  - i.e. dynamic elements of <text> must be assumed to be ran as SERVER at an arbitrary location.
#- example: '{"score":{"name":"*im_42","objective":"-six"}}'' would become: '{"text":"42"}'
#- single quotes may be required in in <text>.
#--------------------

data modify storage six:var evaluate.text set from storage six:in evaluate.text
data modify storage six:var evaluate merge from storage six:settings free_block

function six:_/impl/text/evaluate/do with storage six:var evaluate

data remove storage six:in evaluate
data remove storage six:var evaluate

#-- DEV -- Move to 'ftext' with custom dimension datapack