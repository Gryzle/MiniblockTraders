# --------------------------------------------------------------- #
#                   MINIBLOCK TRADERS DATAPACK                    #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Destroy the item used to convert the villager.
kill @e[type=item,nbt={Item:{tag:{tag:mt_furnish}}},distance=..0.5]

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
# data merge entity @s {VillagerData:{profession:shepherd,level:5,type:plains},PersistenceRequired:1,CustomName:"\"Furnisher\"",Offers:{Recipes:[
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Wooden Chest\"}"},SkullOwner:{Id:[I;1475604554,-133937347,-1728975250,-417416949],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDdlYzQxZTBkZjhlMTcwZDk3ZjliOWFmMWQ2NWVkYWQ0OTc5Yzc4Yzg5YjAxYjE4MGYzODllZTA4YTYxYWY4MiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Regal Chest\"}"},SkullOwner:{Id:[I;1772007514,1440433578,-1717327762,-859867748],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmE2ZGFjODAzNWQzNjFiYTdmMmMyYTYxNGI0ZWJhYWZjMWU1ZTMxMDFmODViZWVmNjgzNTM2ZjMzN2U1MDkwIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Barrel\"}"},SkullOwner:{Id:[I;-1113038487,1526484579,-1311424843,637932952],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzY3ZDVkMzdjZDY0Y2UzZmI1NzM3N2QyNWQ2MTUyYWE0YWMyZTM3OTU0MjQ4ZDVkOTFmODhmYmQ3OTFmNDc2NiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Crate\"}"},SkullOwner:{Id:[I;-664380932,-2088153519,-1327422476,-817992832],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjYyMDUxOWI3NDUzNmMxZjg1YjdjN2U1ZTExY2U1YzA1OWMyZmY3NTljYjhkZjI1NGZjN2Y5Y2U3ODFkMjkifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bag\"}"},SkullOwner:{Id:[I;-280318807,371483529,351431569,1700428985],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGNiM2FjZGMxMWNhNzQ3YmY3MTBlNTlmNGM4ZTliM2Q5NDlmZGQzNjRjNjg2OTgzMWNhODc4ZjA3NjNkMTc4NyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Old Globe\"}"},SkullOwner:{Id:[I;-310853510,39013615,-1984251039,1359573347],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWMxMWQ2Yzc5YjhhMWYxODkwMmQ3ODNjZGRhNGJkZmI5ZDQ3MzM3YjczNzkxMDI4YTEyNmE2ZTZjZjEwMWRlZiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Foot Stool\"}"},SkullOwner:{Id:[I;-1832848475,-1913699065,-1648492960,1406564655],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjI2OTIxY2JhMTZmMWZlYmYxNjU0MjRjYWQ5ZDUzNThlODE1Njg0MjJkNDlkNDc3MWQ2MmE1YTVjNTEwYTMifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Wooden Nightstand\"}"},SkullOwner:{Id:[I;1631920973,111362093,-1532991368,2000026618],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjBmMzE5ZDJiYmE3MjYzNWE3YWNhYTI1ZGIyODFhZDQ2MTE4YzVlYmJmY2I5OWEwZGQzMjFmMDNiMjI5NiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Rope\"}"},SkullOwner:{Id:[I;-1278506343,1305167100,-1484045759,-1294325252],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGY1MTM2MWE4MGM3MmQ2ODUwN2E0YzVkY2I3ZDY3MWNmMGZmZGMzNTc3YmNlOWU3OWVmOWFmOTMxNTM2YmE1MyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Old Books\"}"},SkullOwner:{Id:[I;315155853,1799702966,-1687980107,2066285123],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTM0NGQ4M2U3YzZlY2U5MGQzNGM2ODVhOWEzMzg0ZjhlOGQwMTUxNjMzZmMyZWVhZTRkNGI2MzY4NjJkMzMifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Books\"}"},SkullOwner:{Id:[I;-705502538,-856142064,-1458622789,981638045],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGZjM2MyNDNmYzA4OTRhYTQwMjhkMzJiMTlhODMwYTJmY2FkYzI5MzI3MGI0Y2IzMmMxYmFlNDJjNzhjMDhiZSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Book\"}"},SkullOwner:{Id:[I;793724984,-1333377463,-1592279310,2093499712],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODY4NDkzZDg4OTlmZGMxZDllOTFiMDkyZjAwNWJlNmFiZmIwYjhlMjA0ZTkzN2Q2NWM4MTUxY2ZlYjhiYTBlOCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Book\"}"},SkullOwner:{Id:[I;793724984,-1333377463,-1592279310,2093499712],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODY4NDkzZDg4OTlmZGMxZDllOTFiMDkyZjAwNWJlNmFiZmIwYjhlMjA0ZTkzN2Q2NWM4MTUxY2ZlYjhiYTBlOCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Books\"}"},SkullOwner:{Id:[I;-1599361991,-1039054321,-1478552760,37303803],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzI2MWJmNWM3ZmZhMjU0YzE4Mjg0NDgwMzIxMTVlNWNjMTU0NDM2ZGVjMDk5OGM0ZDdhYmQ5OTZhZTFkOTI3In19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"WinRAR Books\"}"},SkullOwner:{Id:[I;-1228870889,263865401,-1676570613,-510947917],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzk0YTNkNWQ5MmQ1YTYwNjQ2NzAzYmU5NWNiYzRmMjdiZmMyNDUwNjc1MGU5ZGIyYWJlMzRhZTI3MjIxOWMwMyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Botany Books\"}"},SkullOwner:{Id:[I;-1225097205,-481669774,-1617703443,680501050],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUxODg4MTc2ZGQyYzEyNjY1ZGIyNDc4ZDZlZjVkY2M5M2JhYWVmNDViYmM2NWMwZTQzMDM1Y2Q5N2FhNjUwMiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Botany Books\"}"},SkullOwner:{Id:[I;332777366,53561420,-1779557425,793518745],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGNhYmRkOWZjZTM5YTY2ZjJhNDMyYjEzM2I5NWQ3YmYyZTg0MTEzNzE5NTg3MWNmZmI5Y2FhNGMzZDc1MmE2NyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Botany Books\"}"},SkullOwner:{Id:[I;-782235374,1973371383,-1499468950,-126311261],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWMwNzM0MTIyYThmYzgwYjNlMjE1Y2U1ODI2MTBhNDA1ZjBiYThjMmQ4MmQwNTJiNTc0MTNmMDkzYWU2YTRhZCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bug Books\"}"},SkullOwner:{Id:[I;612250999,-175093291,-1475531133,314048495],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTlhZGFmYjM5YjViYjI4MGVlYTllZmFhM2M5OThkNGYzZTc5ZGI4ZDdiMDM1YjQxMTRiN2E3ZGJlYzcyMWQxZiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bird Books\"}"},SkullOwner:{Id:[I;1206487452,-2066071090,-1093000669,1714278143],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODdmZjQxMWE5MDQ2N2IzZGJlMmIxMmIyNzA2ODZiMmM4NjU3Zjk4Mzg4MzFjMjZhMjRiZDM2NjQwNTY1NWQ5YyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Fish Books\"}"},SkullOwner:{Id:[I;728238456,202460655,-1285907342,-614477009],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGQ5ZTk1NWE1MDYwMDBmMWQ4YmZjNjhlYWFmZTA0Y2M3ZGZiNDRmMDYyM2ExYjNkMGJmMjE1YThkNWE4NjFjMiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cthulhu Book\"}"},SkullOwner:{Id:[I;1776739564,-919581176,-1971672842,-892169297],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzY2OWRiYmM2MmNhODkzNDBmZGNjZDQwMTkwMmRmODkxODgyNzY3ZGMyMTMwMmVhOTk3NDMyMmRhMjBlMzc2ZiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Ancient Books\"}"},SkullOwner:{Id:[I;-847920632,1278691965,-1835251430,2071529141],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzBjZjc0ZTI2MzhiYTVhZDMyMjM3YTM3YjFkNzZhYTEyM2QxODU0NmU3ZWI5YTZiOTk2MWU0YmYxYzNhOTE5In19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Enchanted Books\"}"},SkullOwner:{Id:[I;-655778166,-2041101507,-1465626923,608276932],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjYyNjUxODc5ZDg3MDQ5OWRhNTBlMzQwMzY4MDBkZGZmZDUyZjNlNGUxOTkzYzVmYzBmYzgyNWQwMzQ0NmQ4YiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Enchanted Book\"}"},SkullOwner:{Id:[I;-1654925326,2010401505,-1983903964,-921889993],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2RjOTg1YTdhNjhjNTc0ZjY4M2MwYjg1OTUyMWZlYjNmYzNkMmZmYTA1ZmEwOWRiMGJhZTQ0YjhhYzI5YjM4NSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Book with Tropical Fish\"}"},SkullOwner:{Id:[I;-1644735147,1838172477,-1866362301,-1558204586],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjU4MmRmNTc2MzkxMTgyMGZlYTEwNzBkYWY3MzdhYmU2Y2E0YWEyMjg0MjcyOGI4MDlhNDFkOGYwOTM5NDRkYiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"The Tale of Peter Rabbit\"}"},SkullOwner:{Id:[I;-100832097,1617512648,-1603736847,-1075626863],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDkxOTIxMTk3ZTNkNThjNzUzOTRjNzZmMjJmZDViMTAyMWQ1YmI0YTE3NmNlYTM4YmFiMmE3MzZkYjJiMDMzZSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Stack of Newspapers\"}"},SkullOwner:{Id:[I;-1271531704,-1554559912,-1237592699,1985180853],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTgyNTQxOWU0MjlhZmMwNDBjOWU2OGIxMDUyM2I5MTdkN2I4MDg3ZDYzZTc2NDhiMTA4MDdkYThiNzY4ZWUifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Portfolios\"}"},SkullOwner:{Id:[I;-471448956,411780600,-2117854973,552810048],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWY1NWE3ZGM2MzIyZWM3MmYzMWVjZDNjM2IwMDI0OTAzYjUyYmJhNTg0YWVkZWExY2YxYTdlNmVhZTI3YTI4MCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Drawings\"}"},SkullOwner:{Id:[I;1972474171,-1288549353,-1638127401,1135252985],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTljMzJhYThiZDc1YTQ5YmZkMWE1YjRhYzIyZGJhNGU3NDUwNDc1NTkxOTNlNGJhOTJjMTc3MzhmMzQ5MjQ5ZCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Lantern\"}"},SkullOwner:{Id:[I;1992198342,-1450031747,-1980161589,-449233585],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGY1MTliNTdhYzgxOGJiNjY1ZWE4MDk0ZGRiNTg0ZDc5ODE2Nzg1OTQxODU3MjhhYjM1ZDkxNWM0NGQzMWUyMyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Lantern\"}"},SkullOwner:{Id:[I;781477738,1852460692,-1911321694,444999949],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmQ3MGFjMzY0YTYyZGJkYjY4Mjg5OTA0YmUxNDAzNTk4ZDU2NTNkMTQyZjg3OTljNzUzN2JlNjI0NGVkNzcifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Paper Lantern\"}"},SkullOwner:{Id:[I;-307565869,-899857461,-1955140466,-1970268593],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjYyODNlN2E4OGQzMjcxOTMwNGEzN2VkZTBjNmE4YzVkYzlkOWNmOWIwMGExNzljZjkwNGU4Y2U4MjEzMTIifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Paper Lantern\"}"},SkullOwner:{Id:[I;-204521681,-1117172318,-1792304319,-250231250],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQxM2Q2NzBlMjlhMTM0Y2U2ODZjNzhjOGU1NjM1M2VhZTc1YzI5YTc2MGI0ODMzN2IxNmMxZDVjMzY5NjFlIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Japanese Stone Lantern\"}"},SkullOwner:{Id:[I;-604037218,-611366906,-1498808957,1692294418],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDg5ZGNhNDBiODQzMWFhY2EyMjZkOGQzN2JjZjIxYjNjNmY2OTZlZmI4NTJkNTJmZTgyM2E3YWRiMzRiIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Golden Chalice with Blue Gem\"}"},SkullOwner:{Id:[I;-868361268,1859667731,-1317363663,1719659809],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTBiN2NhMmNlZDExZDMyNWEzMWQ1ZjI3NTNmYjcxZTIxNjk3ZDI5MWJlYzljMmZhNGE1ZjU5MGRiOWM5OTFmIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Golden Chalice with Red Gem\"}"},SkullOwner:{Id:[I;-604797885,764101470,-1726067749,-766484999],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWViMWVjMTEyZjY4ZDE4NDk3NTQxNDk1ODkzYTM3NWMzMTdhNzc3ZTAxM2JiZjEzNTg5YjFkODg1MzJjYyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Goblet\"}"},SkullOwner:{Id:[I;-13019531,1089555528,-2135370074,1317071082],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGVkNmNmYmM0MTI5MTA4ZTljZjJkZjVmNjE3OWE0YjI2ZjNiYzQzMzkwMWQ5NDJhNDk1NjNkNmJjN2UyMmQifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Pencil Holder\"}"},SkullOwner:{Id:[I;-425533221,1700743186,-1970556257,2098247262],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTliYzU2NmFlMzcwYjE1YzI3MmZjNTA0ODhhMjZjMTViZmU3ZTQzNDBlZGQyMWIzOTMxMWE4NDZjZjljNzA1MiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cardboard Box\"}"},SkullOwner:{Id:[I;-804841361,978469888,-1444945375,-301677660],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDVmMDdhYjQwYWE0ODVhYzJkZjYyNDUwYjdmNTliNTJlOGM2NTg5YjgxMDFmOWJjOGNhNGExNTJhODM4ZjRlNCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cardboard Box\"}"},SkullOwner:{Id:[I;-2144834947,1635796954,-1482622340,790536190],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzA5ZDY1NTBhOGI4OTZkZTMxMjMxYjNjZDE2MWY0N2IxNGI4NDUzMDM4MGExZDU2NWMzNjhkNzY3YmEwZmE0MiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Minecraft Characters in a Box\"}"},SkullOwner:{Id:[I;-1203528133,-1244639630,-2011316674,-383041567],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWJhYmUzYzI1YzFkZTFkNzMyN2M4YTAzNDAxYzY4YTE1ZTI4N2Y0ZjE4Mjc1ODJlMGYwMmQ0Y2E4NTEyY2Q4NiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999}
# ]}}

