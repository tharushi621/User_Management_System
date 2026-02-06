import 'user.dart';
import 'logger.dart';

class Admin extends User with Logger{
  Admin(super.name);

  @override
  void accessLevel(){
    print("Access Level : Admin (Full Access)");
  }
  @override
  void showMenu() {
    print("\nAdmin Menu");
    print("1. View Profile");
    print("2. Delete User");
    print("3. View System Status");
    print("4. Exit");
  }
  void viewProfile(){
    print("Admin name : $name");
    accessLevel();
  }
  void deleteUser(){
    log("$name deleted a user");
    print("User deleted successfully");
  }
  void systemStatus(){
    print("System running normally.");
  }
}