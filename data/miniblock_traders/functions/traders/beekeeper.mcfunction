# --------------------------------------------------------------- #
#                   MINIBLOCK TRADERS DATAPACK                    #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Destroy the item used to convert the villager.
kill @e[type=item,nbt={Item:{tag:{tag:mt_bees}}},distance=..0.5]

# Fun effects to give user feedback that the transformation worked.
execute at @s run particle minecraft:happy_villager ~ ~ ~ 0.3 1 0.3 100 250
playsound minecraft:entity.experience_orb.pickup ambient @a[distance=..8] ~ ~ ~ 30

# Relevant Tags for utility and compatibility
tag @s add mt_trader
tag @s add mt_trader_bees
tag @s add global.ignore
tag @s add global.ignore.pos
tag @s add global.ignore.gui
tag @s add global.ignore.kill

# The below command split into lines to make it easier to read. It will not run unless it is a single line.
# data merge entity @s {VillagerData:{profession:weaponsmith,level:5,type:jungle},PersistenceRequired:1,CustomName:"\"Beekeeper\"",Offers:{Recipes:[
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Honey\"}"},SkullOwner:{Id:[I;-1353968602,-2075572998,-1764666166,-524272984],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7ImlkIjoiMGMwOGJiNmIyZWMzNDI2MjhhYmRkYjRkYmVhZWU1MDMiLCJ0eXBlIjoiU0tJTiIsInVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDA3ZTQ1MDE5MjhlYThkYjUzZWM4MGVjY2ZhMzgzNjQ0OTY3YTAwZDhjZTViODczNWZiOWRmOGU2ODYwM2RhYiIsInByb2ZpbGVJZCI6IjgwMThhYjAwYjJhZTQ0Y2FhYzliZjYwZWY5MGY0NWU1IiwidGV4dHVyZUlkIjoiNDA3ZTQ1MDE5MjhlYThkYjUzZWM4MGVjY2ZhMzgzNjQ0OTY3YTAwZDhjZTViODczNWZiOWRmOGU2ODYwM2RhYiJ9fSwic2tpbiI6eyJpZCI6IjBjMDhiYjZiMmVjMzQyNjI4YWJkZGI0ZGJlYWVlNTAzIiwidHlwZSI6IlNLSU4iLCJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzQwN2U0NTAxOTI4ZWE4ZGI1M2VjODBlY2NmYTM4MzY0NDk2N2EwMGQ4Y2U1Yjg3MzVmYjlkZjhlNjg2MDNkYWIiLCJwcm9maWxlSWQiOiI4MDE4YWIwMGIyYWU0NGNhYWM5YmY2MGVmOTBmNDVlNSIsInRleHR1cmVJZCI6IjQwN2U0NTAxOTI4ZWE4ZGI1M2VjODBlY2NmYTM4MzY0NDk2N2EwMGQ4Y2U1Yjg3MzVmYjlkZjhlNjg2MDNkYWIiLCJtZXRhZGF0YSI6eyJtb2RlbCI6InNsaW0ifX0sImNhcGUiOm51bGx9"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Honeycomb\"}"},SkullOwner:{Id:[I;-688088462,-1271378425,-1673475377,1921030549],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDE1NDkxMzJkYmM4NzVkNjM5ZDY3ZDkzY2M3MTNlOTQxYmIxNmM5NjRkMGE2MmU4YzY3OTRiZDNkZTZmZjgifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Beeswax\"}"},SkullOwner:{Id:[I;1986817906,-113030055,-1485537748,-1062382032],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjMwYmRmYTM0ZWRlOGM2NGYwZjMwNWZjNDgzMTU2NTBiMDg3OWFjNDNjYjdkM2I4OGFhNzhkYTUxYTU3OTBhZiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bee Nest (honey filled)\"}"},SkullOwner:{Id:[I;1313242893,-1009430865,-1482384990,805329423],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzdjYmYyNThhMGUyZGUzNGM4MThhYThhODk4NjMxM2Y3MjkyOWU1YWJhOTg3OTcxNWY0MTM0YmRjNmM0MDJkNCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bee Nest\"}"},SkullOwner:{Id:[I;-644685021,-163689308,-1657691828,-309385471],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzA1MGRmNzMwYTE5Yjk5OTI3YzRlNTJmNWI2YmYyMjA5MTYxOGYwY2I3OTEwNTZhZWY2ODJiNmM4NTI4OGJkNSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bee Hive (honey filled)\"}"},SkullOwner:{Id:[I;-798119358,903235060,-1644159556,477572147],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODg2MjViNTIwMWQ5NWIxMDc5YjFiOWVkZDRjZWQ2ZmM3MDEyNzYzYzBmZjFkMGQzMjgxODE0YTVlN2FjZmU3OSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bee Hive\"}"},SkullOwner:{Id:[I;379310077,2137408562,-1958485101,676659769],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjY0MTY5MDc2ZGJkYjg3ZjI3OTQ0OGQ1YTE2ZmY3OGJiMGEyYjU3NTAzYzIxOGUyMTczMmRiYTlmN2Y5ZjU1YSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Honey Pot\"}"},SkullOwner:{Id:[I;1799878245,-1529985980,-1406284925,1557867577],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTRjYjc5MjIyODkzYmI0ZmRkODk2OGNjM2UyOTQyODVkZGM2ZmNhZDA1NDM3ZWVmZWFiMzIzYjI5ZmUzOCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Honey Pot\"}"},SkullOwner:{Id:[I;838462697,92293747,-1871452516,391262982],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODAzNjc3ZDc5NjQ5NDkzOTQwNTkzOGIwODBlN2E2MTZjYzk0YWU2NzMxOWMzMmYxNTI2NmMzYTc0NTU1OGQxIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Honey Jar\"}"},SkullOwner:{Id:[I;2061359882,1553943730,-2026977421,1376425424],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjkwNmJmZDgxN2NjNTgxOGM3NjIwZTI4OGY0ZTQxMzAxNDMxOGMwYmNiYjVlY2Q2ZGE4YTU5MjNkNTFjNTJmMiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Honey Jar\"}"},SkullOwner:{Id:[I;981506669,1288782656,-1189572945,683836919],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTczY2M5NjhiNTI1ODhhMTBkYjY2N2VlMmI0M2Q2OWI1MjFiYzM2NWIyNDM1ZjJkODI0OGZlNDI4ZTE4ODUifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
# ]}}

# Apply villager trades.
data merge entity @s {VillagerData:{profession:weaponsmith,level:5,type:jungle},PersistenceRequired:1,CustomName:"\"Beekeeper\"",Offers:{Recipes:[{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Honey\"}"},SkullOwner:{Id:[I;-1353968602,-2075572998,-1764666166,-524272984],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7ImlkIjoiMGMwOGJiNmIyZWMzNDI2MjhhYmRkYjRkYmVhZWU1MDMiLCJ0eXBlIjoiU0tJTiIsInVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDA3ZTQ1MDE5MjhlYThkYjUzZWM4MGVjY2ZhMzgzNjQ0OTY3YTAwZDhjZTViODczNWZiOWRmOGU2ODYwM2RhYiIsInByb2ZpbGVJZCI6IjgwMThhYjAwYjJhZTQ0Y2FhYzliZjYwZWY5MGY0NWU1IiwidGV4dHVyZUlkIjoiNDA3ZTQ1MDE5MjhlYThkYjUzZWM4MGVjY2ZhMzgzNjQ0OTY3YTAwZDhjZTViODczNWZiOWRmOGU2ODYwM2RhYiJ9fSwic2tpbiI6eyJpZCI6IjBjMDhiYjZiMmVjMzQyNjI4YWJkZGI0ZGJlYWVlNTAzIiwidHlwZSI6IlNLSU4iLCJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzQwN2U0NTAxOTI4ZWE4ZGI1M2VjODBlY2NmYTM4MzY0NDk2N2EwMGQ4Y2U1Yjg3MzVmYjlkZjhlNjg2MDNkYWIiLCJwcm9maWxlSWQiOiI4MDE4YWIwMGIyYWU0NGNhYWM5YmY2MGVmOTBmNDVlNSIsInRleHR1cmVJZCI6IjQwN2U0NTAxOTI4ZWE4ZGI1M2VjODBlY2NmYTM4MzY0NDk2N2EwMGQ4Y2U1Yjg3MzVmYjlkZjhlNjg2MDNkYWIiLCJtZXRhZGF0YSI6eyJtb2RlbCI6InNsaW0ifX0sImNhcGUiOm51bGx9"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Honeycomb\"}"},SkullOwner:{Id:[I;-688088462,-1271378425,-1673475377,1921030549],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDE1NDkxMzJkYmM4NzVkNjM5ZDY3ZDkzY2M3MTNlOTQxYmIxNmM5NjRkMGE2MmU4YzY3OTRiZDNkZTZmZjgifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Beeswax\"}"},SkullOwner:{Id:[I;1986817906,-113030055,-1485537748,-1062382032],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjMwYmRmYTM0ZWRlOGM2NGYwZjMwNWZjNDgzMTU2NTBiMDg3OWFjNDNjYjdkM2I4OGFhNzhkYTUxYTU3OTBhZiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bee Nest (honey filled)\"}"},SkullOwner:{Id:[I;1313242893,-1009430865,-1482384990,805329423],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzdjYmYyNThhMGUyZGUzNGM4MThhYThhODk4NjMxM2Y3MjkyOWU1YWJhOTg3OTcxNWY0MTM0YmRjNmM0MDJkNCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bee Nest\"}"},SkullOwner:{Id:[I;-644685021,-163689308,-1657691828,-309385471],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzA1MGRmNzMwYTE5Yjk5OTI3YzRlNTJmNWI2YmYyMjA5MTYxOGYwY2I3OTEwNTZhZWY2ODJiNmM4NTI4OGJkNSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bee Hive (honey filled)\"}"},SkullOwner:{Id:[I;-798119358,903235060,-1644159556,477572147],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODg2MjViNTIwMWQ5NWIxMDc5YjFiOWVkZDRjZWQ2ZmM3MDEyNzYzYzBmZjFkMGQzMjgxODE0YTVlN2FjZmU3OSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bee Hive\"}"},SkullOwner:{Id:[I;379310077,2137408562,-1958485101,676659769],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjY0MTY5MDc2ZGJkYjg3ZjI3OTQ0OGQ1YTE2ZmY3OGJiMGEyYjU3NTAzYzIxOGUyMTczMmRiYTlmN2Y5ZjU1YSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Honey Pot\"}"},SkullOwner:{Id:[I;1799878245,-1529985980,-1406284925,1557867577],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTRjYjc5MjIyODkzYmI0ZmRkODk2OGNjM2UyOTQyODVkZGM2ZmNhZDA1NDM3ZWVmZWFiMzIzYjI5ZmUzOCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Honey Pot\"}"},SkullOwner:{Id:[I;838462697,92293747,-1871452516,391262982],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODAzNjc3ZDc5NjQ5NDkzOTQwNTkzOGIwODBlN2E2MTZjYzk0YWU2NzMxOWMzMmYxNTI2NmMzYTc0NTU1OGQxIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Honey Jar\"}"},SkullOwner:{Id:[I;2061359882,1553943730,-2026977421,1376425424],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjkwNmJmZDgxN2NjNTgxOGM3NjIwZTI4OGY0ZTQxMzAxNDMxOGMwYmNiYjVlY2Q2ZGE4YTU5MjNkNTFjNTJmMiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Honey Jar\"}"},SkullOwner:{Id:[I;981506669,1288782656,-1189572945,683836919],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTczY2M5NjhiNTI1ODhhMTBkYjY2N2VlMmI0M2Q2OWI1MjFiYzM2NWIyNDM1ZjJkODI0OGZlNDI4ZTE4ODUifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999}]}}

# Talk to me
tellraw @e[type=player,distance=..16] [{"text":"<","color":"white"},{"text":"Beekeeper","color":"gold"},{"text":">","color":"white"},{"text":" Be a busy bee with my wares! I only work with free-range bees, no automation!","color":"green"}]