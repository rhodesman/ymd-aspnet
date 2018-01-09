using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

using prismic;
using prismic.extensions;
using PrismicIOAPI;

using YPortal.Web.Api_Services;

namespace PrismicIOAPITest
{
    [TestClass]
    public class SchedulerUnitTest
    {
        [TestMethod]
        public void PrismicScheduleTest()
        {

            try
            {
                var schedulerController = new SchedulerController();
                var currentDate = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day);


                var scheduledata = schedulerController.Get(currentDate.ToShortDateString());
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.ToString());
            }

        }
    }
}
