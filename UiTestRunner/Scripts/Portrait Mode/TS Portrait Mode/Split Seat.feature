Feature: 28 Split Seat


Scenario: 1 Split Seat
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 511
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add COKE,7Up,CORONA to default Seat 1
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE","7 UP","CORONA"
#Action: 5 Open Split Seat screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","7 UP","CORONA"
			Then clicked /TopLeftButtons/,[Split Seat]
#Action: 6 Select "7Up"
			Given screen state: 101
			Then clicked "7 UP"
#Action: 7 Click 'Add' to move 7Up to new Seat 2
			Given screen state: 101
			Then clicked [Add]
#Action: 8 Move item to seat 2
			Given screen state: 262
			Then clicked /CheckOrSeat.3/
#Action: 9 Close Split Seat Screen
			Given screen state: 245
			Then clicked [Close]
#Action: 10 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 12 Exact Payment
			Then verify presence of /Taxes/,"Tax","0.00","Total","7.00",/Tenders/,"Balance Due","$7.00",
			Then clicked [Exact]
#Action: 13 Click Close
			Then verify presence of /Tenders/,"CASH","7.00","Change","$0.00",
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 2 Select Multiple Items on Split Check
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 511
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 5 Add 7Up
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "7 UP"
#Action: 6 Add Iced Coffee
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "ICED\COFFEE"
#Action: 7 Add Check
			Given screen state: 102
			Then clicked /TopLeftButtons/,[Split Seat]
#Action: 8 Select "7Up"
			Given screen state: 035
			Then clicked "7 UP"
			Then clicked "COKE"
#Action: 9 Add Check
			Given screen state: 035
			Then clicked [Add]
#Action: 10 Move Items to Seat 2
			Given screen state: 263
			Then clicked /CheckOrSeat.3/
#Action: 11 Click Close Button
			Given screen state: 008
			Then clicked [Close]
#Action: 12 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 13 Select $ on Payment Screen
			Given screen state: 098
			Then clicked [$]
#Action: 14 Exact Payment
			Given screen state: 099
			Then clicked [Exact]
#Action: 15 Click Close
			Given screen state: 100
			Then clicked /MidButtons/,[Close]
#Action: 16 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]
