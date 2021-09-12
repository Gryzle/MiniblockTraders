# --------------------------------------------------------------- #
#                   MINIBLOCK TRADERS DATAPACK                    #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Destroy the item used to convert the villager.
kill @e[type=item,nbt={Item:{tag:{tag:mt_bake}}},distance=..0.5]

# Fun effects to give user feedback that the transformation worked.
execute at @s run particle minecraft:happy_villager ~ ~ ~ 0.3 1 0.3 100 250
playsound minecraft:entity.experience_orb.pickup ambient @a[distance=..8] ~ ~ ~ 30

# The below command split into lines to make it easier to read. It will not run unless it is a single line.
# data merge entity @s {VillagerData:{profession:butcher,level:5,type:taiga},PersistenceRequired:1,CustomName:"\"Baker\"",Offers:{Recipes:[
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cake\"}"},SkullOwner:{Id:[I;1116589873,253052146,-1537080906,-693884363],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzhmYWE0Y2U3OTA1NGNjOWI4ZTFjOWRlNDgyM2MyMmNjMDY5ODRhOGE0ZjZkZTYyYmRhOTBiNTJjNWZlY2RkNiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cake\"}"},SkullOwner:{Id:[I;-197447966,-1270199445,-1729338201,469712511],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGFkNDI1NTE0Y2NmOGNiOWMwZTE0MzQyNWQ3M2Q5Mzk0YTUwZGRhNDE5NzdiMjEyMDYxNmMwZjllMzg5MjBlNSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Carrot Cake\"}"},SkullOwner:{Id:[I;1706944402,742739098,-1787158039,-475029988],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIyNmMxMjJlZGYwZDExZTQ2NWE1OTEyMDkwMDYwYWUyOTI3NGQyM2IxOWZkYjhkNzdiMWQ0YjM3NzNhN2VjZCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Creeper Cake\"}"},SkullOwner:{Id:[I;1119595863,-618445799,-1262308176,1975738517],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODY1NDk1MWJhOTI5MGQ4Yjg0MWZjNDJjNmNjZDI4NjZiZDM0Njk2MTQ1ZTk1NWM0NjY5MTU2MDExY2NjNTkyMiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cookie Stack\"}"},SkullOwner:{Id:[I;-2013434884,1726368701,-2008161991,474717876],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmEzOWJiMjIxZWRmMTM3NjdhODBkNTU2MTJlOGI0NTk3ZjI2Y2NhYjdjOWQ0NWM4MDQwMGQ2Yjg1MDgzYTZkZSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Glazed Donut\"}"},SkullOwner:{Id:[I;-1872784447,-1527624513,-1628937227,-327894540],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmQ1YjFlMDUxYWNkOTE2Njg2ZjcyMmMyMWZmZjc0YTZhZjMyZDQ5NjUyYWQ4NDYyODRmNGFiOTE4OWE3MTAzMyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Chocolate Donut\"}"},SkullOwner:{Id:[I;381932863,1581728100,-1676635144,-1890278685],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2FiMDQ4NDdmMDliM2YyZTExZmM0MTJjMmUyNDFhY2NmOTk2NzU0MzI5MzNiNDcxNjgxMDA1YzQyZTVkMjI4NSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Sweet Roll\"}"},SkullOwner:{Id:[I;-1479131833,404966012,-2089564887,-344422909],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzFkNGI5MjFmZDlmYjZhNDg1MDk3ZmI3ODY4YzZhNzFmYWFlNGE3ZTU1MGI0ZTZlOTc1MzEzZmE5YTkyMjhiIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Waffles and Syrup\"}"},SkullOwner:{Id:[I;708058312,1132285571,-1996686790,356473065],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGVjNmEzN2FhNjIwNzdmNmU2ZTg1YjQyYTA2MjI5OTM2MzZjM2IzNjEzMmRiYzM0MWYxZjEzMDZmNjFjMmYyNiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Blueberry Pie\"}"},SkullOwner:{Id:[I;877192937,584731823,-1120809297,-1141763827],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjQ4MjE3MjVhMjNhMDZiOTJiYTc5MzYzNTFjY2ZhYjQyMjkwNWQ3ODE4OTdjMjZmMGI2MTJhNmRmMmEyMCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cherry Pie\"}"},SkullOwner:{Id:[I;-954177299,1776369703,-1836235771,-2047890674],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDUzYzFlODdlNTM3ZjFhYjI3NzRkZGFmYjgzNDM5YjMzNmY0YTc3N2I0N2FkODJiY2IzMGQ1ZmNiZGY5YmMifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Pumpkin Pie\"}"},SkullOwner:{Id:[I;847074762,825705065,-1104545142,2017912677],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzhhOTcxZGY1MWU5Y2E5YTViOTJlNDVkM2ZhNTQ3ZGQzMTkxODc3OTI5YTQzN2Q1MDE1Mzg5MmU1ODVhIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Stack of Sliced Bread\"}"},SkullOwner:{Id:[I;1604509259,-1595191523,-1503613954,1040963986],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGEyNGRjOWYxNzMzZjAwZTY3NjUwOWEyMjFiOGE2NmE2ZTA1OWU1NTA0NWQwOGE3ZTRmYzA4ZDdkMzEwODc1OCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Sourdough Bread\"}"},SkullOwner:{Id:[I;-1690626914,-951040398,-1209733946,-1524316568],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2RiZWEzODI3MTA3NTczNmU0ZDZhOThiYTRjNzg0YmJlN2MyZDFkNjk3ZmNiMmNmZjhhNzRjZGQ5ZWM4ZCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Ender Cake\"}"},SkullOwner:{Id:[I;1481756671,1838501280,-1389997654,777917816],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmU4MzljY2M2NWRhZjIzYmFiYTRkNWMwMTg0MDIzN2U2MjIzMGViNmM0YTMwNDhkNzVkNjgyNTc3OTEzYmMyNSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Pride Cake\"}"},SkullOwner:{Id:[I;1878945907,1097288375,-1366149984,-1809162542],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzQxZWExYTM5MTI1YWVjNzQyNzEzNmEwYzY4MmVjMzQ2Mzc1MTM2OGZjNjVlNzAwYmJmNDljN2IzNGI3ZTQ0OCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Christmas Pudding\"}"},SkullOwner:{Id:[I;802472944,77221816,-1903856651,565720413],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTBiMzQwNjljOTI4NmVmYWNhNDE2ZmRlODgyMGI1NTk3NTE2MGMyNDBmM2UwZDdkNTZmNWJkYjY3YjQxYmY4NSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Netherite Cake\"}"},SkullOwner:{Id:[I;1864022997,1021855437,-1618765050,-1833247606],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDhlOGU4Y2Y0OGY5YTdhOTliZDJkODliYzQ5M2I3YjNjNWNiZGQ1ZDJiM2M5MGY0YmUxZTQ4Njc1MWMxN2JkYSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Black Forest Cake\"}"},SkullOwner:{Id:[I;-845387960,-222214580,-1975409683,-577053615],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDU0YTg5NWZmZDBjN2VkY2E5ZTRiOWQxMWE2YzlmYWJmNjM0NDhlMDY0ZWFkZGRhOTNhMjhhZTlhMzgyMzU0OSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Rainbow Cake\"}"},SkullOwner:{Id:[I;-274192977,1533561292,-1468687733,296047488],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTYwZmFiYjE4Y2RlYjI3NmJiZjM2OGRkOTcxOTE4YTVkYThiOTdiYjg4NjY4MzcwYWM1YzMxZmZkMGU2NGMxYyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Rainbow Birthday Cake\"}"},SkullOwner:{Id:[I;-276752184,-1422506965,-1196146827,-1307369247],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDU4NDM4N2FhN2ZhYTQwYjdkYzA5ZDcxNWQ3NDllZWJlNTMyNmFlODU2MjMwM2M1ZGY0Y2Y1NTA3MzVkYjU3MiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Red Velvet Cake Slice\"}"},SkullOwner:{Id:[I;2029368725,185877729,-1777497977,296374242],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2RhOTVhZDAyMjY5YzI0NjYzZDdhMzQ3ODllODQzNDJhNjkwNWMwZDgxYzc5MGU2MzEzYjczODcxYmE4NzBiOSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Chocolate Cake Slice\"}"},SkullOwner:{Id:[I;603543925,-147044374,-1966060248,-140807492],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjc3ZGVmZmRiZmFkZDg3ZTM2ZjhhZTg1N2YwMzZkMjkxZGUwODk1NjNlYWIxMjE0MjUyY2M0ZWIxNDA2MWU5NSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cake Shulker\"}"},SkullOwner:{Id:[I;349202410,-2073014804,-1642705560,1164898305],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2Y0ZjMwYjE5NWI2MDE1ZmE2Y2M2NDlmYzNhNWY3ZmNiMDUyMWVjYmQ5YzNlNzBhYmU5Yzg5YWE4ZDE5ZmRmNCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Plate of Jammie Dodgers\"}"},SkullOwner:{Id:[I;-1028713179,-505659114,-2135453167,520961085],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWQwMGRmYjNhNTdjMDY4YTBjYzdiNjI0ZDhkODg1MjA3MDQzNWQyNjM0YzBlNWRhOWNiYmFiNDYxNzRhZjBkZiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Plate of Crumpets\"}"},SkullOwner:{Id:[I;-379221463,509756750,-1594108515,-1000916918],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjU3YzJiNmYyZTdhZTBiOWYwYmUwOTE0YTczNDg5OWU0OWU1NWU3NmJmNDllMGZjNWRmNGRiMzFhYWZjNDI0ZSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Smore (chocolate)\"}"},SkullOwner:{Id:[I;1215424970,-1723120213,-1370077940,776182598],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzQzYzcwNWQ0NGE4N2EwZTc5MmE5MDdhNTMzOTE3N2FkZmNhNWNhYTBmZTcwZjRhOTA4NWViZGY0ZDNjYzZiNSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Smore (cinnamon graham cracker)\"}"},SkullOwner:{Id:[I;-18487992,-1597880911,-1518484864,99455790],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2EyNjEwMjIwMzMyOGE5ZjgyNTJlNGJmMGU2OGExMWM4YTUyMmMwZjE1MjY5ZGNkZjc3NTYxODc0N2FkNWI1MyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Smore (oreo)\"}"},SkullOwner:{Id:[I;2028146824,1321288336,-1990957758,2026638721],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzNiZTU5YWI1OTIyMDE0YTkwNTk5MDAxMzU2NTcwNDNhMjczY2Y5OTBmNmQ5NjQ1Y2RkZWIwODk1MTcwZWI1MSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"German Jelly Donut\"}"},SkullOwner:{Id:[I;-1919245499,-1299692542,-1267485093,2113632079],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzMwMTMzNmU0MjMzNmI2ZjIwZDNkNzY3NGZhOTk5NzEwN2M1Yjk5NDc3MGRjODE3NDBjMDEyZWZkZjVlMmIzNyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Donut\"}"},SkullOwner:{Id:[I;1348632399,-1450423676,-1382510548,1372676864],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTU2YzFhZDk0NTM1MmYyNTRhYzlmMGE5NDY5ZjcyMzc0NmZlOTQ4YTNlYWY5YWFiNDg0NzVhMTE2ZDNkODU0In19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Donut\"}"},SkullOwner:{Id:[I;1895296026,-1954397366,-1853617435,-239873260],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDE5MTJkOTYyYzk0MzVmMWE0NWY4MjFiM2NjOTEyMTkxMDI4NzdiYTcwZDc3YThiYzhmZDdjMjM2MWYyZmY4NSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Brownie\"}"},SkullOwner:{Id:[I;-544579388,-366981193,-1902993862,1725716648],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjUwYzQxYmUwODdlYWNiODJhZjkxNTQ2ZWYzMDRmZjYxYzU1ZWZkNzJhZDU5ODE1YjM4MjM3ZDI5MmYzMDdhMCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cupcake\"}"},SkullOwner:{Id:[I;-836110718,-166244972,-1215181341,1094164222],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTJmNTYzOGMyMTNlYTJhNWE5NGU2NTk4MTY2YmM0N2VlZWI0MGY1ZGY4NGRhNzBjZDkyMzNjMTgxMmRmMTEwIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Muffin\"}"},SkullOwner:{Id:[I;-1865293166,-1272364989,-1561080547,-431501594],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWQyYzRhNmRhNjk4OTc3Yjg1OWI2OTc2OWQ2MzQ0ZmRhZDc0YjUyYWI3NzUyZDc1NWU1N2NmOGE4MmViZGYifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cookie\"}"},SkullOwner:{Id:[I;59219820,516966236,-1167531708,-789743787],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTFmZDk4MWNlMTVhMjk4MGE5NjExNWM4ZDY3MDk5ZjRiY2I0OTFmMmU2Yzc5MDg0N2E3OWMzNjBlNWZjIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Gingerbread House\"}"},SkullOwner:{Id:[I;1184184808,-844216730,-1549460755,-1330316963],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDBmNDg1NTkzNjc3YWFiMjhkYmNhNDViMTAyMmYyMWIxYmM3ODk2YmM5ZmU0NDA2YWJlNGQ2MDcwNTc4MjYifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Muffin\"}"},SkullOwner:{Id:[I;1997984913,1414873822,-1124997733,-893332907],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjIwYWI4ZGVmZjlkYzhkODQ1NzhmOWI0ZDY5YTYzZDVmMzg5NDlhMGUzZTlmMWU3Yzk0NzYxMDRkNmQ3MzZiNSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Flour\"}"},SkullOwner:{Id:[I;-2119300034,-1418771988,-1922321529,1626839157],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWE0MTgxYzFhNGM0NWVmNjExNDA2YzdkZDY4YTRkYzQ4MzEyMTgwODdkYWUxOWE2MmE0ZGVjYjJkY2RkMzVjMCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bag of Sugar\"}"},SkullOwner:{Id:[I;-310521188,1956596675,-1934906518,-104437813],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDdmMzhlYTI4Njk1MmEzMzc4OTVkNTE1NDhmMWIxYzE5NGU5ZGYyMjE4OTg5ZjcyZDhkMzI0ZmI5YTMyOSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bag Of Sugar\"}"},SkullOwner:{Id:[I;218269152,1739148954,-2122940369,1409776583],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTNjZTc2NjAyZDNmZWM3YzAyNzNkYTYwMDA5MDA3YmU0MTQwYWM5ZmFjMDM0MTQ1MGMwNzU3ZTUzZDc1MTU3NyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Basket of Eggs (no handle)\"}"},SkullOwner:{Id:[I;-1092656431,-734705953,-1140304694,-1224542186],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFkYzBkNGVhYjA3MTExYzdlNTMxYmU2N2QzMzA5ZDFjOTYwNTdjMWI0YWViNzdjNGEzYTgxZTkwNGU5MThlZSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bag of Semolina\"}"},SkullOwner:{Id:[I;1120928665,-2033170402,-1437311155,-371959761],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjAyMzE2MTZlYzYwMzIyY2M1MWUyZTE4NGVmMTg0ZTMzNTNmYTIxYjBhMTE0YjQyNzg0NTc0MDg5NjgxNDE1OCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
# ]}}

# Apply villager trades.
execute if entity @e[type=player,distance=..2] run data merge entity @s {VillagerData:{profession:butcher,level:5,type:taiga},PersistenceRequired:1,CustomName:"\"Baker\"",Offers:{Recipes:[{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cake\"}"},SkullOwner:{Id:[I;1116589873,253052146,-1537080906,-693884363],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzhmYWE0Y2U3OTA1NGNjOWI4ZTFjOWRlNDgyM2MyMmNjMDY5ODRhOGE0ZjZkZTYyYmRhOTBiNTJjNWZlY2RkNiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cake\"}"},SkullOwner:{Id:[I;-197447966,-1270199445,-1729338201,469712511],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGFkNDI1NTE0Y2NmOGNiOWMwZTE0MzQyNWQ3M2Q5Mzk0YTUwZGRhNDE5NzdiMjEyMDYxNmMwZjllMzg5MjBlNSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Carrot Cake\"}"},SkullOwner:{Id:[I;1706944402,742739098,-1787158039,-475029988],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIyNmMxMjJlZGYwZDExZTQ2NWE1OTEyMDkwMDYwYWUyOTI3NGQyM2IxOWZkYjhkNzdiMWQ0YjM3NzNhN2VjZCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Creeper Cake\"}"},SkullOwner:{Id:[I;1119595863,-618445799,-1262308176,1975738517],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODY1NDk1MWJhOTI5MGQ4Yjg0MWZjNDJjNmNjZDI4NjZiZDM0Njk2MTQ1ZTk1NWM0NjY5MTU2MDExY2NjNTkyMiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cookie Stack\"}"},SkullOwner:{Id:[I;-2013434884,1726368701,-2008161991,474717876],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmEzOWJiMjIxZWRmMTM3NjdhODBkNTU2MTJlOGI0NTk3ZjI2Y2NhYjdjOWQ0NWM4MDQwMGQ2Yjg1MDgzYTZkZSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Glazed Donut\"}"},SkullOwner:{Id:[I;-1872784447,-1527624513,-1628937227,-327894540],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmQ1YjFlMDUxYWNkOTE2Njg2ZjcyMmMyMWZmZjc0YTZhZjMyZDQ5NjUyYWQ4NDYyODRmNGFiOTE4OWE3MTAzMyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Chocolate Donut\"}"},SkullOwner:{Id:[I;381932863,1581728100,-1676635144,-1890278685],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2FiMDQ4NDdmMDliM2YyZTExZmM0MTJjMmUyNDFhY2NmOTk2NzU0MzI5MzNiNDcxNjgxMDA1YzQyZTVkMjI4NSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Sweet Roll\"}"},SkullOwner:{Id:[I;-1479131833,404966012,-2089564887,-344422909],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzFkNGI5MjFmZDlmYjZhNDg1MDk3ZmI3ODY4YzZhNzFmYWFlNGE3ZTU1MGI0ZTZlOTc1MzEzZmE5YTkyMjhiIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Waffles and Syrup\"}"},SkullOwner:{Id:[I;708058312,1132285571,-1996686790,356473065],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGVjNmEzN2FhNjIwNzdmNmU2ZTg1YjQyYTA2MjI5OTM2MzZjM2IzNjEzMmRiYzM0MWYxZjEzMDZmNjFjMmYyNiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Blueberry Pie\"}"},SkullOwner:{Id:[I;877192937,584731823,-1120809297,-1141763827],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjQ4MjE3MjVhMjNhMDZiOTJiYTc5MzYzNTFjY2ZhYjQyMjkwNWQ3ODE4OTdjMjZmMGI2MTJhNmRmMmEyMCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cherry Pie\"}"},SkullOwner:{Id:[I;-954177299,1776369703,-1836235771,-2047890674],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDUzYzFlODdlNTM3ZjFhYjI3NzRkZGFmYjgzNDM5YjMzNmY0YTc3N2I0N2FkODJiY2IzMGQ1ZmNiZGY5YmMifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Pumpkin Pie\"}"},SkullOwner:{Id:[I;847074762,825705065,-1104545142,2017912677],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzhhOTcxZGY1MWU5Y2E5YTViOTJlNDVkM2ZhNTQ3ZGQzMTkxODc3OTI5YTQzN2Q1MDE1Mzg5MmU1ODVhIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Stack of Sliced Bread\"}"},SkullOwner:{Id:[I;1604509259,-1595191523,-1503613954,1040963986],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGEyNGRjOWYxNzMzZjAwZTY3NjUwOWEyMjFiOGE2NmE2ZTA1OWU1NTA0NWQwOGE3ZTRmYzA4ZDdkMzEwODc1OCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Sourdough Bread\"}"},SkullOwner:{Id:[I;-1690626914,-951040398,-1209733946,-1524316568],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2RiZWEzODI3MTA3NTczNmU0ZDZhOThiYTRjNzg0YmJlN2MyZDFkNjk3ZmNiMmNmZjhhNzRjZGQ5ZWM4ZCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Ender Cake\"}"},SkullOwner:{Id:[I;1481756671,1838501280,-1389997654,777917816],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmU4MzljY2M2NWRhZjIzYmFiYTRkNWMwMTg0MDIzN2U2MjIzMGViNmM0YTMwNDhkNzVkNjgyNTc3OTEzYmMyNSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Pride Cake\"}"},SkullOwner:{Id:[I;1878945907,1097288375,-1366149984,-1809162542],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzQxZWExYTM5MTI1YWVjNzQyNzEzNmEwYzY4MmVjMzQ2Mzc1MTM2OGZjNjVlNzAwYmJmNDljN2IzNGI3ZTQ0OCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Christmas Pudding\"}"},SkullOwner:{Id:[I;802472944,77221816,-1903856651,565720413],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTBiMzQwNjljOTI4NmVmYWNhNDE2ZmRlODgyMGI1NTk3NTE2MGMyNDBmM2UwZDdkNTZmNWJkYjY3YjQxYmY4NSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Netherite Cake\"}"},SkullOwner:{Id:[I;1864022997,1021855437,-1618765050,-1833247606],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDhlOGU4Y2Y0OGY5YTdhOTliZDJkODliYzQ5M2I3YjNjNWNiZGQ1ZDJiM2M5MGY0YmUxZTQ4Njc1MWMxN2JkYSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Black Forest Cake\"}"},SkullOwner:{Id:[I;-845387960,-222214580,-1975409683,-577053615],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDU0YTg5NWZmZDBjN2VkY2E5ZTRiOWQxMWE2YzlmYWJmNjM0NDhlMDY0ZWFkZGRhOTNhMjhhZTlhMzgyMzU0OSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Rainbow Cake\"}"},SkullOwner:{Id:[I;-274192977,1533561292,-1468687733,296047488],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTYwZmFiYjE4Y2RlYjI3NmJiZjM2OGRkOTcxOTE4YTVkYThiOTdiYjg4NjY4MzcwYWM1YzMxZmZkMGU2NGMxYyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Rainbow Birthday Cake\"}"},SkullOwner:{Id:[I;-276752184,-1422506965,-1196146827,-1307369247],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDU4NDM4N2FhN2ZhYTQwYjdkYzA5ZDcxNWQ3NDllZWJlNTMyNmFlODU2MjMwM2M1ZGY0Y2Y1NTA3MzVkYjU3MiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Red Velvet Cake Slice\"}"},SkullOwner:{Id:[I;2029368725,185877729,-1777497977,296374242],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2RhOTVhZDAyMjY5YzI0NjYzZDdhMzQ3ODllODQzNDJhNjkwNWMwZDgxYzc5MGU2MzEzYjczODcxYmE4NzBiOSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Chocolate Cake Slice\"}"},SkullOwner:{Id:[I;603543925,-147044374,-1966060248,-140807492],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjc3ZGVmZmRiZmFkZDg3ZTM2ZjhhZTg1N2YwMzZkMjkxZGUwODk1NjNlYWIxMjE0MjUyY2M0ZWIxNDA2MWU5NSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cake Shulker\"}"},SkullOwner:{Id:[I;349202410,-2073014804,-1642705560,1164898305],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2Y0ZjMwYjE5NWI2MDE1ZmE2Y2M2NDlmYzNhNWY3ZmNiMDUyMWVjYmQ5YzNlNzBhYmU5Yzg5YWE4ZDE5ZmRmNCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Plate of Jammie Dodgers\"}"},SkullOwner:{Id:[I;-1028713179,-505659114,-2135453167,520961085],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWQwMGRmYjNhNTdjMDY4YTBjYzdiNjI0ZDhkODg1MjA3MDQzNWQyNjM0YzBlNWRhOWNiYmFiNDYxNzRhZjBkZiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Plate of Crumpets\"}"},SkullOwner:{Id:[I;-379221463,509756750,-1594108515,-1000916918],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjU3YzJiNmYyZTdhZTBiOWYwYmUwOTE0YTczNDg5OWU0OWU1NWU3NmJmNDllMGZjNWRmNGRiMzFhYWZjNDI0ZSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Smore (chocolate)\"}"},SkullOwner:{Id:[I;1215424970,-1723120213,-1370077940,776182598],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzQzYzcwNWQ0NGE4N2EwZTc5MmE5MDdhNTMzOTE3N2FkZmNhNWNhYTBmZTcwZjRhOTA4NWViZGY0ZDNjYzZiNSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Smore (cinnamon graham cracker)\"}"},SkullOwner:{Id:[I;-18487992,-1597880911,-1518484864,99455790],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2EyNjEwMjIwMzMyOGE5ZjgyNTJlNGJmMGU2OGExMWM4YTUyMmMwZjE1MjY5ZGNkZjc3NTYxODc0N2FkNWI1MyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Smore (oreo)\"}"},SkullOwner:{Id:[I;2028146824,1321288336,-1990957758,2026638721],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzNiZTU5YWI1OTIyMDE0YTkwNTk5MDAxMzU2NTcwNDNhMjczY2Y5OTBmNmQ5NjQ1Y2RkZWIwODk1MTcwZWI1MSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"German Jelly Donut\"}"},SkullOwner:{Id:[I;-1919245499,-1299692542,-1267485093,2113632079],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzMwMTMzNmU0MjMzNmI2ZjIwZDNkNzY3NGZhOTk5NzEwN2M1Yjk5NDc3MGRjODE3NDBjMDEyZWZkZjVlMmIzNyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Donut\"}"},SkullOwner:{Id:[I;1348632399,-1450423676,-1382510548,1372676864],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTU2YzFhZDk0NTM1MmYyNTRhYzlmMGE5NDY5ZjcyMzc0NmZlOTQ4YTNlYWY5YWFiNDg0NzVhMTE2ZDNkODU0In19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Donut\"}"},SkullOwner:{Id:[I;1895296026,-1954397366,-1853617435,-239873260],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDE5MTJkOTYyYzk0MzVmMWE0NWY4MjFiM2NjOTEyMTkxMDI4NzdiYTcwZDc3YThiYzhmZDdjMjM2MWYyZmY4NSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Brownie\"}"},SkullOwner:{Id:[I;-544579388,-366981193,-1902993862,1725716648],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjUwYzQxYmUwODdlYWNiODJhZjkxNTQ2ZWYzMDRmZjYxYzU1ZWZkNzJhZDU5ODE1YjM4MjM3ZDI5MmYzMDdhMCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cupcake\"}"},SkullOwner:{Id:[I;-836110718,-166244972,-1215181341,1094164222],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTJmNTYzOGMyMTNlYTJhNWE5NGU2NTk4MTY2YmM0N2VlZWI0MGY1ZGY4NGRhNzBjZDkyMzNjMTgxMmRmMTEwIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Muffin\"}"},SkullOwner:{Id:[I;-1865293166,-1272364989,-1561080547,-431501594],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWQyYzRhNmRhNjk4OTc3Yjg1OWI2OTc2OWQ2MzQ0ZmRhZDc0YjUyYWI3NzUyZDc1NWU1N2NmOGE4MmViZGYifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cookie\"}"},SkullOwner:{Id:[I;59219820,516966236,-1167531708,-789743787],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTFmZDk4MWNlMTVhMjk4MGE5NjExNWM4ZDY3MDk5ZjRiY2I0OTFmMmU2Yzc5MDg0N2E3OWMzNjBlNWZjIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Gingerbread House\"}"},SkullOwner:{Id:[I;1184184808,-844216730,-1549460755,-1330316963],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDBmNDg1NTkzNjc3YWFiMjhkYmNhNDViMTAyMmYyMWIxYmM3ODk2YmM5ZmU0NDA2YWJlNGQ2MDcwNTc4MjYifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Muffin\"}"},SkullOwner:{Id:[I;1997984913,1414873822,-1124997733,-893332907],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjIwYWI4ZGVmZjlkYzhkODQ1NzhmOWI0ZDY5YTYzZDVmMzg5NDlhMGUzZTlmMWU3Yzk0NzYxMDRkNmQ3MzZiNSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Flour\"}"},SkullOwner:{Id:[I;-2119300034,-1418771988,-1922321529,1626839157],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWE0MTgxYzFhNGM0NWVmNjExNDA2YzdkZDY4YTRkYzQ4MzEyMTgwODdkYWUxOWE2MmE0ZGVjYjJkY2RkMzVjMCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bag of Sugar\"}"},SkullOwner:{Id:[I;-310521188,1956596675,-1934906518,-104437813],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDdmMzhlYTI4Njk1MmEzMzc4OTVkNTE1NDhmMWIxYzE5NGU5ZGYyMjE4OTg5ZjcyZDhkMzI0ZmI5YTMyOSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bag Of Sugar\"}"},SkullOwner:{Id:[I;218269152,1739148954,-2122940369,1409776583],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTNjZTc2NjAyZDNmZWM3YzAyNzNkYTYwMDA5MDA3YmU0MTQwYWM5ZmFjMDM0MTQ1MGMwNzU3ZTUzZDc1MTU3NyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Basket of Eggs (no handle)\"}"},SkullOwner:{Id:[I;-1092656431,-734705953,-1140304694,-1224542186],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFkYzBkNGVhYjA3MTExYzdlNTMxYmU2N2QzMzA5ZDFjOTYwNTdjMWI0YWViNzdjNGEzYTgxZTkwNGU5MThlZSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Bag of Semolina\"}"},SkullOwner:{Id:[I;1120928665,-2033170402,-1437311155,-371959761],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjAyMzE2MTZlYzYwMzIyY2M1MWUyZTE4NGVmMTg0ZTMzNTNmYTIxYjBhMTE0YjQyNzg0NTc0MDg5NjgxNDE1OCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999}]}}