# Apply villager trades.
data merge entity @s {VillagerData:{profession:shepherd,level:5,type:plains},PersistenceRequired:1,CustomName:"\"Furnisher\"",Offers:{Recipes:[{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Wooden Chest\"}"},SkullOwner:{Id:[I;1475604554,-133937347,-1728975250,-417416949],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDdlYzQxZTBkZjhlMTcwZDk3ZjliOWFmMWQ2NWVkYWQ0OTc5Yzc4Yzg5YjAxYjE4MGYzODllZTA4YTYxYWY4MiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Regal Chest\"}"},SkullOwner:{Id:[I;1772007514,1440433578,-1717327762,-859867748],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmE2ZGFjODAzNWQzNjFiYTdmMmMyYTYxNGI0ZWJhYWZjMWU1ZTMxMDFmODViZWVmNjgzNTM2ZjMzN2U1MDkwIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Barrel\"}"},SkullOwner:{Id:[I;-1113038487,1526484579,-1311424843,637932952],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzY3ZDVkMzdjZDY0Y2UzZmI1NzM3N2QyNWQ2MTUyYWE0YWMyZTM3OTU0MjQ4ZDVkOTFmODhmYmQ3OTFmNDc2NiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Crate\"}"},SkullOwner:{Id:[I;-664380932,-2088153519,-1327422476,-817992832],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjYyMDUxOWI3NDUzNmMxZjg1YjdjN2U1ZTExY2U1YzA1OWMyZmY3NTljYjhkZjI1NGZjN2Y5Y2U3ODFkMjkifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bag\"}"},SkullOwner:{Id:[I;-280318807,371483529,351431569,1700428985],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGNiM2FjZGMxMWNhNzQ3YmY3MTBlNTlmNGM4ZTliM2Q5NDlmZGQzNjRjNjg2OTgzMWNhODc4ZjA3NjNkMTc4NyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Old Globe\"}"},SkullOwner:{Id:[I;-310853510,39013615,-1984251039,1359573347],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWMxMWQ2Yzc5YjhhMWYxODkwMmQ3ODNjZGRhNGJkZmI5ZDQ3MzM3YjczNzkxMDI4YTEyNmE2ZTZjZjEwMWRlZiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Foot Stool\"}"},SkullOwner:{Id:[I;-1832848475,-1913699065,-1648492960,1406564655],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjI2OTIxY2JhMTZmMWZlYmYxNjU0MjRjYWQ5ZDUzNThlODE1Njg0MjJkNDlkNDc3MWQ2MmE1YTVjNTEwYTMifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Wooden Nightstand\"}"},SkullOwner:{Id:[I;1631920973,111362093,-1532991368,2000026618],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjBmMzE5ZDJiYmE3MjYzNWE3YWNhYTI1ZGIyODFhZDQ2MTE4YzVlYmJmY2I5OWEwZGQzMjFmMDNiMjI5NiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Rope\"}"},SkullOwner:{Id:[I;-1278506343,1305167100,-1484045759,-1294325252],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGY1MTM2MWE4MGM3MmQ2ODUwN2E0YzVkY2I3ZDY3MWNmMGZmZGMzNTc3YmNlOWU3OWVmOWFmOTMxNTM2YmE1MyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Old Books\"}"},SkullOwner:{Id:[I;315155853,1799702966,-1687980107,2066285123],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTM0NGQ4M2U3YzZlY2U5MGQzNGM2ODVhOWEzMzg0ZjhlOGQwMTUxNjMzZmMyZWVhZTRkNGI2MzY4NjJkMzMifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Books\"}"},SkullOwner:{Id:[I;-705502538,-856142064,-1458622789,981638045],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGZjM2MyNDNmYzA4OTRhYTQwMjhkMzJiMTlhODMwYTJmY2FkYzI5MzI3MGI0Y2IzMmMxYmFlNDJjNzhjMDhiZSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Book\"}"},SkullOwner:{Id:[I;793724984,-1333377463,-1592279310,2093499712],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODY4NDkzZDg4OTlmZGMxZDllOTFiMDkyZjAwNWJlNmFiZmIwYjhlMjA0ZTkzN2Q2NWM4MTUxY2ZlYjhiYTBlOCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Book\"}"},SkullOwner:{Id:[I;793724984,-1333377463,-1592279310,2093499712],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODY4NDkzZDg4OTlmZGMxZDllOTFiMDkyZjAwNWJlNmFiZmIwYjhlMjA0ZTkzN2Q2NWM4MTUxY2ZlYjhiYTBlOCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Books\"}"},SkullOwner:{Id:[I;-1599361991,-1039054321,-1478552760,37303803],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzI2MWJmNWM3ZmZhMjU0YzE4Mjg0NDgwMzIxMTVlNWNjMTU0NDM2ZGVjMDk5OGM0ZDdhYmQ5OTZhZTFkOTI3In19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"WinRAR Books\"}"},SkullOwner:{Id:[I;-1228870889,263865401,-1676570613,-510947917],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzk0YTNkNWQ5MmQ1YTYwNjQ2NzAzYmU5NWNiYzRmMjdiZmMyNDUwNjc1MGU5ZGIyYWJlMzRhZTI3MjIxOWMwMyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Botany Books\"}"},SkullOwner:{Id:[I;-1225097205,-481669774,-1617703443,680501050],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUxODg4MTc2ZGQyYzEyNjY1ZGIyNDc4ZDZlZjVkY2M5M2JhYWVmNDViYmM2NWMwZTQzMDM1Y2Q5N2FhNjUwMiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Botany Books\"}"},SkullOwner:{Id:[I;332777366,53561420,-1779557425,793518745],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGNhYmRkOWZjZTM5YTY2ZjJhNDMyYjEzM2I5NWQ3YmYyZTg0MTEzNzE5NTg3MWNmZmI5Y2FhNGMzZDc1MmE2NyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Botany Books\"}"},SkullOwner:{Id:[I;-782235374,1973371383,-1499468950,-126311261],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWMwNzM0MTIyYThmYzgwYjNlMjE1Y2U1ODI2MTBhNDA1ZjBiYThjMmQ4MmQwNTJiNTc0MTNmMDkzYWU2YTRhZCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bug Books\"}"},SkullOwner:{Id:[I;612250999,-175093291,-1475531133,314048495],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTlhZGFmYjM5YjViYjI4MGVlYTllZmFhM2M5OThkNGYzZTc5ZGI4ZDdiMDM1YjQxMTRiN2E3ZGJlYzcyMWQxZiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bird Books\"}"},SkullOwner:{Id:[I;1206487452,-2066071090,-1093000669,1714278143],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODdmZjQxMWE5MDQ2N2IzZGJlMmIxMmIyNzA2ODZiMmM4NjU3Zjk4Mzg4MzFjMjZhMjRiZDM2NjQwNTY1NWQ5YyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Fish Books\"}"},SkullOwner:{Id:[I;728238456,202460655,-1285907342,-614477009],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGQ5ZTk1NWE1MDYwMDBmMWQ4YmZjNjhlYWFmZTA0Y2M3ZGZiNDRmMDYyM2ExYjNkMGJmMjE1YThkNWE4NjFjMiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cthulhu Book\"}"},SkullOwner:{Id:[I;1776739564,-919581176,-1971672842,-892169297],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzY2OWRiYmM2MmNhODkzNDBmZGNjZDQwMTkwMmRmODkxODgyNzY3ZGMyMTMwMmVhOTk3NDMyMmRhMjBlMzc2ZiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Ancient Books\"}"},SkullOwner:{Id:[I;-847920632,1278691965,-1835251430,2071529141],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzBjZjc0ZTI2MzhiYTVhZDMyMjM3YTM3YjFkNzZhYTEyM2QxODU0NmU3ZWI5YTZiOTk2MWU0YmYxYzNhOTE5In19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Enchanted Books\"}"},SkullOwner:{Id:[I;-655778166,-2041101507,-1465626923,608276932],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjYyNjUxODc5ZDg3MDQ5OWRhNTBlMzQwMzY4MDBkZGZmZDUyZjNlNGUxOTkzYzVmYzBmYzgyNWQwMzQ0NmQ4YiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Enchanted Book\"}"},SkullOwner:{Id:[I;-1654925326,2010401505,-1983903964,-921889993],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2RjOTg1YTdhNjhjNTc0ZjY4M2MwYjg1OTUyMWZlYjNmYzNkMmZmYTA1ZmEwOWRiMGJhZTQ0YjhhYzI5YjM4NSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Book with Tropical Fish\"}"},SkullOwner:{Id:[I;-1644735147,1838172477,-1866362301,-1558204586],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjU4MmRmNTc2MzkxMTgyMGZlYTEwNzBkYWY3MzdhYmU2Y2E0YWEyMjg0MjcyOGI4MDlhNDFkOGYwOTM5NDRkYiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"The Tale of Peter Rabbit\"}"},SkullOwner:{Id:[I;-100832097,1617512648,-1603736847,-1075626863],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDkxOTIxMTk3ZTNkNThjNzUzOTRjNzZmMjJmZDViMTAyMWQ1YmI0YTE3NmNlYTM4YmFiMmE3MzZkYjJiMDMzZSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Stack of Newspapers\"}"},SkullOwner:{Id:[I;-1271531704,-1554559912,-1237592699,1985180853],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTgyNTQxOWU0MjlhZmMwNDBjOWU2OGIxMDUyM2I5MTdkN2I4MDg3ZDYzZTc2NDhiMTA4MDdkYThiNzY4ZWUifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Portfolios\"}"},SkullOwner:{Id:[I;-471448956,411780600,-2117854973,552810048],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWY1NWE3ZGM2MzIyZWM3MmYzMWVjZDNjM2IwMDI0OTAzYjUyYmJhNTg0YWVkZWExY2YxYTdlNmVhZTI3YTI4MCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Drawings\"}"},SkullOwner:{Id:[I;1972474171,-1288549353,-1638127401,1135252985],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTljMzJhYThiZDc1YTQ5YmZkMWE1YjRhYzIyZGJhNGU3NDUwNDc1NTkxOTNlNGJhOTJjMTc3MzhmMzQ5MjQ5ZCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Lantern\"}"},SkullOwner:{Id:[I;1992198342,-1450031747,-1980161589,-449233585],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGY1MTliNTdhYzgxOGJiNjY1ZWE4MDk0ZGRiNTg0ZDc5ODE2Nzg1OTQxODU3MjhhYjM1ZDkxNWM0NGQzMWUyMyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Lantern\"}"},SkullOwner:{Id:[I;781477738,1852460692,-1911321694,444999949],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmQ3MGFjMzY0YTYyZGJkYjY4Mjg5OTA0YmUxNDAzNTk4ZDU2NTNkMTQyZjg3OTljNzUzN2JlNjI0NGVkNzcifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Paper Lantern\"}"},SkullOwner:{Id:[I;-307565869,-899857461,-1955140466,-1970268593],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjYyODNlN2E4OGQzMjcxOTMwNGEzN2VkZTBjNmE4YzVkYzlkOWNmOWIwMGExNzljZjkwNGU4Y2U4MjEzMTIifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Paper Lantern\"}"},SkullOwner:{Id:[I;-204521681,-1117172318,-1792304319,-250231250],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQxM2Q2NzBlMjlhMTM0Y2U2ODZjNzhjOGU1NjM1M2VhZTc1YzI5YTc2MGI0ODMzN2IxNmMxZDVjMzY5NjFlIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Japanese Stone Lantern\"}"},SkullOwner:{Id:[I;-604037218,-611366906,-1498808957,1692294418],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDg5ZGNhNDBiODQzMWFhY2EyMjZkOGQzN2JjZjIxYjNjNmY2OTZlZmI4NTJkNTJmZTgyM2E3YWRiMzRiIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Golden Chalice with Blue Gem\"}"},SkullOwner:{Id:[I;-868361268,1859667731,-1317363663,1719659809],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTBiN2NhMmNlZDExZDMyNWEzMWQ1ZjI3NTNmYjcxZTIxNjk3ZDI5MWJlYzljMmZhNGE1ZjU5MGRiOWM5OTFmIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Golden Chalice with Red Gem\"}"},SkullOwner:{Id:[I;-604797885,764101470,-1726067749,-766484999],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWViMWVjMTEyZjY4ZDE4NDk3NTQxNDk1ODkzYTM3NWMzMTdhNzc3ZTAxM2JiZjEzNTg5YjFkODg1MzJjYyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Goblet\"}"},SkullOwner:{Id:[I;-13019531,1089555528,-2135370074,1317071082],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGVkNmNmYmM0MTI5MTA4ZTljZjJkZjVmNjE3OWE0YjI2ZjNiYzQzMzkwMWQ5NDJhNDk1NjNkNmJjN2UyMmQifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Pencil Holder\"}"},SkullOwner:{Id:[I;-425533221,1700743186,-1970556257,2098247262],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTliYzU2NmFlMzcwYjE1YzI3MmZjNTA0ODhhMjZjMTViZmU3ZTQzNDBlZGQyMWIzOTMxMWE4NDZjZjljNzA1MiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cardboard Box\"}"},SkullOwner:{Id:[I;-804841361,978469888,-1444945375,-301677660],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDVmMDdhYjQwYWE0ODVhYzJkZjYyNDUwYjdmNTliNTJlOGM2NTg5YjgxMDFmOWJjOGNhNGExNTJhODM4ZjRlNCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cardboard Box\"}"},SkullOwner:{Id:[I;-2144834947,1635796954,-1482622340,790536190],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzA5ZDY1NTBhOGI4OTZkZTMxMjMxYjNjZDE2MWY0N2IxNGI4NDUzMDM4MGExZDU2NWMzNjhkNzY3YmEwZmE0MiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Minecraft Characters in a Box\"}"},SkullOwner:{Id:[I;-1203528133,-1244639630,-2011316674,-383041567],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWJhYmUzYzI1YzFkZTFkNzMyN2M4YTAzNDAxYzY4YTE1ZTI4N2Y0ZjE4Mjc1ODJlMGYwMmQ0Y2E4NTEyY2Q4NiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999}]}}