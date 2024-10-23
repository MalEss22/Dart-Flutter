
/*class Dog {
  late String name;
  late int age;
  void bark(){
    print("$name is barking");
  }
}
void main(){
  Dog dog = Dog();
  dog.name= "Buddy";
  dog.bark();
}
class Student{
  String? name;
  int? age;
 Student (String names, int ages){
name= names;
age=ages;
 }
  void introduce(){
    print("Hello, my name is $name. I am $age years old");
  }
}*/
class Rectangle{
   double length;
   double width;
  Rectangle(this.length, this.width);
  double area(){
    return (length*width);
  }
  double getPerimeter(){
    return 2*(length + width);
  }
  bool isSquare(){
    return length==width;
  }
}
void main(){
  //Student seace= new Student("Peace", 21 );
  //seace.introduce();
  var rect = Rectangle(2,2);
  print("The area of the triangle  is: ${ rect.area()}");
  print("Is it a square?: ${rect.isSquare()}");
  print("The perimeter of rectangle is : ${ rect.getPerimeter()}");
}