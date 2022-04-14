Feature: 38 Printer


Scenario: 1 Select Printer
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
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Printer
			Given screen state: 318
			Then clicked /BottomButtons/,[Select\Printer]
#Action: 5 Select Bixlon Printer
			Then verify presence of /Dialog/,"Select default printer",^Bixolon^,^Bixlon Kitchen^,[Cancel],[OK]
			Then clicked /Dialog/,^Bixlon Kitchen^
			Then clicked /Dialog/,[OK]
#Action: 6 Select Printer
			Given screen state: 318
			Then clicked /BottomButtons/,[Select\Printer]
#Action: 7 Select Bixlon Printer
			Then verify presence of /Dialog/,"Select default printer",^Bixolon^,^Bixlon Kitchen^,[Cancel],[OK]
			Then clicked /Dialog/,^Bixolon^
			Then clicked /Dialog/,[OK]
#Action: 8 Exit
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TopLeftButtons/,[Done]
