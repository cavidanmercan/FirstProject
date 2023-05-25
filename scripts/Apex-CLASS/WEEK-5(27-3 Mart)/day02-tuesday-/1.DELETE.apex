// Clean up all the Opportunity Records created Today

delete [SELECT Id from Lead Where CreatedDate = TODAY] ; 