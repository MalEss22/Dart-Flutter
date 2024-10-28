import 'dart:io';
void addTask(List<String> tasks){
print("Enter new task");
String? newTask = stdin.readLineSync();
if(newTask != null && newTask.isNotEmpty){
  tasks.add(newTask);
  print("$newTask added successfully");
} else{
  print("Task cannot be empty");
}
}
void viewTasks(List<String> tasks){
  if(tasks.isEmpty){
    print("No tasks found");
  } else{
    print("\n To-do List:");
    for( int i=0; i<tasks.length; i++){
      print("${i+1}. ${tasks[i]}");
    }
  }
}
void deleteTask(List<String> tasks){
  viewTasks(tasks);
  print("Enter index of task to be deleted:\n");
  String? taskIndexString = stdin.readLineSync();
  if( taskIndexString != null && int.tryParse(taskIndexString) != null){
    int taskIndex = int.parse(taskIndexString)-1;// -1 is to help us arrive at the computer;s indexing of 0-n
    if(taskIndex>=0 && taskIndex<=tasks.length){
 tasks.removeAt(taskIndex);
    print("Task deleted successfully");
    } else{
print("Invalid task number");
    } 
  }else{
    print("Enter a valid task number");
  }
}
 void updateTask (List<String> tasks){
  viewTasks(tasks);
  print("Enter task index to update:\n");
  String? taskIndexStr = stdin.readLineSync();
  if(taskIndexStr != null && int.tryParse(taskIndexStr) !=null){
    int taskIndex = int.parse(taskIndexStr)-1;
    if( taskIndex >0 && taskIndex < tasks.length){
      print("Enter new task description\n");
      String? newTask = stdin.readLineSync();
      tasks[taskIndex]= newTask!;
      print("Task updated successfully");
      viewTasks(tasks);
    }
    else{
      print("Invalid task number");
    }
  }
  else{
    print("Enter a valid task number:\n");
  }
 }
 void completeTask (List<String> tasks){
  viewTasks(tasks);
  print("Enter task index to complete:\n");
  String? taskIndexStr = stdin.readLineSync();
  if(taskIndexStr != null && int.tryParse(taskIndexStr) !=null){
    int taskIndex = int.parse(taskIndexStr)-1;
    if( taskIndex >0 && taskIndex < tasks.length){
    // tasks[taskIndex].isCompleted = true;
      print("Task completed successfully");
      viewTasks(tasks);
    }
    else{
      print("Invalid task number");
    }
  }
  else{
    print("Enter a valid task number:\n");
  }
 }
 void main(){
  List<String> todo =[];
  while(true){
    print("\n Enter your choice:");
    print("1. Add Task");
    print("2. View task");
print("3. Update Task");
print("4. Complete Task");
print("5. Delete task Task");
print("6. Exit");

print("Enter your choice");
String choice = stdin.readLineSync()!;
switch(choice){
  case '1':
  addTask(todo);
  break;
  case '2':
  viewTasks(todo);
  break;
  case '3':
  updateTask(todo);
  break;
  case '4':
  completeTask(todo);
  break;
case '5':
deleteTask(todo);
break;
case '6':
print("Exiting");
exit(0);
default:
print("Invalid input. try again");
}

  }

 }