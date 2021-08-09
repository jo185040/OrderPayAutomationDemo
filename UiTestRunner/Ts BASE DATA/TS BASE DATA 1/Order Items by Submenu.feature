Feature: 36 Order Items by Submenu


Scenario: 1 Verify you can order items from Soup & Salad Menu (Server)
# 1 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[0]
	And clicked [Login]
	Then verify absence of [Login]
# 2 Floor Plan select Table 1
	Given screen state {558}
	Then clicked [1]
# 3 Enter Guest Count 1
	Given screen state {025}
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 4 Select Soup & Salad Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~SOUP & SALADS]
# 5 Add Chopped Salad
	Given screen state {013}
	Then clicked "CHOPPED\SALAD"
# 6 Add Caesar Salad
	Given screen state {081}
	Then clicked "CAESAR\SALAD"
	Then clicked [RightModifierButtons~ADD\CHICKEN]
# 7 Add House Salad
	Given screen state {043}
	Then clicked "HOUSE\SALAD"
	Then clicked [RightModifierButtons~RANCH]
	Then clicked [RightModifierButtons~ADD\CHICKEN]
# 8 Add Chicken Caesar Salad
	Given screen state {048}
	Then clicked "CHICKEN\CAESAR"
# 9 Add Soup of the Day
	Given screen state {094}
	Then clicked "SOUP\OF DAY"
	Then clicked [RightModifierButtons~CUP]
# 10 Apply HERE Ordermode
	Given screen state {052}
	Then clicked [HERE]
# 11 Select $ on Payment Screen
	Given screen state {052}
	Then clicked [$]
# 12 Exact Payment
	Given screen state {068}
	Then clicked [Exact]
# 13 Click Close
	Given screen state {069}
	Then clicked [MidButtons~Close]
# 14 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 Verify you can order items from Desserts Menu (Server)
# 1 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[0]
	And clicked [Login]
	Then verify absence of [Login]
# 2 Floor Plan select Table 1
	Given screen state {558}
	Then clicked [1]
# 3 Enter Guest Count 1
	Given screen state {025}
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 4 Select Dessert Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~DESSERT]
# 5 Add Carrot Cake
	Given screen state {070}
	Then clicked "CARROT\CAKE"
# 6 Add Chocolate Cake
	Given screen state {071}
	Then clicked "CHOCOLATE\CAKE"
# 7 Add CheeseCake
	Given screen state {073}
	Then clicked "CHEESECAKE"
# 8 Apply HERE Ordermode
	Given screen state {074}
	Then clicked [HERE]
# 9 Select $ on Payment Screen
	Given screen state {074}
	Then clicked [$]
# 10 Exact Payment
	Given screen state {075}
	Then clicked [Exact]
# 11 Click Close
	Given screen state {076}
	Then clicked [MidButtons~Close]
# 12 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 3 Verify you can order items from Sandwiches Menu (Server)
# 1 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[0]
	And clicked [Login]
	Then verify absence of [Login]
# 2 Floor Plan select Table 1
	Given screen state {558}
	Then clicked [1]
# 3 Enter Guest Count 1
	Given screen state {025}
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 4 Select Sandwiches Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~SANDWICHES]
# 5 Add Buff Chix
	Given screen state {077}
	Then clicked "BUFF CHIX\WRAP"
	Then clicked [RightModifierButtons~FRIES]
# 6 Add Veggie Chix
	Given screen state {078}
	Then clicked "VEGGIE\WRAP"
	Then clicked [RightModifierButtons~FRIES]
# 7 Add Chix SLD Chix
	Given screen state {080}
	Then clicked "CHIX SLD\SAND"
	Then clicked [RightModifierButtons~FRIES]
# 8 Add Ham Sandwich
	Given screen state {082}
	Then clicked "HAM\SANDWICH"
	Then clicked [RightModifierButtons~FRIES]
# 9 Add Cali Chx Sandwich
	Given screen state {083}
	Then clicked "CALI CHIX\WRAP"
	Then clicked [RightModifierButtons~FRIES]
# 10 Apply HERE Ordermode
	Given screen state {084}
	Then clicked [HERE]
# 11 Select $ on Payment Screen
	Given screen state {084}
	Then clicked [$]
# 12 Exact Payment
	Given screen state {085}
	Then clicked [Exact]
# 13 Click Close
	Given screen state {087}
	Then clicked [MidButtons~Close]
# 14 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 4 Verify you can order items from Beer Menu (Server)
# 1 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[0]
	And clicked [Login]
	Then verify absence of [Login]
# 2 Floor Plan select Table 1
	Given screen state {558}
	Then clicked [1]
# 3 Enter Guest Count 1
	Given screen state {025}
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 4 Select Entrees Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	When swiped up on CenterMenuButtons~
	Then clicked [CenterMenuButtons~BEER]
# 5 Add Miller Lite
	Given screen state {088}
	Then clicked "MILLER\LITE"
# 6 Add Blue Moon
	Given screen state {089}
	Then clicked "BLUE\MOON"
# 7 Add Corona
	Given screen state {090}
	Then clicked "CORONA"
# 8 Add High Life
	Given screen state {091}
	Then clicked "HIGH\LIFE"
# 9 Apply HERE Ordermode
	Given screen state {092}
	Then clicked [HERE]
# 10 Select $ on Payment Screen
	Given screen state {092}
	Then clicked [$]
# 11 Exact Payment
	Given screen state {095}
	Then clicked [Exact]
# 12 Click Close
	Given screen state {097}
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]