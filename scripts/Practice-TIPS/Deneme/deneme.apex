List<Account> accList = [Select id, name, industry from Account where industry != null limit 2];

String jsonstr1=json.serialize(accList);

System.debug(jsonstr1);

List<Account> acList = (List<Account>) JSON.deserialize(jsonstr1, List<Account>.class);

System.debug(acList);