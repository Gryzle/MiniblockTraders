# --------------------------------------------------------------- #
#                   MINIBLOCK TRADERS DATAPACK                    #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Destroy the item used to convert the villager.
kill @e[type=item,nbt={Item:{tag:{tag:mt_steampunk}}},distance=..0.5]

# Fun effects to give user feedback that the transformation worked.
execute at @s run particle minecraft:happy_villager ~ ~ ~ 0.3 1 0.3 100 250
playsound minecraft:entity.experience_orb.pickup ambient @a[distance=..8] ~ ~ ~ 30

# Relevant Tags for utility and compatibility
tag @s add mt_trader
tag @s add global.ignore
tag @s add global.ignore.pos
tag @s add global.ignore.gui
tag @s add global.ignore.kill

# The below command split into lines to make it easier to read. It will not run unless it is a single line.
# data merge entity @s {VillagerData:{profession:armorer,level:5,type:jungle},PersistenceRequired:1,CustomName:"\"Steampunker\"",Offers:{Recipes:[
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Steampunk Device\"}"},SkullOwner:{Id:[I;-483707455,38948704,-1555055281,-777760050],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTM0NzRkMGFhMWZhMTA5YmY5ZjRmMDVlYWEyZDJjNmZlZjc1Y2ViNmUyOTIzZjg1ZThlM2E2MmNjNWE0NDk1OCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Steampunk Robot\"}"},SkullOwner:{Id:[I;1374965242,-1570617428,-1770847629,1645723245],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGVhN2RhNGZlOGI4OGVkNmM4ZDAwZTlmNjlkNjMyNTlkNDcxODYzZGY5NGUyNWFlMjkwNDNjYzc3ZGY0YzAzZSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Steampunk Robot\"}"},SkullOwner:{Id:[I;1504946014,1516454875,-2082045037,880660664],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzczMTA1NDY1ZGFkMmQwMjM4MjVmODQyNjJiMzg4ZmY3ZDBhMjliNzAwNmRkMmE1N2Q3ZThjYzY5ZDk1NTBjMyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Robot\"}"},SkullOwner:{Id:[I;1392454002,-899986346,-1537440165,-1688964989],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmE1OWE0ZjEwYmNmN2JiNTM5M2QxOTY4MTExNDk4OWVjNGIzMDU1NzFkNGJlOTk1MzY0Zjg0MTYwMDIxYTlmMiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Robot\"}"},SkullOwner:{Id:[I;-232879340,-341993785,165118383,-1764354505],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWRjYWY3NmE4ZDY1YjY2NGEzNzE4NTlmNjMzMzEzZGE5NWY3YWZlY2Y3YTJlOGVkZmU2ODBmN2I0NDcyNGQifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Robot\"}"},SkullOwner:{Id:[I;-975331683,-712356952,-1867975141,-2012968894],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWJiZDY5YmQyMjdiNTY0MWY3OTgyZGExMzNjMWI2NzA1NWIxOTYzZGY3NjczYzk2MjAxMWJiMTNkZGM4MTFlNCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Robot\"}"},SkullOwner:{Id:[I;-245990934,450645177,-1121024820,555585154],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGU2YTNlMzllMzg5NTIyYjcyNTgyMzE5NzE4ZTFiMTllYTQ1ZWY4NzI2NTYwZDlmM2FiMTIyMWQ1Y2VlZGVjMCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Robot\"}"},SkullOwner:{Id:[I;-1482903061,-271891555,-1800396637,-38271559],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2M3NDgzNDYxZTk0OTlkM2VkMTY0NWJmOGEwNjEzNmU2NDg1ODdhZWM4ODc3OTk4NWI4ZTIyYWRlNTcifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Robot\"}"},SkullOwner:{Id:[I;-970375450,-609794906,-1433335689,-2114083177],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzU0YWE0Yjk0NjJmMzMxMTUyNDU3ZjQyMWFmYzMyOTJkODA2MTYxOWJmMWIwYTRhMWRjNWQ0MGRiNjFhN2FmOSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Golden Robot\"}"},SkullOwner:{Id:[I;584143181,-1303296379,-1371830480,1772251523],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjJkZTFmYTcxZTgzMzRiOGExNTU1NWYyZTQ4NjBmZmQzZTU4ZDYxNDU3NzdjZWU5ZGM5ZTU5ZTdhMjNmYTEifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Golden Steampunk Creeper\"}"},SkullOwner:{Id:[I;-564918268,-1019065961,-1533965908,-1915004483],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWQ4MjJmMTI1YmZkNDg2MjJkMDEwMjQ1ZmUxNjNmNGE3NmI1MTljMjRjOWI0ZTVlYjI5ODBjMjM1NTJmYTZlYiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Block of Copper\"}"},SkullOwner:{Id:[I;254490008,-1534113789,-1934943205,2051811742],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWRjMzUyNjA1N2IzYTcyZTM5OWY1NThlZmM0NzExNDc3MTUzNTY5ZWQ4NDlmMGQxYzlhYjg0YjhhYzA1MTkwYyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Exposed Copper Block\"}"},SkullOwner:{Id:[I;560730361,-2039592014,-1344041958,-1058039007],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDc1MzA1NmVjYzEyYjY0MWJhNmE1Y2JkZjUwMzlkZWRlYzQ5MmFjNGZiNTgzNTQ1N2QzYTRlNDMyMmJkYjNkIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Weathered Copper Block\"}"},SkullOwner:{Id:[I;1982085627,-2041429960,-1442716342,-750630440],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTYxM2Y2MGU2ZWNmNmMyMWQ5MzA2NmIxYmQ2ZjdjNGI3YzQ4OGU2OGE2NDI1MTQ1Njc3Y2M2ZDVkYTMzYmE0OSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Oxidized Copper Block\"}"},SkullOwner:{Id:[I;1444499317,748703297,-1978036355,189369796],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWE1YjBjMGUyOGExMDE1NzcyNWVhMDBiZGYwMGYxNzY0MTRkNDBhMTgxMmM2MGI5MGQzZmUyMmNjMzJkMDMyMyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cut Copper\"}"},SkullOwner:{Id:[I;2061861345,524437889,-1729059882,113150314],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjU2NjlhZTM3MGU0MTRkOWExMGYzN2IwMjI5MzNmNjRlYzZkMWU5NzlmYWRiM2MxZjkwMDRiNDg1ZmRkZDIyNSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Exposed Cut Copper\"}"},SkullOwner:{Id:[I;241228516,-1737011326,-1518907572,-2073089232],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzIxOTU5YmJlN2Q0NjAyNzA4ODc4ZGM5ZTJmZmYwODJlMjg0MGM2YzQxOTRhNGQ0MmVlNDA3MDk5MmZhMjZkMiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Weathered Cut Copper\"}"},SkullOwner:{Id:[I;-23057738,253643055,-1846156481,-1372357788],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDM4MDNjNDNjNjc5NWFhZjg3MzhmZTFkODNlOGUyNmJjNjY0OTdmMGUwNDA4MTM4NzEwYmE5MDNhODllY2VmYSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Oxidized Cut Copper\"}"},SkullOwner:{Id:[I;-1971898569,-2076750177,-2047657273,2123502967],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjRkYzViYzYwNDllYTgyYWFiYTE1NzkwM2E1YzZlODAyNTA2ZjQxNTE1NzkyNzAzZWQ1ZTUyNTJkMGM5YzFiMiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Block of Raw Copper\"}"},SkullOwner:{Id:[I;1811749435,-1305065694,-1752689835,-378378799],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWU4YTRmMzVjMWEwYzhiM2JkODIxYTc2ZTM4NDczNDI3Yzk4OGZkZjVhMmRlMDI1NjQ2ZTA3MzUxZTM5M2M3ZSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
# ]}}

# Apply villager trades.
data merge entity @s {VillagerData:{profession:armorer,level:5,type:jungle},PersistenceRequired:1,CustomName:"\"Steampunker\"",Offers:{Recipes:[{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Steampunk Device\"}"},SkullOwner:{Id:[I;-483707455,38948704,-1555055281,-777760050],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTM0NzRkMGFhMWZhMTA5YmY5ZjRmMDVlYWEyZDJjNmZlZjc1Y2ViNmUyOTIzZjg1ZThlM2E2MmNjNWE0NDk1OCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Steampunk Robot\"}"},SkullOwner:{Id:[I;1374965242,-1570617428,-1770847629,1645723245],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGVhN2RhNGZlOGI4OGVkNmM4ZDAwZTlmNjlkNjMyNTlkNDcxODYzZGY5NGUyNWFlMjkwNDNjYzc3ZGY0YzAzZSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Steampunk Robot\"}"},SkullOwner:{Id:[I;1504946014,1516454875,-2082045037,880660664],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzczMTA1NDY1ZGFkMmQwMjM4MjVmODQyNjJiMzg4ZmY3ZDBhMjliNzAwNmRkMmE1N2Q3ZThjYzY5ZDk1NTBjMyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Robot\"}"},SkullOwner:{Id:[I;1392454002,-899986346,-1537440165,-1688964989],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmE1OWE0ZjEwYmNmN2JiNTM5M2QxOTY4MTExNDk4OWVjNGIzMDU1NzFkNGJlOTk1MzY0Zjg0MTYwMDIxYTlmMiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Robot\"}"},SkullOwner:{Id:[I;-232879340,-341993785,165118383,-1764354505],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWRjYWY3NmE4ZDY1YjY2NGEzNzE4NTlmNjMzMzEzZGE5NWY3YWZlY2Y3YTJlOGVkZmU2ODBmN2I0NDcyNGQifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Robot\"}"},SkullOwner:{Id:[I;-975331683,-712356952,-1867975141,-2012968894],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWJiZDY5YmQyMjdiNTY0MWY3OTgyZGExMzNjMWI2NzA1NWIxOTYzZGY3NjczYzk2MjAxMWJiMTNkZGM4MTFlNCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Robot\"}"},SkullOwner:{Id:[I;-245990934,450645177,-1121024820,555585154],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGU2YTNlMzllMzg5NTIyYjcyNTgyMzE5NzE4ZTFiMTllYTQ1ZWY4NzI2NTYwZDlmM2FiMTIyMWQ1Y2VlZGVjMCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Robot\"}"},SkullOwner:{Id:[I;-1482903061,-271891555,-1800396637,-38271559],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2M3NDgzNDYxZTk0OTlkM2VkMTY0NWJmOGEwNjEzNmU2NDg1ODdhZWM4ODc3OTk4NWI4ZTIyYWRlNTcifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Robot\"}"},SkullOwner:{Id:[I;-970375450,-609794906,-1433335689,-2114083177],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzU0YWE0Yjk0NjJmMzMxMTUyNDU3ZjQyMWFmYzMyOTJkODA2MTYxOWJmMWIwYTRhMWRjNWQ0MGRiNjFhN2FmOSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Golden Robot\"}"},SkullOwner:{Id:[I;584143181,-1303296379,-1371830480,1772251523],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjJkZTFmYTcxZTgzMzRiOGExNTU1NWYyZTQ4NjBmZmQzZTU4ZDYxNDU3NzdjZWU5ZGM5ZTU5ZTdhMjNmYTEifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Golden Steampunk Creeper\"}"},SkullOwner:{Id:[I;-564918268,-1019065961,-1533965908,-1915004483],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWQ4MjJmMTI1YmZkNDg2MjJkMDEwMjQ1ZmUxNjNmNGE3NmI1MTljMjRjOWI0ZTVlYjI5ODBjMjM1NTJmYTZlYiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Block of Copper\"}"},SkullOwner:{Id:[I;254490008,-1534113789,-1934943205,2051811742],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWRjMzUyNjA1N2IzYTcyZTM5OWY1NThlZmM0NzExNDc3MTUzNTY5ZWQ4NDlmMGQxYzlhYjg0YjhhYzA1MTkwYyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Exposed Copper Block\"}"},SkullOwner:{Id:[I;560730361,-2039592014,-1344041958,-1058039007],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDc1MzA1NmVjYzEyYjY0MWJhNmE1Y2JkZjUwMzlkZWRlYzQ5MmFjNGZiNTgzNTQ1N2QzYTRlNDMyMmJkYjNkIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Weathered Copper Block\"}"},SkullOwner:{Id:[I;1982085627,-2041429960,-1442716342,-750630440],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTYxM2Y2MGU2ZWNmNmMyMWQ5MzA2NmIxYmQ2ZjdjNGI3YzQ4OGU2OGE2NDI1MTQ1Njc3Y2M2ZDVkYTMzYmE0OSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Oxidized Copper Block\"}"},SkullOwner:{Id:[I;1444499317,748703297,-1978036355,189369796],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWE1YjBjMGUyOGExMDE1NzcyNWVhMDBiZGYwMGYxNzY0MTRkNDBhMTgxMmM2MGI5MGQzZmUyMmNjMzJkMDMyMyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cut Copper\"}"},SkullOwner:{Id:[I;2061861345,524437889,-1729059882,113150314],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjU2NjlhZTM3MGU0MTRkOWExMGYzN2IwMjI5MzNmNjRlYzZkMWU5NzlmYWRiM2MxZjkwMDRiNDg1ZmRkZDIyNSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Exposed Cut Copper\"}"},SkullOwner:{Id:[I;241228516,-1737011326,-1518907572,-2073089232],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzIxOTU5YmJlN2Q0NjAyNzA4ODc4ZGM5ZTJmZmYwODJlMjg0MGM2YzQxOTRhNGQ0MmVlNDA3MDk5MmZhMjZkMiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Weathered Cut Copper\"}"},SkullOwner:{Id:[I;-23057738,253643055,-1846156481,-1372357788],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDM4MDNjNDNjNjc5NWFhZjg3MzhmZTFkODNlOGUyNmJjNjY0OTdmMGUwNDA4MTM4NzEwYmE5MDNhODllY2VmYSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Oxidized Cut Copper\"}"},SkullOwner:{Id:[I;-1971898569,-2076750177,-2047657273,2123502967],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjRkYzViYzYwNDllYTgyYWFiYTE1NzkwM2E1YzZlODAyNTA2ZjQxNTE1NzkyNzAzZWQ1ZTUyNTJkMGM5YzFiMiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Block of Raw Copper\"}"},SkullOwner:{Id:[I;1811749435,-1305065694,-1752689835,-378378799],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWU4YTRmMzVjMWEwYzhiM2JkODIxYTc2ZTM4NDczNDI3Yzk4OGZkZjVhMmRlMDI1NjQ2ZTA3MzUxZTM5M2M3ZSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999}]}}