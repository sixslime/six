#> six:_/impl/array/set/intersection/add_match
#--------------------
# ./each_match
#--------------------

data modify storage six:out intersection.shared_a append from storage six:var intersection.a_item
data modify storage six:out intersection.shared_b append from storage six:var intersection.b_item
data modify storage six:out intersection.shared append from storage six:var intersection.a_compare