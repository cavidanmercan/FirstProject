public class PTSUsers {
    
    //https://api.pathtosalesforce.com/users.php
    
    //2-GET METHOD: post ile ekledik get ile alacağız   
    //bu method ile karşı siteye user ekleyeceğiz 
    public static void GetUsers(){
      
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        
        request.setEndpoint('https://api.pathtosalesforce.com/users.php');
        request.setMethod('GET');
		
        HttpResponse response = http.send(request);
        
        //System.debug(response.getBody());
        
      //sitedeki user ları contactlara eklemek istiyoruz
      //siteden gelen cevabı contactlara ekleyebilmek için --> PTSUsersResponse Class oluşturduk o class ı burada kullanacağız    
      //HttpResponse class ın getBody() methodu ile JSON ı buraya getiriyoruz :PTSUsersResponse.parse(response.getBody()); userlist te burayı kullandık 
       
       //Boş contact list oluşturduk for each ile PTSUsersResponse deki userları bu listeye ekleyeceğiz 
        List<Contact> conList = new List<Contact>();
        
       //PTSUsersResponse parse methodundan gelecek userları user List de topladık 
       //bu deserializenin 1. yöntemi alternatif olarak alttaki yorum içindekini de kullanabiliriz
        List<PTSUsersResponse> userList = PTSUsersResponse.parse(response.getBody()); //Call the parse method from Response class (it will return a list of PTSUsersResponse(user from endpoint) )
        
       //Deserialize için alternatif yöntem: response class da değil de burada yapmak isteseydik şu şekilde yapardık 
       // List<PTSUsersResponse> userList =(List<PTSUsersResponse>) System.JSON.deserialize(response.getBody(), List<PTSUsersResponse>.class);
       // bunu yaparsak response class daki Deserialize kısmına gerek kalmayacak 
        
        
        
       // HEROKU sitesinde Json ı Apex class a çevirdik: https://json2apex.herokuapp.com/
        for(PTSUsersResponse PTSUser : userList){
            
            Contact con= new Contact();
            
            con.FirstName = PTSUser.firstName;
            con.LastName = PTSUser.lastName;
            con.Email = PTSUser.email;
            con.Phone = PTSUser.phone;
            
            conList.add(con);
            
            //System.debug(PTSUser.firstName);
              
           
        }
        
        insert conlist;
                                        
    }
    
    
    //1-POST METHOD: hiçbir kullanıcı olmadığı için önce ekleme yaptırdı 
    //bu method ile karşı siteye user ekleyeceğiz 
    public static void AddUser(){
      
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        
        request.setEndpoint('https://api.pathtosalesforce.com/users.php');
        request.setMethod('POST');
		request.setHeader('Content-Type', 'application/json;charset=UTF-8');  
        request.setBody('[{"firstName": "Jessica", "lastName":"Young", "email":"jessica@gmail.com", "phone": "123456789", "gender": "Female"}]');
        
        HttpResponse response = http.send(request);
        
        System.debug(response.getStatusCode());
                                        
    }
    
    
     //3-POST METHOD:RequestClass yardımıyla 1 userı siteye post ile ekledik 
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
        //site liste olarak yani köşeli parantezli kabul ediyormuş o nedenle köşeli parantez ekledik
        request.setBody('['+JSON.serialize(req)+']');
           
        
        HttpResponse response = http.send(request);
        
        System.debug(response.getStatusCode());
                                        
    }
    
    
      //4-POST METHOD:Contactlardan 1 userı siteye post ile ekledik 
      public static void AddUserfromContacs(String conId){
          
          //bir değer verseydi : kullanmazdı ama dışarıdan bir değeri burada kullanacağımız için binding yaptık 
          //method kısmında bir parametre var (String conId) ve methodu çağıran oraya ne değer girerse Id=: conId burada o olacak binding ile birbirine bağladık
         Contact con = [SELECT Id, FirstName, LastName, Email, Phone FROM Contact WHERE Id=: conId];
            
        PTSUsersRequest req =new PTSUsersRequest();
            req.firstName=con.FirstName; 
            req.lastName=con.LastName;
            req.email=con.Email;
            req.phone=con.Phone;
        //SOQL ile sistemden çağırdığımız con u request objecte bağladık sonra req i serialize ile json a çevirip http.send(request) ile siteye göndereceğiz    
      
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        
        request.setEndpoint('https://api.pathtosalesforce.com/users.php');
        request.setMethod('POST');
		request.setHeader('Content-Type', 'application/json;charset=UTF-8');  
        request.setBody('['+JSON.serialize(req)+']');
           
        
        HttpResponse response = http.send(request);
        
        System.debug(response.getStatusCode());
                                        
    }
    
    
     //5-POST METHOD:Contactların tamamını siteye post ile ekledik
     public static void AddUsersfromContacs(){
           
        //tüm contactları istediğimiz için list yaptık 
        List<Contact> conList = [SELECT Id, FirstName, LastName, Email, Phone FROM Contact];
         
         List<PTSUsersRequest> reqList = new List<PTSUsersRequest>();
         
         for(Contact con: conList){
           //her contact için bir request oluşturduk ve con ile req i eşleştirdik 
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
        
        System.debug(response.getStatusCode());
                                        
    }
    
    
        //6-DELETE METHOD:sitedeki userları tek tek ıd kullanarak sildik
 
		public static void DeleteUser(){    
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        
        request.setEndpoint('https://api.pathtosalesforce.com/users.php?id=2');
        request.setMethod('DELETE');
        
        HttpResponse response = http.send(request);
        
    }
    
    
    
    
    
    
    

}