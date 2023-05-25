/**
Abstract-extends 
Shape --> Parent
    Rectangle --> Child (Shape parent)
        Square --> Child (Rectangle parent)
    Circle --> Child (Shape parent)

Interface-implements 
Drawable --> Parent
    Rectangle --> Child (Drawable parent)
    Circle --> Child (Drawable parent)

Interface-implements   
Rollable --> Parent
    Circle --> Child (Rollable parent)

*/




Shape s1=new Circle();
s1.calculateArea();
s1.displayShapeInfo();

Shape s2=new Rectangle();
s2.calculateArea();
s2.displayShapeInfo();


List<Shape> shapeList = new List<Shape> (); 
shapeList.add(s1) ; 
shapeList.add(s2) ; 

for(Shape each : shapeList) {
    each.calculateArea(); 
    each.displayShapeInfo();
}




Rectangle r1 = new Rectangle(); 
r1.draw();
Circle c1 = new Circle();
c1.draw();

List<Drawable> drawList = new List<Drawable>(); 
drawList.add(r1); 
drawList.add(c1);


for(Drawable each : drawList) {
    each.draw(); 
}






