Account a1 = AccountController.getAccountByName('Skywalker Inc'); 
System.debug('a1 value is : ' + a1);


List<Account> accLstWithRevenue = AccountController.getAccountWithAnnualRevenue(); 
System.debug('accLstWithRevenue value is : ' + accLstWithRevenue);



System.debug('AccountController.getMaxRevenue() value is : ' 
                    + AccountController.getMaxRevenue());