import 'dart:io';

// Define an interface
abstract class Animal {
  void makeSound();
}

// Define a base class
class LivingThing {
  void breathe() {
    print('Breathing...');
  }
}

// Define a derived class that implements an interface and overrides a method
class Dog extends LivingThing implements Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}

// Define a class that represents a person
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  String toString() {
    return 'Name: $name, Age: $age';
  }
}

void main() {
  // Create an instance of Dog
  Dog dog = Dog();
  dog.makeSound();
  dog.breathe();

  // Create instances of Person initialized with data from a file
  List<Person> people = readPeopleFromFile('people.txt');
  print('People:');
  for (var person in people) {
    print(person);
  }

  // Method demonstrating the use of a loop
  print('Counting to 5:');
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
}

// Read data from file and return a list of Person objects
List<Person> readPeopleFromFile(String filename) {
  File file = File(filename);
  List<Person> people = [];

  try {
    List<String> lines = file.readAsLinesSync();
    for (var line in lines) {
      List<String> parts = line.split(',');
      if (parts.length == 2) {
        String name = parts[0];
        int age = int.tryParse(parts[1]) ?? 0;
        people.add(Person(name, age));
      }
    }
  } catch (e) {
    print('Error reading file: $e');
  }

  return people;
}
