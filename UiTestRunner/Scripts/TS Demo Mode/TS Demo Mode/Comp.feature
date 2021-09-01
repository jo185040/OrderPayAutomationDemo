Feature: 6 Comp


#TODO ALOHAP-32985 support modifiers needs to be resolved first.
Scenario: 1 Manager Comp
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
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[ENTREES]
#Action: 5 Order BBQ Ribs
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "BBQ\RIBS"
#Action: 6 Select Full Rack on Ribs Submenu
			Given screen state: 128
			Then clicked [FULL RACK]
#Action: 7 Select Baked Potato on Starch Submenu
			Given screen state: 129
			Then clicked [Baked Potato]
#Action: 8 On Soup Mod, select Cup
			Given screen state: 130
			Then clicked [CUP]
#Action: 9 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","41.94"
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","41.94"
			Then clicked [$]
#Action: 11 Goto Promo Screen
			Then verify presence of /Comps/,"Sub Total","41.94",/Taxes/,"Tax","2.56","Total","44.50",/Tenders/,"Balance Due","$44.50"
			Then clicked /TopLeftButtons/,[Comp]
#Action: 12 Select Manager Comp
			Then verify presence of /MidLeftButtons/,[MGR COMP],[OPEN $$],[EMP MEAL]
			Then clicked /MidLeftButtons/,[MGR COMP]
#Action: 13 Select BBQ Ribs on Comp Screen
			Then verify presence of /ItemSelectionDialog/,"Select items to comp",/Items/,"Seat 1",^BBQ RIBS\ FULL RACK\ Baked Potato\ CUP^
			Then clicked /Items/,^BBQ RIBS\ FULL RACK\ Baked Potato\ CUP^
#Action: 14 Select OK
			Then verify presence of /ItemSelectionDialog/,"Select items to comp",/Items/,"Seat 1",^BBQ RIBS\ FULL RACK\ Baked Potato\ CUP^
			Then clicked /Items/,[OK]
#Action: 15 Select OK
			Then verify presence of /MidLeftButtons/,[MGR COMP],[OPEN $$],[EMP MEAL]
			Then clicked /DialogSeparator/,[t],[e],[s],[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 16 Click Close
			Then verify presence of /Comps/,"MGR COMP","-41.94","Sub Total","0.00",/Taxes/,"Tax","0.00","Total","0.00",/Tenders/,"Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 17 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
