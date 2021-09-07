Feature: 36 Order Items by Submenu


Scenario: 1 Verify you can order items from Soup & Salad Menu (Server)
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 558
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Soup & Salad Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[SOUP & SALADS]
#Action: 5 Add Chopped Salad
			Given screen state: 115
			Then clicked "CHOPPED\SALAD"
#Action: 6 Add Caesar Salad
			Given screen state: 081
			Then clicked "CAESAR\SALAD"
			Then clicked /RightModifierButtons/,[ADD\CHICKEN]
#Action: 7 Add House Salad
			Given screen state: 043
			Then clicked "HOUSE\SALAD"
			Then clicked /RightModifierButtons/,[RANCH]
			Then clicked /RightModifierButtons/,[ADD\CHICKEN]
#Action: 8 Add Chicken Caesar Salad
			Given screen state: 048
			Then clicked "CHICKEN\CAESAR"
#Action: 9 Add Soup of the Day
			Given screen state: 094
			Then clicked "SOUP\OF DAY"
			Then clicked /RightModifierButtons/,[CUP]
#Action: 10 Apply HERE Ordermode
			Given screen state: 052
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Given screen state: 052
			Then clicked [$]
#Action: 12 Exact Payment
			Given screen state: 068
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 069
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Verify you can order items from Desserts Menu (Server)
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 558
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Dessert Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[DESSERT]
#Action: 5 Add Carrot Cake
			Given screen state: 070
			Then clicked "CARROT\CAKE"
#Action: 6 Add Chocolate Cake
			Given screen state: 071
			Then clicked "CHOCOLATE\CAKE"
#Action: 7 Add CheeseCake
			Given screen state: 073
			Then clicked "CHEESECAKE"
#Action: 8 Apply HERE Ordermode
			Given screen state: 074
			Then clicked [HERE]
#Action: 9 Select $ on Payment Screen
			Given screen state: 074
			Then clicked [$]
#Action: 10 Exact Payment
			Given screen state: 075
			Then clicked [Exact]
#Action: 11 Click Close
			Given screen state: 076
			Then clicked /MidButtons/,[Close]
#Action: 12 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 3 Verify you can order items from Sandwiches Menu (Server)
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 558
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Sandwiches Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[SANDWICHES]
#Action: 5 Add Buff Chix
			Given screen state: 077
			Then clicked "BUFF CHIX\WRAP"
			Then clicked /RightModifierButtons/,[FRIES]
#Action: 6 Add Veggie Chix
			Given screen state: 078
			Then clicked "VEGGIE\WRAP"
			Then clicked /RightModifierButtons/,[FRIES]
#Action: 7 Add Chix SLD Chix
			Given screen state: 080
			Then clicked "CHIX SLD\SAND"
			Then clicked /RightModifierButtons/,[FRIES]
#Action: 8 Add Ham Sandwich
			Given screen state: 082
			Then clicked "HAM\SANDWICH"
			Then clicked /RightModifierButtons/,[FRIES]
#Action: 9 Add Cali Chx Sandwich
			Given screen state: 083
			Then clicked "CALI CHIX\WRAP"
			Then clicked /RightModifierButtons/,[FRIES]
#Action: 10 Apply HERE Ordermode
			Given screen state: 084
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Given screen state: 084
			Then clicked [$]
#Action: 12 Exact Payment
			Given screen state: 285
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 087
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 4 Verify you can order items from Beer Menu (Server)
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 558
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[BEER]
#Action: 5 Add Miller Lite
			Given screen state: 088
			Then clicked "MILLER\LITE"
#Action: 6 Add Blue Moon
			Given screen state: 089
			Then clicked "BLUE\MOON"
#Action: 7 Add Corona
			Given screen state: 090
			Then clicked "CORONA"
#Action: 8 Add High Life
			Given screen state: 091
			Then clicked "HIGH\LIFE"
#Action: 9 Apply HERE Ordermode
			Given screen state: 092
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 092
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 095
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 097
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
