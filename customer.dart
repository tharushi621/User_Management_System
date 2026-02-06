import 'user.dart';

class Customer extends User{
  Customer(super.name);

  @override
  void accessLevel(){
    print("Access Level : Customer (Limited Access)");
  }
  @override
  void showMenu(){
    print("\nCustomer Menu");
    print("1. View Profile");
    print("2. Update Name");
    print("3. Exit");
  }
  void viewProfile(){
    print("Customer name : $name");
    accessLevel();
  }
  void updateName(String newName){
    name = newName;
    print("Name updated successfully");
  }
}