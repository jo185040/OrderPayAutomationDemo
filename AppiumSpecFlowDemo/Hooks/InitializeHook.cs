using AppiumSpecFlowDemo.Drivers;
using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Text;
using TechTalk.SpecFlow;

namespace AppiumSpecFlowDemo.Hooks
{

    [Binding]
    class InitializeHook
    {


        private readonly ScenarioContext _scenarioContext;

        public InitializeHook(ScenarioContext scenarioContext)
        {
            _scenarioContext = scenarioContext;
        }

        [BeforeScenario]
        public void Initialize()
        {
            AppiumDriver appiumDriver = new AppiumDriver();
            //context injection sets the type 
            try
            {
                var androidDriver = appiumDriver.InitializeAppium(true);
                _scenarioContext.Set(androidDriver);
            }
            catch (Exception ex)
            {
                Assert.Fail("BeforeScenario InitializeAppium error: " + ex.Message);
            }
            
        }
    }
}
