Feature: AppiumTest

@smoke
Scenario: Perform simple Appium Test
	Given Allow Permissions
	Then Dismiss Warning Messages
	Then Login with Manager 
	Then Open Table
	Then Order Drink
	Then Apply Dine-In Order Mode
	Then Go to Payments Screen
	Then Apply Cash Payment
	Then Close Check
	Then Exit 
