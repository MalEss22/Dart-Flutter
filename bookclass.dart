class Book{
  String? title;
  String? author;
  bool isAvailable = true;
  Book(this.title, this.author);
  void borrow(){
    if(isAvailable){
      isAvailable=false;
      print("$title by $author has already been borrowed");
    }
    else{
      print("$title is not available");
    }
  }
  void returnBook(){
    if(!isAvailable){
      isAvailable=true;
      print("You have returned $title. Thank you!");
    }
    else{
      print("$title was not borrowed");
    }
  }
  bool checkAvailability(){
    return isAvailable;
  }
}
void main(){
  var book1 = Book("Our husband has gone mad again", "Achebe");
   print("is ${book1.title} available?: ${book1.checkAvailability()}");
  book1.borrow();
  print("is ${book1.title} available?: ${book1.checkAvailability()}");
  book1.returnBook();
  book1.checkAvailability();
}