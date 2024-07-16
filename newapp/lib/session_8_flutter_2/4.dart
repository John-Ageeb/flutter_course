/// arrow function :
/// if we have a function have only one command, we can write as below
///old method
int add(int n1, int n2) {
  return n1 + n2;
}

///new methode - arrow function

int add2(int n1, int n2) => n1 + n2;

/// Map: this is type of data structure such as "List" and we can access data by key not index as List
///key and data might be any type of data
///key must locate before : in map

List classNames = [
  "ahmed",
  "mohamed",
  "john"
]; // access data by index with order
String x = classNames[1]; // access "mohamed"
Map classNames2 = {55: "ahmed", 68: "john", 10: "mohamed"}; // add key:data
String y = classNames2[10]; // call key to access data "mohamed"
