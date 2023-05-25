Scenario 1
Requirement: While user creating an eachount, if user provides Billing address but not Shipping address, write a logic populate Shipping address with Billing address.
Trigger has to be written on
Which object: eachount
What operation: Insert
Which event: Before
    
        trigger AccountTrigger on Account (before insert) {
        
    for(Account each : Trigger.new){
        if(each.ShippingCity==null)
        each.ShippingCity = each.BillingCity;
        if(each.ShippingState==null)
        each.ShippingState = each.BillingState;
        if(each.ShippingStreet==null)
        each.ShippingStreet = each.BillingStreet;
        if(each.ShippingCountry==null)
        each.ShippingCountry = each.BillingCountry;
        if(each.ShippingPostalCode==null)
        each.ShippingPostalCode = each.BillingPostalCode;
    }
}


Scenario 2
Requirement: While user creating an account, if Annual Revenue provided by user is less than 1000, than write a logic to throw an error to user .
Trigger has to be written on
Which object: Account
What operation: Insert
Which event: Before


trigger AccountTrigger on Account (before insert) {
    for(Account each : Trigger.new){
        if (each.AnnualRevenue < 1000)
            each.addError ('AnnualRevenue can\'t be less than 1000');
        }
}



Scenario 3
Requirement: When user created an account, write a logic to create contact with same name and associate account and contact.
Trigger has to be written on
Which object: Account
What operation: Insert
Which event: After

trigger AccountTrigger on Account (after insert) {
   
        List<Contact> conList = new List<Contact>();
        
        for(Account each : Trigger.new){
            Contact con = new Contact();
            con.LastName = each.Name; 
            con.AccountId = each.Id;
            conList.add(con);
        }
        
        insert conList;
       
    }
    







