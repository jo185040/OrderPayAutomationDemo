Feature: 1 Clockin Employees


Scenario: 1 Login as manager 200 to Floor Plan
#Action: 1 Login as manager 200
			Then verify presence of /LoginForm/,"Live Mode","AM USER 100 - 102\MANAGER 200 - 201\CASHIER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS"
			When clicked [2],[0],[0]
			And clicked [Login]
#Action: 2 Clockin as manager 200
			Then verify presence of "MANAGER", [Clock-IN], [EXIT], "JEFFREY OYENEYE"
			When clicked [Clock-IN]
#Action: 3 Exit FloorPlan
			Given screen state: 267
			When clicked [EXIT]

Scenario: 2 Login as server 100 to Floor Plan
#Action: 1 Login as manager 100
			Then verify presence of /LoginForm/,"Live Mode","AM USER 100 - 102\MANAGER 200 - 201\CASHIER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS"
			When clicked [1],[0],[0]
			And clicked [Login]
#Action: 2 Clockin as manager 100
			Then verify presence of /EmployeeData/,"LEBRON JAMES",/JobCodeData/,"AM USER",/BottomButtons/,[Clock-IN],[EXIT]
			When clicked [Clock-IN]
#Action: 3 Exit FloorPlan
			Given screen state: 267
			When clicked [EXIT]

Scenario: 3 Invalid Emp
#Action: 1 Login with Invalid Emp 208
			Then verify presence of /LoginForm/,"Live Mode","AM USER 100 - 102\MANAGER 200 - 201\CASHIER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS"
			When clicked [2],[0],[8]
			And clicked [Login]
#Action: 2 Clockin as manager 201
			Then verify presence of /LoginForm/,"Live Mode","AM USER 100 - 102\MANAGER 200 - 201\CASHIER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS",/MessageDialog/,"Error",/DialogSeparator/,"Invalid employee number. Try again.",[X],[OK]
			When clicked /DialogSeparator/,[OK]
