public class SpartanCallout {

    //create a method that will return a single spartan according to Id
    //return HttpResponse Object

    public static HttpResponse getOneSpartan(Integer Id){

        Http http = new Http();

        //create HttpRequest Object to provide details 
        HttpRequest request = new HttpRequest();
        //use setEndpoint to provide the url
        request.setEndpoint('https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans/'+id);
        //use setMethod to provide the http method
        request.setMethod('GET');
        //send this request using the http Object send method
        HttpResponse response = http.send(request);
        //if the response is successfull, deserialize it
        if(response.getStatusCode()==200){
            System.debug('body is :'+response.getBody());
            // Map<String,Object> deserializedJson = (Map<String,Object>) JSON.deserializeUntyped(response.getBody());
            // System.debug('id is :'+deserializedJson.get('id'));
            // System.debug('name is :'+deserializedJson.get('name'));
            // System.debug('gender is :'+deserializedJson.get('gender'));

            //wrapper class

            //JSON.deserialize(jsonString, apexType)
            Spartan deserializedJson = (Spartan) JSON.deserialize(response.getBody(), Spartan.class);
            System.debug(deserializedJson.Id);
            System.debug(deserializedJson.name);
            System.debug(deserializedJson.gender);



        }

        return response;



    }

    
    
}

//'https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans/'
public class Spartan {
    public Integer Id;
    public String name;
    public String gender;
    public Integer phone;

}
@isTest
public class SpartanCalloutMock implements HttpCalloutMock {
    
    //we are trying to create a fake response so we can use it in the test class
    //we will do it with HttpCalloutMock interface

    public HttpResponse respond(HttpRequest request){

        //provide fake response details

        HttpResponse response = new HttpResponse();
        response.setStatusCode(200);
        response.setHeader('Content-type', 'application/json');
        response.setBody('{"id":165,"name":"Jon Snow","gender":"Male","phone":1234567890}');


        return response;




    }
    
}


@isTest
public class SpartanCalloutTest {

    @isTest
    static void testGetOneSpartan(){


        //instruct the test to use fake response that implemented in SpartanCalloutMock

        //Test.setMock(interfaceType, mock)

        Test.setMock(HttpCalloutMock.class, new SpartanCalloutMock());

        HttpResponse fakeResponse = SpartanCallout.getOneSpartan(165);
        System.debug(fakeResponse);
        System.debug(fakeResponse.getStatusCode());
        System.debug(fakeResponse.getBody());
        System.debug(fakeResponse.getHeader('Content-type'));

        System.assertNotEquals(NULL, fakeResponse);
        System.assertEquals(200, fakeResponse.getStatusCode());
        System.assertEquals('{"id":165,"name":"Jon Snow","gender":"Male","phone":1234567890}', fakeResponse.getBody());
        System.assertEquals('application/json',fakeResponse.getHeader('Content-type'));


    }
}