Feature: 6 Comp


Scenario: 1 Manager Comp
#Action: 1 Login as manager 200
			Given screen state: 510
			When clicked [2],[0],[0]
			And clicked [OK]
#Action: 2 Floor Plan select Table 1
			Given screen state: 518
			Then clicked [btnAddTable]
#Action: 3 Free Tables Screen Select 1
			Given screen state: 514
			Then clicked "1"
#Action: 4 Enter Guest Count 1
			Given screen state: 535
			And clicked [OK]
#Action: 5 Select Menu
			Given screen state: 536
			Then clicked [Menu]
#Action: 6 Select Entrees Menu
			Given screen state: 537
			Then clicked "ENTREES"
#Action: 7 Order BBQ Ribs
			Given screen state: 601
			Then clicked "BBQ\RIBS"
#Action: 8 Select Full Rack on Ribs Submenu
			Given screen state: 128
			Then clicked "FULL RACK"
#Action: 9 Select Baked Potato on Starch Submenu
			Given screen state: 602
			Then clicked "Baked Potato"
#Action: 10 On Soup Mod, select Cup
			Given screen state: 130
			Then clicked "CUP"
#Action: 11 Go Back to Guest Check
			Given screen state: 603
			Then clicked /OK/
#Action: 12 Click Send on OrderMode
			Given screen state: 604
			Then clicked /BottomButtons/,[Send]
#Action: 13 Click "Here" on OrderMode
			Given screen state: 605
			Then clicked /MoreOptionsPopup/,"HERE"
#Action: 14 Select Pay on Payment Screen
			Given screen state: 604
			Then clicked /BottomButtons/,[Pay]
#Action: 15 Goto Promo Screen
			Given screen state: 606
			Then clicked [Comp]
#Action: 16 Select Manager Comp
			Given screen state: 607
			Then clicked "MGR COMP"
#Action: 17 Select BBQ Ribs on Comp Screen
			Given screen state: 608
			Then clicked /Items/,^BBQ RIBS\ FULL RACK\ Baked Potato\ CUP^
#Action: 18 Select OK
			Given screen state: 609
			Then clicked /Items/,[OK]
#Action: 19 Select OK
			Given screen state: 610
			Then clicked /DialogSeparator/,[t],[e],[s],[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 20 Click Close
			Then verify presence of /Comps/,"MGR COMP","-41.94","Sub Total","0.00",/Taxes/,"Tax","0.00","Total","0.00",/Tenders/,"Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 21 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]
