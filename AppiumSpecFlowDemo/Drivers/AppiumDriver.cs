using OpenQA.Selenium.Appium;
using OpenQA.Selenium.Appium.Android;
using OpenQA.Selenium.Appium.Enums;
using OpenQA.Selenium.Appium.Service;
using System;
using System.Collections.Generic;
using System.Text;

namespace AppiumSpecFlowDemo.Drivers
{
    class AppiumDriver
    {
        public AppiumDriver<AppiumWebElement> Driver { get; set; }

        public AndroidDriver<AppiumWebElement> InitializeAppium(bool startAsInstalled)
        {
            var driverOptions = new AppiumOptions();
            driverOptions.AddAdditionalCapability(MobileCapabilityType.PlatformName, "Android");
            driverOptions.AddAdditionalCapability(MobileCapabilityType.DeviceName, "emulator-5554");
            driverOptions.AddAdditionalCapability("appPackage", "com.ncr.AlohaMobile");
            driverOptions.AddAdditionalCapability("appActivity", "crc64d9654bb2b0029034.SplashActivity");

            if (startAsInstalled)
            {
                driverOptions.AddAdditionalCapability("noReset", startAsInstalled.ToString());
            }

            var drv = new AndroidDriver<AppiumWebElement>(new Uri("http://localhost:4723/wd/hub"), driverOptions);

            return drv;

        }

    }
}
