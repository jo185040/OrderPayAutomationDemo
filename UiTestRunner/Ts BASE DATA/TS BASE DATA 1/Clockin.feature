Feature: 1 Clockin Employees

@ Clockin

Scenario: 1 Login as manager 201 to Floor Plan
# 1 Optionally Dismiss "Payment Service" warning
	Given optional state "Payment Service",[OK]
	When clicked [OK]
	Then verify absence of "Payment Service"
# 2 Login as manager 201
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[1]
	And clicked [Login]
# 3 Clockin as manager 201
	Given screen state "MANAGER", [Clock-IN], [EXIT], "MIGUEL SAAVEDRA"
	When clicked [Clock-IN]
# 4 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 Login as manager 200 to Floor Plan
# 1 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[0]
	And clicked [Login]
# 2 Clockin as manager 200
	Given screen state "MANAGER", [Clock-IN], [EXIT], "JEFFREY OYENEYE"
	When clicked [Clock-IN]
# 3 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 3 Login as server 100 to Floor Plan
# 1 Login as manager 100
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [1],[0],[0]
	And clicked [Login]
# 2 Clockin as manager 100
	Given screen state "SERVER", [Clock-IN], [EXIT], "LEBRON JAMES"
	When clicked [Clock-IN]
# 3 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 4 Login as OrderTaker 203 to Floor Plan
# 1 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[3]
	And clicked [Login]
# 2 Clockin as manager 200
	Given screen state "MANAGER", "SERVER", "BAR", "KITCHEN", "ORDERTAKER", [Clock-IN], [EXIT], "JIRKA MALINA"
	When clicked "ORDERTAKER"
	When clicked [Clock-IN]
# 3 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 5 Login as bartender 300 to Floor Plan
# 1 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [3],[0],[0]
	And clicked [Login]
# 2 Clockin as manager 200
	Given screen state "BAR", [Clock-IN], [EXIT], "SAMEUL L. JACKSON"
	When clicked [Clock-IN]
# 3 Exit FloorPlan
	Given screen state {053}
	When clicked [TopLeftButtons~Done]

Scenario: 6 Login as TRAINING 150 to Floor Plan
# 1 Login as manager 100
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [1],[5],[0]
	And clicked [Login]
# 2 Clockin as manager 100
	Given screen state "TRAINING", [Clock-IN], [EXIT], "VLADIMIR PALOCKO"
	When clicked [Clock-IN]
# 3 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 7 Invalid Emp
# 1 Optionally Dismiss "Payment Service" warning
	Given optional state "Payment Service",[OK]
	When clicked [OK]
	Then verify absence of "Payment Service"
# 2 Login with Invalid Emp 208
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[8]
	And clicked [Login]
# 3 Clockin as manager 201
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*], "DialogSeparator~Invalid employee number. Try again."
	When clicked [DialogSeparator~OK]
