// Animal parent
public virtual class Animal {
   
    public String name;
    public String breed;
    public Integer age;
    public String size;

    public Animal(String name,String breed, Integer age, String size){
        this.name = name;
        this.breed = breed;
        this.age = age;
        this.size= size;
    }


    public virtual void eat(){
        System.debug(name + 'is eating');
    }

    public void move(){
        System.debug(name + 'is moving'); 
    }



}


// Cat child
public class Cat extends Animal {

      public Cat(String name,String breed, Integer age, String size){
        super(name, breed, age, size);
      } 
      
      public override void eat(){
         System.debug(name + 'is eating cat food');
       } 

      public void meow(){
         System.debug(name + 'is meowing');
       }  

       public void scratch(){
        System.debug(name + 'is scratching');
      } 

      public void sleep(){
        System.debug(name + 'is sleep');
      } 


}



// Lion child
public class Lion extends Animal {
   
      public Lion (String name,String breed, Integer age, String size){
        super(name, breed, age, size);
      } 
      
      public override void eat(){
         System.debug(name + 'is eating people');
       } 


    public void roar(){
        System.debug(name + 'is roaring');
      }  

      public void hunt(){
       System.debug(name + 'is hunting');
     } 

}



//Bird child
public class Bird extends Animal {
    
      public Bird (String name,String breed, Integer age, String size){
        super(name, breed, age, size);
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

//virtual olduğu için Animal object oluşturabiliriz 
Animal a1 = new Animal('Dog', 'Husky', 3, 'Large');

Bird b1 = new Bird('Tweety', 'parakeet', 1, 'small');
Cat c1 = new Cat('Tom', 'Tabby', 4, 'medium');
Lion l1 = new Lion('Simba', 'Mountain Lion', 5, 'large' );


b1.eat();
c1.eat();
l1.eat();