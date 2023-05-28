public class PTSUsersResponse {

public String id;
public String firstName; 
public String lastName;
public String email;
public String phone;
public String gender;
public String status;

//PTSUsersResponse parse methodunu çağırınca bize liste olarak veriyor - birden fazla user olduğu için List olarak verdi 
//bu method siteden gelen JSON u yukarıda field leri yazılı object çeviriyor 
public static List<PTSUsersResponse> parse(String json) {
    return (List<PTSUsersResponse>) System.JSON.deserialize(json, List<PTSUsersResponse>.class);
}
}


//bu classı biz yazmadık. heroku sitesinde oluşturduk. Bu site JSON ı Apex formatına dönüştürüyor.
//https://json2apex.herokuapp.com/
//https://api.pathtosalesforce.com/users.php sitesindeki json alanını kopyaladık heroku daki alana yapıştırdık. 
//Create Apex e tıkla dosya oluştu (normal class ve test class 2 tane dosya verdi) kopyala class a yapıştır.(class adını değiştirdik-methoddaki class adının geçtiği yerleri unutma)
//burada yaptığımız aslında deserialize işlemi