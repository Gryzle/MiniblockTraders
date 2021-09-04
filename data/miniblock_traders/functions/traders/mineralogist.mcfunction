# --------------------------------------------------------------- #
#                   MINIBLOCK TRADERS DATAPACK                    #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Destroy the item used to convert the villager.
kill @e[type=item,nbt={Item:{tag:{tag:mt_mineral}}},distance=..0.5]

# Fun effects to give user feedback that the transformation worked.
execute at @s run particle minecraft:happy_villager ~ ~ ~ 0.3 1 0.3 100 250
playsound minecraft:entity.experience_orb.pickup ambient @a[distance=..8] ~ ~ ~ 30

# The below command split into lines to make it easier to read. It will not run unless it is a single line.
# data merge entity @s {VillagerData:{profession:mason,level:5,type:desert},PersistenceRequired:1,CustomName:"\"Mineralogist\"",Offers:{Recipes:[
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Coal Ore\"}"},SkullOwner:{Id:[I;-640806278,-3390182,-1730348283,-303318522],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzYxYzU3OTc0ZjEwMmQzZGViM2M1M2Q0MmZkZTkwOWU5YjM5Y2NiYzdmNzc2ZTI3NzU3NWEwMmQ1MWExOTk5ZSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Iron Ore\"}"},SkullOwner:{Id:[I;373955113,-1893973236,-1382621792,1764712526],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTAxODQzZWM0M2YwODhjOTYzZmZjM2UyZjcxYzY2ZTMxNTU5NDNiMTc3YTFhMzU5ODJiMTIwZjZmNjQ4MjJiYyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Copper Ore\"}"},SkullOwner:{Id:[I;-1941413026,-531805651,-1511995196,-259814477],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTE4NGY0ZDVlZWVhOWJmZDE2NTdiNzY2OWI2ZWE4YTI0MzI5ZmY2ZDk3M2I3YmRmMzg4ZmNhNTYyYTg4MTNmNSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Gold Ore\"}"},SkullOwner:{Id:[I;-883975637,1187070212,-1882511885,2004066260],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzNiYzk2NWQ1NzljM2M2MDM5ZjBhMTdlYjdjMmU2ZmFmNTM4YzdhNWRlOGU2MGVjN2E3MTkzNjBkMGE4NTdhOSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Lapis Lazuli Ore\"}"},SkullOwner:{Id:[I;-1136877972,-1433121481,-2103207079,-1463195440],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjY1NGI2ZDk0OWE0NmQ4NmVjMDE1NDhjODkyYTU2OGI4Y2RhZDQ2NDZjYjJlMjk2ZDBkZDU4YWY3Nzk0NzEifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Redstone Ore\"}"},SkullOwner:{Id:[I;568422337,948257012,-2071397346,-771243492],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTY5YTFmMTE0MTUxYjQ1MjEzNzNmMzRiYzE0YzI5NjNhNTAxMWNkYzI1YTY1NTRjNDhjNzA4Y2Q5NmViZmMifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Diamond Ore\"}"},SkullOwner:{Id:[I;-536950829,1153387601,-1366182693,-117869249],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTFlZDlhYmY1MWZlNGVhODRjZmNiMjcyOTdmMWJjNTRjZDM4MmVkZjg1ZTdiZDZlNzVlY2NhMmI4MDY2MTEifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Emerald Ore\"}"},SkullOwner:{Id:[I;-242866901,-884522063,-1548301522,530490663],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDA1Mzg1MTUyN2M0YzllZjMwYTYxZmIwNjdlYmNlOTU3YzcyNmUxNjg3ZjhiNTMwZmI0YTZiZWViYTQzOGJkIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Deepslate Emerald Ore\"}"},SkullOwner:{Id:[I;-2002557320,-1493480353,-1603876558,989126689],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWQxNzNhNDY1MTJmYzFhYzIyNzIxNGY1ZTZiOGE5MjQ1ZGE1NDcyYzQ4OWNiOTM2Yjk0NzY0YWFjMTNmOWJmOSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Deepslate Gold Ore\"}"},SkullOwner:{Id:[I;1556409474,1248415545,-1291921836,880062935],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2YyZDM4ZWZhZTFlMGE1ODFmMjU4YWEwOWNhNjEwNzQ5ZDNlZmRkZjU4NjUzMDRmMmZhMThiN2ExYTBjM2JjZCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Deepslate Lapis Lazuli Ore\"}"},SkullOwner:{Id:[I;1514245061,1155747780,-1327490260,-784506232],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjBlODM2YjQxYjVlOTExN2FkZWIxYTM2OTYxM2UzMWMzMDM5NzEzMjcxMjlmY2NiOGYzNGIzY2Y1ZGNkY2Q4YyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Deepslate Redstone Ore\"}"},SkullOwner:{Id:[I;1842524475,989087300,-1185679069,38658048],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUxYTQyMjdkNmFiNTA0M2Q2YmI4MGUxYmZkNDI2NTg4ODUzZjMzMjU2ZWU0NTYxOGEwMmY2ZWUxZWRlNTgzMCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Deepslate Diamond Ore\"}"},SkullOwner:{Id:[I;-178640497,885279864,-1101158281,1101472420],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTZlMjAwOTc0OTljZDg2MzBhODM2OTc5OTIyMTYwZmUzZjEzZDNkYWVhOGU1YWRlNTk1MzQ3OWY3YjIzZTkwOCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Sapphire Ore\"}"},SkullOwner:{Id:[I;-2144026273,-7058687,-1171451405,-1879491615],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTg2NzgyNTc2NGRlOThkYTFjMWVlZGM4ZjU3ZmFjMzcxY2JlZmM0MGIxNGJhNTM0YWVmMmM1MDI4YTYyODAifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Ruby Ore\"}"},SkullOwner:{Id:[I;2077684970,1114787312,-1849650689,-909488374],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDU3MGMzNjAxMzQwYjAwNDlhMTk5NWU1M2ViMzZlNzA2NGQ0NDc2MDM3OTA4ZTg5Mjg0ODc0ZjY3NmMxOTRhYSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Etherium Ore\"}"},SkullOwner:{Id:[I;-740154022,636963993,-1819341221,-611972644],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWY4MjI1MjJiY2Q4Nzg3OGM3MTUxYWNmMWRlMTUxZjA1MzY2ZmY5ZTgxZmZkMmJiNDNjYzRhY2M2YWVjNGZlIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Lead Ore\"}"},SkullOwner:{Id:[I;1444853916,-1705294613,-1177735772,-1943818307],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzkwZTQyZTBjNGRmNTlhZDAwYjEzNWI2YjdiYmNlYWIxMGE4NWVlYjliNmVmZDgzYjE4NDI0NGM5NjgzMGIzZCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Tin Ore\"}"},SkullOwner:{Id:[I;-138636063,1584286704,-1632298997,-1869827672],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjg0MzdjYzIwZDBiMmMxOWU4NjdiOGJhMmZkOGU3OTJjNTUwNTc5MjcxNzY2MzhmMDBjN2NkMWNjMGM5ZTQyMyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Silver Ore\"}"},SkullOwner:{Id:[I;-1400881666,415780065,-1198452069,-1909394781],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2Q5OWE3Njk0MThkMDg1ZGU1M2JmY2JkOWEzNWI3NzM2OTAxYjg1ODQyZjM3OTA2NDhjNTVmMzUwNTg4Zjg3In19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Uranium Ore\"}"},SkullOwner:{Id:[I;-110480850,977290806,-2139402044,1830720951],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTA2MTRlM2FiZjY0ZDUzNDk2Nzk0Y2Q4YWU2ODU5N2ZjNzI2NmM2MTc5NGJkMWU0OGQ0NTE5ODY4YWUzY2FkMCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Malachite Ore\"}"},SkullOwner:{Id:[I;1583882916,397559223,-1238683366,1887938248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDQ1ZWRhZjU5MzY0MTYyNDgwZmNiZjBkOTFkZjFiZDY4MGYyNzM1ODNiNjYwOWZiMjJiZjU4ZmM2NGE4ZWU2NSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Amethyst Block\"}"},SkullOwner:{Id:[I;1642715083,-1150989963,-1404325767,285862586],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGI1ZTNkZWNlNDI1YzhiNGNkNDY5MWY3NmEyMThjOGEwZDA0ODBiYTgwMmU2MTI4MmQwMmQwZDU2N2VkOGMzZSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Budding Amethyst Block\"}"},SkullOwner:{Id:[I;-944421096,963923332,-1305717625,1524062895],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWJkMTUwYjYxMzI5MTlhOTkxMzcwY2RiZmM4ODk5MGQ0MDFiMzlmNjNmZmU4MDM4Y2UyMDUwMjc1ZGRlZTdhYiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Amethyst Crystals\"}"},SkullOwner:{Id:[I;279818020,-1424015199,-1476473166,-1622773350],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTRmNDc2YjRlMTMwNGVjOThlYzI0OTE5NTE4OTY2Y2E4MzJjODQwM2EwODJlZjEyYjM1M2I1OTBmMzhkODE4ZCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bag of Amethyst\"}"},SkullOwner:{Id:[I;1453219795,541936411,-1152576767,-802847329],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmFmNDZjYjhjZDY0YWRjM2MwMzU1YzYyNjEyNmVkNTlmOTE0NjE1ZDcyZmJhNzkwNTQwMTZmZGE5MTlhYzVhYSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Quartz Geode\"}"},SkullOwner:{Id:[I;2029016695,1551584678,-1967292953,843929891],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjE0NmQ3YjJjZjlhMjE3ODRmMzZmNDU5MjE1MWRmYzU1YWE3YzZlZjlhZjRhNDMwYWJkODZkZTBmMDhiMjI0ZCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Rose Quartz Geode\"}"},SkullOwner:{Id:[I;99580132,758992480,-1650321911,1649052823],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzUzNjJmOTBmZjI5Y2NkNDBmNDIzNWEwNWRkOTFkZjA5MWNmNDNmM2EyZjcxNDE0ZGZiYmNhNmU1ZDM2MzRkOSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Emerald Geode\"}"},SkullOwner:{Id:[I;-999340181,-739293739,-1755616334,-1127757322],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjI4ZGQzZDliODFjYzlmOTZhNGMxMWZlMTNiMDc5NDk0ZjI3ZmM1YjkzM2M0ZjA4MzNmNjU2NDQ3MmVlMTYwOSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Diamond Geode\"}"},SkullOwner:{Id:[I;109323054,1753498640,-1912537153,1178849370],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDY3OTRhNzVlODc3ZmM0OGJiNzcyZDU5ZWJmNmUwNzZkMWIwYTU0ZTlmMmJkMzE3ZjFhMTIyNDk5N2RlZWIzNyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Deepslate Geode\"}"},SkullOwner:{Id:[I;1047257105,748307597,-1265238011,-1645682659],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODZmMDZlYWEzMDA0YWVlZDA5YjNkNWI0NWQ5NzZkZTU4NGU2OTFjMGU5Y2FkZTEzMzYzNWRlOTNkMjNiOWVkYiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Opal Gem\"}"},SkullOwner:{Id:[I;-1808294382,-996390323,-1913643264,1231827421],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTM5OWU0N2U1NWMxNWQzZTI2NTI1YzVhNDcwZjI0OGUzMzVkMmZhYTNhNjM0MTBjNGRkZjQyZGEzNmFkMmYifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Midnight Opal\"}"},SkullOwner:{Id:[I;1236151752,2132626281,-1103810928,2110928907],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTk4MDE3MjFjNzcxYzNjNDg5OGNiN2QyNDgzMjFkODlhOTA4N2E5MmQzZGQ1ODE2M2NiZDRlMTJlZDc1YjU0OSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Dragonsbreath Opal\"}"},SkullOwner:{Id:[I;-1701567200,1636843884,-1908806397,635266962],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWY1MjQxNjZmN2NlODhhNTM3MTU4NzY2YTFjNTExZTMyMmE5M2E1ZTExZGJmMzBmYTZlODVlNzhkYTg2MWQ4In19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Pearl\"}"},SkullOwner:{Id:[I;963052403,591151397,-1855964815,1543651791],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2QxNmFlOTUxMTIwMzk0ZjM2OGYyMjUwYjdjM2FkM2ZiMTJjZWE1NWVjMWIyZGI1YTk0ZDFmYjdmZDRiNmZhIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Boulder Opal\"}"},SkullOwner:{Id:[I;-804834575,79643200,-1769255773,493639986],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjZhNzRmMTRiMWJjYzQzYmRhZmYyNjEwOTdlNmQ4YTMxNjM5YzIyZGJlODIyNWU5OWU5Zjk5NmI5NDFlMzliNCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Mosquito Amber\"}"},SkullOwner:{Id:[I;1371322123,-781627632,-2095610134,116730592],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGRlZTViYmFlM2M4NTIyZWJlZWM5OThmNmNjMDcwZTljNDRjMzUxMzY3Yzc5ZWFmZjUxMTA3MTJmMDZhMDMwOSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
# ]}}

# Apply villager trades.
data merge entity @s {VillagerData:{profession:mason,level:5,type:desert},PersistenceRequired:1,CustomName:"\"Mineralogist\"",Offers:{Recipes:[{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Coal Ore\"}"},SkullOwner:{Id:[I;-640806278,-3390182,-1730348283,-303318522],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzYxYzU3OTc0ZjEwMmQzZGViM2M1M2Q0MmZkZTkwOWU5YjM5Y2NiYzdmNzc2ZTI3NzU3NWEwMmQ1MWExOTk5ZSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Iron Ore\"}"},SkullOwner:{Id:[I;373955113,-1893973236,-1382621792,1764712526],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTAxODQzZWM0M2YwODhjOTYzZmZjM2UyZjcxYzY2ZTMxNTU5NDNiMTc3YTFhMzU5ODJiMTIwZjZmNjQ4MjJiYyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Copper Ore\"}"},SkullOwner:{Id:[I;-1941413026,-531805651,-1511995196,-259814477],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTE4NGY0ZDVlZWVhOWJmZDE2NTdiNzY2OWI2ZWE4YTI0MzI5ZmY2ZDk3M2I3YmRmMzg4ZmNhNTYyYTg4MTNmNSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Gold Ore\"}"},SkullOwner:{Id:[I;-883975637,1187070212,-1882511885,2004066260],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzNiYzk2NWQ1NzljM2M2MDM5ZjBhMTdlYjdjMmU2ZmFmNTM4YzdhNWRlOGU2MGVjN2E3MTkzNjBkMGE4NTdhOSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Lapis Lazuli Ore\"}"},SkullOwner:{Id:[I;-1136877972,-1433121481,-2103207079,-1463195440],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjY1NGI2ZDk0OWE0NmQ4NmVjMDE1NDhjODkyYTU2OGI4Y2RhZDQ2NDZjYjJlMjk2ZDBkZDU4YWY3Nzk0NzEifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Redstone Ore\"}"},SkullOwner:{Id:[I;568422337,948257012,-2071397346,-771243492],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTY5YTFmMTE0MTUxYjQ1MjEzNzNmMzRiYzE0YzI5NjNhNTAxMWNkYzI1YTY1NTRjNDhjNzA4Y2Q5NmViZmMifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Diamond Ore\"}"},SkullOwner:{Id:[I;-536950829,1153387601,-1366182693,-117869249],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTFlZDlhYmY1MWZlNGVhODRjZmNiMjcyOTdmMWJjNTRjZDM4MmVkZjg1ZTdiZDZlNzVlY2NhMmI4MDY2MTEifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Emerald Ore\"}"},SkullOwner:{Id:[I;-242866901,-884522063,-1548301522,530490663],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDA1Mzg1MTUyN2M0YzllZjMwYTYxZmIwNjdlYmNlOTU3YzcyNmUxNjg3ZjhiNTMwZmI0YTZiZWViYTQzOGJkIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Deepslate Emerald Ore\"}"},SkullOwner:{Id:[I;-2002557320,-1493480353,-1603876558,989126689],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWQxNzNhNDY1MTJmYzFhYzIyNzIxNGY1ZTZiOGE5MjQ1ZGE1NDcyYzQ4OWNiOTM2Yjk0NzY0YWFjMTNmOWJmOSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Deepslate Gold Ore\"}"},SkullOwner:{Id:[I;1556409474,1248415545,-1291921836,880062935],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2YyZDM4ZWZhZTFlMGE1ODFmMjU4YWEwOWNhNjEwNzQ5ZDNlZmRkZjU4NjUzMDRmMmZhMThiN2ExYTBjM2JjZCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Deepslate Lapis Lazuli Ore\"}"},SkullOwner:{Id:[I;1514245061,1155747780,-1327490260,-784506232],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjBlODM2YjQxYjVlOTExN2FkZWIxYTM2OTYxM2UzMWMzMDM5NzEzMjcxMjlmY2NiOGYzNGIzY2Y1ZGNkY2Q4YyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Deepslate Redstone Ore\"}"},SkullOwner:{Id:[I;1842524475,989087300,-1185679069,38658048],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUxYTQyMjdkNmFiNTA0M2Q2YmI4MGUxYmZkNDI2NTg4ODUzZjMzMjU2ZWU0NTYxOGEwMmY2ZWUxZWRlNTgzMCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Deepslate Diamond Ore\"}"},SkullOwner:{Id:[I;-178640497,885279864,-1101158281,1101472420],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTZlMjAwOTc0OTljZDg2MzBhODM2OTc5OTIyMTYwZmUzZjEzZDNkYWVhOGU1YWRlNTk1MzQ3OWY3YjIzZTkwOCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Sapphire Ore\"}"},SkullOwner:{Id:[I;-2144026273,-7058687,-1171451405,-1879491615],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTg2NzgyNTc2NGRlOThkYTFjMWVlZGM4ZjU3ZmFjMzcxY2JlZmM0MGIxNGJhNTM0YWVmMmM1MDI4YTYyODAifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Ruby Ore\"}"},SkullOwner:{Id:[I;2077684970,1114787312,-1849650689,-909488374],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDU3MGMzNjAxMzQwYjAwNDlhMTk5NWU1M2ViMzZlNzA2NGQ0NDc2MDM3OTA4ZTg5Mjg0ODc0ZjY3NmMxOTRhYSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Etherium Ore\"}"},SkullOwner:{Id:[I;-740154022,636963993,-1819341221,-611972644],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWY4MjI1MjJiY2Q4Nzg3OGM3MTUxYWNmMWRlMTUxZjA1MzY2ZmY5ZTgxZmZkMmJiNDNjYzRhY2M2YWVjNGZlIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Lead Ore\"}"},SkullOwner:{Id:[I;1444853916,-1705294613,-1177735772,-1943818307],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzkwZTQyZTBjNGRmNTlhZDAwYjEzNWI2YjdiYmNlYWIxMGE4NWVlYjliNmVmZDgzYjE4NDI0NGM5NjgzMGIzZCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Tin Ore\"}"},SkullOwner:{Id:[I;-138636063,1584286704,-1632298997,-1869827672],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjg0MzdjYzIwZDBiMmMxOWU4NjdiOGJhMmZkOGU3OTJjNTUwNTc5MjcxNzY2MzhmMDBjN2NkMWNjMGM5ZTQyMyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Silver Ore\"}"},SkullOwner:{Id:[I;-1400881666,415780065,-1198452069,-1909394781],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2Q5OWE3Njk0MThkMDg1ZGU1M2JmY2JkOWEzNWI3NzM2OTAxYjg1ODQyZjM3OTA2NDhjNTVmMzUwNTg4Zjg3In19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Uranium Ore\"}"},SkullOwner:{Id:[I;-110480850,977290806,-2139402044,1830720951],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTA2MTRlM2FiZjY0ZDUzNDk2Nzk0Y2Q4YWU2ODU5N2ZjNzI2NmM2MTc5NGJkMWU0OGQ0NTE5ODY4YWUzY2FkMCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Malachite Ore\"}"},SkullOwner:{Id:[I;1583882916,397559223,-1238683366,1887938248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDQ1ZWRhZjU5MzY0MTYyNDgwZmNiZjBkOTFkZjFiZDY4MGYyNzM1ODNiNjYwOWZiMjJiZjU4ZmM2NGE4ZWU2NSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Amethyst Block\"}"},SkullOwner:{Id:[I;1642715083,-1150989963,-1404325767,285862586],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGI1ZTNkZWNlNDI1YzhiNGNkNDY5MWY3NmEyMThjOGEwZDA0ODBiYTgwMmU2MTI4MmQwMmQwZDU2N2VkOGMzZSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Budding Amethyst Block\"}"},SkullOwner:{Id:[I;-944421096,963923332,-1305717625,1524062895],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWJkMTUwYjYxMzI5MTlhOTkxMzcwY2RiZmM4ODk5MGQ0MDFiMzlmNjNmZmU4MDM4Y2UyMDUwMjc1ZGRlZTdhYiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Amethyst Crystals\"}"},SkullOwner:{Id:[I;279818020,-1424015199,-1476473166,-1622773350],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTRmNDc2YjRlMTMwNGVjOThlYzI0OTE5NTE4OTY2Y2E4MzJjODQwM2EwODJlZjEyYjM1M2I1OTBmMzhkODE4ZCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bag of Amethyst\"}"},SkullOwner:{Id:[I;1453219795,541936411,-1152576767,-802847329],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmFmNDZjYjhjZDY0YWRjM2MwMzU1YzYyNjEyNmVkNTlmOTE0NjE1ZDcyZmJhNzkwNTQwMTZmZGE5MTlhYzVhYSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Quartz Geode\"}"},SkullOwner:{Id:[I;2029016695,1551584678,-1967292953,843929891],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjE0NmQ3YjJjZjlhMjE3ODRmMzZmNDU5MjE1MWRmYzU1YWE3YzZlZjlhZjRhNDMwYWJkODZkZTBmMDhiMjI0ZCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Rose Quartz Geode\"}"},SkullOwner:{Id:[I;99580132,758992480,-1650321911,1649052823],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzUzNjJmOTBmZjI5Y2NkNDBmNDIzNWEwNWRkOTFkZjA5MWNmNDNmM2EyZjcxNDE0ZGZiYmNhNmU1ZDM2MzRkOSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Emerald Geode\"}"},SkullOwner:{Id:[I;-999340181,-739293739,-1755616334,-1127757322],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjI4ZGQzZDliODFjYzlmOTZhNGMxMWZlMTNiMDc5NDk0ZjI3ZmM1YjkzM2M0ZjA4MzNmNjU2NDQ3MmVlMTYwOSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Diamond Geode\"}"},SkullOwner:{Id:[I;109323054,1753498640,-1912537153,1178849370],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDY3OTRhNzVlODc3ZmM0OGJiNzcyZDU5ZWJmNmUwNzZkMWIwYTU0ZTlmMmJkMzE3ZjFhMTIyNDk5N2RlZWIzNyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Deepslate Geode\"}"},SkullOwner:{Id:[I;1047257105,748307597,-1265238011,-1645682659],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODZmMDZlYWEzMDA0YWVlZDA5YjNkNWI0NWQ5NzZkZTU4NGU2OTFjMGU5Y2FkZTEzMzYzNWRlOTNkMjNiOWVkYiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Opal Gem\"}"},SkullOwner:{Id:[I;-1808294382,-996390323,-1913643264,1231827421],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTM5OWU0N2U1NWMxNWQzZTI2NTI1YzVhNDcwZjI0OGUzMzVkMmZhYTNhNjM0MTBjNGRkZjQyZGEzNmFkMmYifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Midnight Opal\"}"},SkullOwner:{Id:[I;1236151752,2132626281,-1103810928,2110928907],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTk4MDE3MjFjNzcxYzNjNDg5OGNiN2QyNDgzMjFkODlhOTA4N2E5MmQzZGQ1ODE2M2NiZDRlMTJlZDc1YjU0OSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Dragonsbreath Opal\"}"},SkullOwner:{Id:[I;-1701567200,1636843884,-1908806397,635266962],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWY1MjQxNjZmN2NlODhhNTM3MTU4NzY2YTFjNTExZTMyMmE5M2E1ZTExZGJmMzBmYTZlODVlNzhkYTg2MWQ4In19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Pearl\"}"},SkullOwner:{Id:[I;963052403,591151397,-1855964815,1543651791],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2QxNmFlOTUxMTIwMzk0ZjM2OGYyMjUwYjdjM2FkM2ZiMTJjZWE1NWVjMWIyZGI1YTk0ZDFmYjdmZDRiNmZhIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Boulder Opal\"}"},SkullOwner:{Id:[I;-804834575,79643200,-1769255773,493639986],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjZhNzRmMTRiMWJjYzQzYmRhZmYyNjEwOTdlNmQ4YTMxNjM5YzIyZGJlODIyNWU5OWU5Zjk5NmI5NDFlMzliNCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Mosquito Amber\"}"},SkullOwner:{Id:[I;1371322123,-781627632,-2095610134,116730592],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGRlZTViYmFlM2M4NTIyZWJlZWM5OThmNmNjMDcwZTljNDRjMzUxMzY3Yzc5ZWFmZjUxMTA3MTJmMDZhMDMwOSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999}]}}