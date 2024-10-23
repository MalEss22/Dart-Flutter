int findMaximum ( List<int> numbers){
  if(numbers.isEmpty){
    print ("List cannot be empty");
    return 0;
  }
  int max = numbers[0];
  for( int i=1; i<numbers.length; i++){
    if( numbers[i]>max){
      max=numbers[i];
    }
  }
  return max;
}

void main() {
 List<int> numbers= [5,6,3,2,9,0];
  print("Maximum number in the list is: ${findMaximum(numbers)}");
 List<int> nums = [];
 print("Maximum number in the list is: ${findMaximum(nums)}");
  }