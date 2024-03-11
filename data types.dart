void main() {
  // Integer data type
  int myInteger = 10;
  print('Integer: $myInteger');

  // Double data type
  double myDouble = 3.14;
  print('Double: $myDouble');

  // String data type
  String myString = 'Hello, world!';
  print('String: $myString');

  // List data type
  List<int> myIntList = [1, 2, 3, 4, 5];
  print('List of integers: $myIntList');

  // Map data type
  Map<String, dynamic> myMap = {
    'name': 'John',
    'age': 30,
    'isStudent': false,
  };
  print('Map: $myMap');

  // Accessing elements of the list
  print('First element of the list: ${myIntList[0]}');

  // Accessing elements of the map
  print('Name: ${myMap['name']}, Age: ${myMap['age']}, Is Student? ${myMap['isStudent']}');
}
