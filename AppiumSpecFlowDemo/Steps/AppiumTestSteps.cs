using OpenQA.Selenium.Appium;
using OpenQA.Selenium.Appium.Android;
using System.Threading;
using TechTalk.SpecFlow;

namespace AppiumSpecFlowDemo.Steps
{
    [Binding]
    public sealed class AppiumTestSteps
    {

        // For additional details on SpecFlow step definitions see https://go.specflow.org/doc-stepdef

        private readonly ScenarioContext _scenarioContext;

        public AppiumTestSteps(ScenarioContext scenarioContext)
        {
            _scenarioContext = scenarioContext;
        }

        [Given(@"Dismiss Error Message")]
        public void GivenDismissErrorMessage()
        {
            Thread.Sleep(10000);
            _scenarioContext.Get<AndroidDriver<AppiumWebElement>>().FindElementById("com.android.permissioncontroller:id/permission_allow_button").Click();
            _scenarioContext.Get<AndroidDriver<AppiumWebElement>>().FindElementById("com.android.permissioncontroller:id/permission_allow_button").Click();
            Thread.Sleep(2000);
        }

        [Given(@"Pair Device")]
        public void GivenPairDevice()
        {
            _scenarioContext.Get<AndroidDriver<AppiumWebElement>>().FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.Button").Click();
            Thread.Sleep(20000);
        }

        [Then(@"Dismiss Warning Messages")]
        public void ThenDismissWarningMessages()
        {
            _scenarioContext.Get<AndroidDriver<AppiumWebElement>>().FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.widget.Button[2]").Click();
            _scenarioContext.Get<AndroidDriver<AppiumWebElement>>().FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.widget.Button[2]").Click();

        }


        [Then(@"Login with Manager")]
        public void ThenLoginWithManager()
        {
            _scenarioContext.Get<AndroidDriver<AppiumWebElement>>().FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.Button[2]").Click();
            _scenarioContext.Get<AndroidDriver<AppiumWebElement>>().FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.Button[11]").Click();
            _scenarioContext.Get<AndroidDriver<AppiumWebElement>>().FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.Button[11]").Click();
            _scenarioContext.Get<AndroidDriver<AppiumWebElement>>().FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.Button[12]").Click();
            Thread.Sleep(10000);
        }

        [Then(@"Open Table")]
        public void ThenOpenTable()
        {
            _scenarioContext.Get<AndroidDriver<AppiumWebElement>>().FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.Button[10]").Click();
            Thread.Sleep(2000);
            _scenarioContext.Get<AndroidDriver<AppiumWebElement>>().FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.Button[12]").Click();
            Thread.Sleep(5000);
        }

        [Then(@"Order Drink")]
        public void ThenOrderDrink()
        {
            _scenarioContext.Get<AndroidDriver<AppiumWebElement>>().FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView[2]/android.view.ViewGroup/android.view.ViewGroup/android.widget.Button[2]").Click();
            Thread.Sleep(2000);
            _scenarioContext.Get<AndroidDriver<AppiumWebElement>>().FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[4]/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.TextView").Click();
            Thread.Sleep(5000);
        }

        [Then(@"Apply Dine-In Order Mode")]
        public void ThenApplyDine_InOrderMode()
        {
            _scenarioContext.Get<AndroidDriver<AppiumWebElement>>().FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView[1]/android.widget.HorizontalScrollView/android.view.ViewGroup/android.view.ViewGroup/android.widget.Button[1]").Click();
            Thread.Sleep(2000);
        }

        [Then(@"Go to Payments Screen")]
        public void ThenGoToPaymentsScreen()
        {
            _scenarioContext.Get<AndroidDriver<AppiumWebElement>>().FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView[3]/android.widget.HorizontalScrollView/android.view.ViewGroup/android.view.ViewGroup/android.widget.Button[1]").Click();
            Thread.Sleep(2000);
        }

        [Then(@"Apply Cash Payment")]
        public void ThenApplyCashPayment()
        {
            _scenarioContext.Get<AndroidDriver<AppiumWebElement>>().FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.view.ViewGroup[4]/android.widget.Button").Click();
            Thread.Sleep(2000);
        }

        [Then(@"Close Check")]
        public void ThenCloseCheck()
        {
            _scenarioContext.Get<AndroidDriver<AppiumWebElement>>().FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[4]/android.widget.Button").Click();
            Thread.Sleep(2000);
        }

        [Then(@"Exit")]
        public void ThenExit()
        {
            _scenarioContext.Get<AndroidDriver<AppiumWebElement>>().FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.Button[7]").Click();
            Thread.Sleep(2000);
        }

    }
}
