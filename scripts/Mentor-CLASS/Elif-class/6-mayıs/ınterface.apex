//Flyable parent
public interface Flyable {
   
  void fly();


}


//Bird child
public class Bird extends Animal implements Flyable{
    
      public Bird (String name,String breed, Integer age, String size){
        super(name, breed, age, size);
      } 
      

      public void fly(){
        System.debug(name + 'is flying');
      }


      public override void eat(){
         System.debug(name + 'is eating bird food');
       }     


      public void chirp(){
       System.debug(name + 'is chirping');
     } 

     public void peck(){
        System.debug(name + 'is pecking');
      } 

    
}


//Apex-anon

//ınterface olduğu için Animal object oluşturamayız-hata verir 
Animal a1 = new Animal('Dog', 'Husky', 3, 'Large');

Bird b1 = new Bird('Tweety', 'parakeet', 1, 'small');
Cat c1 = new Cat('Tom', 'Tabby', 4, 'medium');
Lion l1 = new Lion('Simba', 'Mountain Lion', 5, 'large' );

b1.fly();
b1.eat();
c1.eat();
l1.eat();