Feature: 2 Add Item


Scenario: 1 Add Item
#Action: 1 Login as manager 200
			#TODO ALOHAP-12345 this is broken
			Then verify presence of /LoginForm/,"Live Mode","AM USER 100 - 102\MANAGER 200 - 201\CASHIER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS"
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Add COKE
			Given screen state: 267
			Then clicked "COKE"
#Action: 3 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 4 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 5 Exact Payment
			Then verify presence of /Tenders/,"Balance Due","$2.00",/Comps/,"Sub Total","2.00"
			Then clicked [Exact]
#Action: 6 Close Check 1
			Then verify presence of /Tenders/,"CASH","2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 7 Exact Payment
			Then verify presence of /Tenders/,"Balance Due","$2.00",/Comps/,"Sub Total","2.00"
			Then clicked [Exact]
#Action: 8 Close Check 2
			Then verify presence of /Tenders/,"CASH","2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 9 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
