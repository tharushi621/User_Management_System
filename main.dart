import 'dart:io';
import 'dart:vmservice_io';
import 'user.dart';
import 'admin.dart';
import 'customer.dart';

void main(){
  print("Welcome to user management system");
  print("Select user type");
  print("1. Admin");
  print("2. Customer");

  String? choice = stdin.readLineSync();

  print("Enter ypur name");
  String name = stdin.readLineSync() ?? "Unknown";

  User user;

  if (choice == "1"){
    user = Admin(name);
  }else if (choice == 2){
    user = Customer(name);
  }else{
    print("Invalid Selection");
    return;
  }

  bool running = true;

  while (running){
    user.showMenu();
    String? option = stdin.readLineSync();

    if(user is Admin){
      switch(option){
        case "1":
          user.viewProfile();
          break;
        case "2":
          user.deleteUser();
          break;
        case "3":
          user.systemStatus();
          break;
        case "4":
          running = false;
          break;
        default:
          print("Invalid option");      }
    }
    }

    if(user is Customer){
      var option;
      switch(option){
        case "1":
         user.viewProfile();
         break;
        case "2":
         print("Enter new name : ");
         String newName = stdin.readLineSync()??user.name;
         user.updateName(newName);
         break;
        case "3":
         running = false;
         break;
        default:
         print("Invalid option");
      }
    }
    print("Thank you for using the system");
}
