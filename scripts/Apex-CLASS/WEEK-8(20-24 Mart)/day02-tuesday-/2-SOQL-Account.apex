List<Account>allAccounts = [SELECT Name, Phone, AnnualRevenue FROM Account];
for (Account each : allAccounts) {
    System.debug('Current value : ' + each.Name);
    
}
System.debug('Current value : ' + allAccounts.Size());

//Aşağıdaki kodu .soql de execute yaptık
SELECT Id, Name, AnnualRevenue, Phone  FROM Account