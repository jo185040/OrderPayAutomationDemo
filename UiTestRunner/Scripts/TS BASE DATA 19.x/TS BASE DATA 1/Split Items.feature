Feature: 40 Split Item


Scenario: 1 Split Item into 2 Items
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add 7Up to default Seat 1
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "7 UP"
#Action: 5 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 6 Open Split Seat screen
			Given screen state: 290
			Then clicked /TopLeftButtons/,[Split Check]
#Action: 7 Select "7Up"
			Given screen state: 319
			Then clicked "7 UP"
#Action: 8 Select Split Item
			Given screen state: 319
			Then clicked [Split Items]
#Action: 9 Select 2 on Entity
			Given screen state: 291
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[OK]
#Action: 10 Press Close Button
			Given screen state: 320
			Then clicked /BottomCenterButtons/,[Close]
#Action: 11 Select $ on Payment Screen
			Given screen state: 292
			Then clicked [$]
#Action: 12 Exact Payment
			Given screen state: 293
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 295
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Split Item into 3 Items
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add 7Up to default Seat 1
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "7 UP"
#Action: 5 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 6 Open Split Seat screen
			Given screen state: 290
			Then clicked /TopLeftButtons/,[Split Check]
#Action: 7 Select "7Up"
			Given screen state: 319
			Then clicked "7 UP"
#Action: 8 Select Split Item
			Given screen state: 319
			Then clicked [Split Items]
#Action: 9 Select 2 on Entity
			Given screen state: 291
			Then clicked /DialogSeparator/,[3]
			Then clicked /DialogSeparator/,[OK]
#Action: 10 Press Close Button
			Given screen state: 312
			Then clicked /BottomCenterButtons/,[Close]
#Action: 11 Select $ on Payment Screen
			Given screen state: 299
			Then clicked [$]
#Action: 12 Exact Payment
			Given screen state: 300
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 301
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 3 Split Item into 4 Items
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add 7Up to default Seat 1
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "7 UP"
#Action: 5 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 6 Open Split Seat screen
			Given screen state: 290
			Then clicked /TopLeftButtons/,[Split Check]
#Action: 7 Select "7Up"
			Given screen state: 319
			Then clicked "7 UP"
#Action: 8 Select Split Item
			Given screen state: 319
			Then clicked [Split Items]
#Action: 9 Select 2 on Entity
			Given screen state: 291
			Then clicked /DialogSeparator/,[4]
			Then clicked /DialogSeparator/,[OK]
#Action: 10 Press Close Button
			Given screen state: 321
			Then clicked /BottomCenterButtons/,[Close]
#Action: 11 Select $ on Payment Screen
			Given screen state: 303
			Then clicked [$]
#Action: 12 Exact Payment
			Given screen state: 304
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 305
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 4 Split Item into 20 Items
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add 7Up to default Seat 1
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "7 UP"
#Action: 5 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 6 Open Split Seat screen
			Given screen state: 290
			Then clicked /TopLeftButtons/,[Split Check]
#Action: 7 Select "7Up"
			Given screen state: 319
			Then clicked "7 UP"
#Action: 8 Select Split Item
			Given screen state: 319
			Then clicked [Split Items]
#Action: 9 Select 2 on Entity
			Given screen state: 291
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 10 Press Close Button
			Given screen state: 306
			Then clicked /BottomCenterButtons/,[Close]
#Action: 11 Select $ on Payment Screen
			Given screen state: 308
			Then clicked [$]
#Action: 12 Exact Payment
			Given screen state: 309
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 311
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
