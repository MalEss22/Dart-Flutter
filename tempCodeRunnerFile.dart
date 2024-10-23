import 'dart:io';
int fibonacci(int n){
    if(n<0){
      throw Exception("Not Possible");
      }
    if(n==0 || n==1){
      return 1;
    } else{
      return fibonacci(n-1)+fibonacci(n-2);
    } 
}
int facto ( int n){
  if(n==0||n==1){
    return 1;
  }else{
    return n*facto(n-1);
  } 
}
void main()
{
    print("Enter number to get fibonacci and factorial\n");
    int n = int.parse(stdin.readLineSync()!);
    print("Fibo of $n is: ${fibonacci(n)}");
    print("Facto of $n is: ${facto(n)}");

}