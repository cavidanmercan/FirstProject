
public class Square extends Rectangle{

    public Decimal side;
//parent olan rectangle da width and height private old için burada göremiyor onların yerine side tanımlıyor onun için 2 kere side kullanmış biri widht diğeri height için 
    public Square(String name, Decimal side){
//super ile çağırılabilmesi için o cons yapısında çağırmsk gerekiyor. 3 parametreli ise superin içi de 3 parametreyi karşılayacak şekilde olmalı 
        super(name,side,side);
        this.side = side ; 
             
    }


    public override void draw(){
        System.debug('Drawing awesome Square'); 
    }

}






public virtual class Rectangle extends Shape implements Drawable {
    private Decimal width;
    private Decimal height;

    public Rectangle() {
        // super('Just Rectangle');  // this.name = 'Just Rectangle'
        // this.width  = 1 ; 
        // this.height = 1 ; 
        // below line is calling 3 arg constructor below to reuse it's functionality 
        //yani yukarıdakini tek seferde şu şekilde yazabiliriz 
        this('Just Rectangle', 1, 1);
    }


    public Rectangle(String name, Decimal width, Decimal height) {
        super(name); // this.name = name ; 
        this.width = width;
        this.height = height;
    }


    public override void calculateArea() {
        this.area = this.width*this.height;
    }


 // implementing draw method from Drawable interface
 //bu şekilde virtual methoda dönüştürüp child squire de bu virtual methodu override yaptırdı
    public virtual void draw(){
        System.debug('Drawing awesome Rectangle'); 
    }

//normalde bu şekilde yazıp bırakıyorduk ama konuyu açıkmak adına farklı türde de açıkladı 
//yukarıdaki versiyonu kullanıldığı için bunu yoruma aldık 
    // public void draw(){
    //     System.debug('Draw a rectangle ' + this.width + ' width and ' + this.height +' height');
        
    // }


   

}
