public class EBUsers {

    //https://api.pathtosalesforce.com/users.php

    //GET method
    public static void getUsers() {

        Http http = new Http();
        HttpRequest request = new HttpRequest();
            request.setEndpoint('https://api.pathtosalesforce.com/users.php');
            request.setMethod('GET');
        HttpResponse response = http.send(request);

        List<Contact> conList = new List<Contact>();
        List<PTSUsersResponse> userList = PTSUsersResponse.parse(response.getBody()); 
        
        for(PTSUsersResponse PTSUser : userList){
          Contact con= new Contact();
            con.FirstName = PTSUser.firstName;
            con.LastName = PTSUser.lastName;
            con.Email = PTSUser.email;
            con.Phone = PTSUser.phone;
            conList.add(con);       
        }
        insert conlist;                                   
}


    //POST method
    public static void AddUser(){
      
      Http http = new Http();
      HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.pathtosalesforce.com/users.php');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');  
        request.setBody('[{"firstName": "Jessica", "lastName":"Young", "email":"jessica@gmail.com", "phone": "123456789", "gender": "Female"}]');
      HttpResponse response = http.send(request);
      //System.debug(response.getStatusCode());
                                      
}


    //POST method
    public static void AddUserfromRequestClass(){
            
        PTSUsersRequest req =new PTSUsersRequest();
            req.firstName='Jon';
            req.lastName='Snow';
            req.email='jonsnow@gmail.com';
            req.phone='12345';
                
          
        Http http = new Http();
        HttpRequest request = new HttpRequest();
            request.setEndpoint('https://api.pathtosalesforce.com/users.php');
            request.setMethod('POST');
            request.setHeader('Content-Type', 'application/json;charset=UTF-8');  
            request.setBody('['+JSON.serialize(req)+']');
        HttpResponse response = http.send(request);
}


    //POST method
    public static void AddUserfromContacs(String conId){
          
        Contact con = [SELECT Id, FirstName, LastName, Email, Phone FROM Contact WHERE Id=: conId];
            
        PTSUsersRequest req =new PTSUsersRequest();
            req.firstName=con.FirstName; 
            req.lastName=con.LastName;
            req.email=con.Email;
            req.phone=con.Phone;
      
        Http http = new Http();
        HttpRequest request = new HttpRequest();
            request.setEndpoint('https://api.pathtosalesforce.com/users.php');
            request.setMethod('POST');
		    request.setHeader('Content-Type', 'application/json;charset=UTF-8');  
            request.setBody('['+JSON.serialize(req)+']');
        HttpResponse response = http.send(request);
}

    //POST method
    public static void AddUsersfromContacs(){
           
        List<Contact> conList = [SELECT Id, FirstName, LastName, Email, Phone FROM Contact];
        List<PTSUsersRequest> reqList = new List<PTSUsersRequest>();
          for(Contact con: conList){
              PTSUsersRequest req =new PTSUsersRequest();
                req.firstName=con.FirstName;
                req.lastName=con.LastName;
                req.email=con.Email;
                req.phone=con.Phone; 
                reqList.add(req);                
            }
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
            request.setEndpoint('https://api.pathtosalesforce.com/users.php');
            request.setMethod('POST');
		    request.setHeader('Content-Type', 'application/json;charset=UTF-8');  
            request.setBody('['+JSON.serialize(reqList)+']');
        HttpResponse response = http.send(request);
}
        

    //DELETE method
    public static void DeleteUser(){    
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
            request.setEndpoint('https://api.pathtosalesforce.com/users.php?id=2');
            request.setMethod('DELETE');
        HttpResponse response = http.send(request);
}
}
