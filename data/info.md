
# Dependencies

# Supports

# IGNORE SPEC
## abstract
'_' marks the *content* of an object as private/custom, but not the object itself. '__' marks the entire object as private/custom, and should be fully ignored by other packs.
anything marked with '__' must also be marked with '_'.
## implementation
### custom items
items can have `_:true` and/or `__:true` in their `minecraft:custom_data` component.
- '_' indicates that the item does not have its default functionality, but it is still is to be treated as an item.
    - example use case: a pack adds a custom item that has the id "minecraft:carrot" (for whatever reason), but when clicked, it shoots a fireball.
        - *this item should still be treated as an item (object not ignored), but it should not be treated as a carrot item by an external pack (content is ignored)*

## custom entities
entities can have the '_' and/or '__' tag.