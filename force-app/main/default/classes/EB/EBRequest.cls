public class EBRequest {

public String id;
public String firstName; 
public String lastName;
public String email;
public String phone;
public String gender;
public String status;


public static List<PTSUsersResponse> parse(String json) {
    return (List<PTSUsersResponse>) System.JSON.deserialize(json, List<PTSUsersResponse>.class);
}
}


//https://json2apex.herokuapp.com/
