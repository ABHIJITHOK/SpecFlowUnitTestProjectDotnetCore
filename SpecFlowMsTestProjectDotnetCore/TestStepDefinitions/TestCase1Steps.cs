using Microsoft.VisualStudio.TestTools.UnitTesting;
using NLog;
using System;
using TechTalk.SpecFlow;

namespace SpecFlowMsTestProjectDotnetCore.TestStepDefinitions
{
    [Binding]
    public class TestCase1Steps
    {
        Logger Logger = LogManager.GetLogger("SampleUnitTestProjectLogger");

        [Given(@"I have entered (.*) into the calculator")]
        public void GivenIHaveEnteredIntoTheCalculator(int p0)
        {
            Assert.AreEqual(1, 1);
            Logger.Debug("Abhy:");
        }
        
        [Given(@"I have also entered (.*) into the calculator")]
        public void GivenIHaveAlsoEnteredIntoTheCalculator(int p0)
        {
            Assert.AreEqual(1, 1);
        }
        
        [When(@"I press add")]
        public void WhenIPressAdd()
        {
            Assert.AreEqual(1, 1);
        }
        
        [Then(@"the result should be (.*) on the screen")]
        public void ThenTheResultShouldBeOnTheScreen(int p0)
        {
            Assert.AreEqual(1, 1);
        }
    }
}
