@isTest
private class ScheduledCaseCleanupTest {


    @TestSetup
    static void createTestData(){

        // Arrange : prepare data created 1 year before Today
        List<Case> oldCases = new List<Case>(); 
        for(Integer i=1; i<=10 ;i++) {
            oldCases.add( new Case(Subject='Test '+i) );
        }
        insert oldCases; 

        for (Case each : oldCases) {
            Test.setCreatedDate(each.Id, DateTime.now().addDays(-366) ); 
        }

    }

    @isTest
    static void testScheduledBatchRun(){

        //Act 
        Test.startTest() ; 
        Schedulable stc = new ScheduledTaskCleanUp();
        System.schedule('Task cleanup', '0 0 0 15 3 ? 2042', stc ) ; 
        Test.stopTest(); 

        // Assert : check any data created 1 year before Today is deleted by checking list size
                  // you may also pass the IDs of the records to the query 
        List<Case> oneYearOldCasesAfter =[SELECT Id,Subject FROM Case 
                                     WHERE CreatedDate < LAST_N_DAYS:365];

        Assert.areEqual(0,[SELECT COUNT() FROM Case WHERE CreatedDate < LAST_N_DAYS:365] );

    }



}