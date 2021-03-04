using OpenQA.Selenium;
using OpenQA.Selenium.Appium;
using OpenQA.Selenium.Appium.Android;
using OpenQA.Selenium.Support.UI;
using System;


namespace AppiumSpecFlowDemo.Tools
{
    public static class WebDriverExtensions
    {
        public static AppiumWebElement Wait(this AndroidDriver<AppiumWebElement> driver, By by, TimeSpan timeOut)
        {
            if (timeOut.Ticks > 0)
            {
                var wait = new WebDriverWait(driver, timeOut);
                //wait.IgnoreExceptionTypes(typeof(System.NullReferenceException));
                var result = wait.Until(drv => drv.FindElement(by));

                return (AppiumWebElement)result;
            }
            return driver.FindElement(by);
        }
    }
}
