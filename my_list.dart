void main() {
  // Create an empty list called my_list.
  List<int> my_list = [];

  // Append the following elements to my_list: 10, 20, 30, 40.
  my_list.addAll([10, 20, 30, 40]);

  // Insert the value 15 at the second position in the list.
  my_list.insert(1, 15);

  // Extend my_list with another list: [50, 60, 70].
  my_list.addAll([50, 60, 70]);

  // Remove the last element from my_list.
  my_list.removeLast();

  // Sort my_list in ascending order.
  my_list.sort();

  // Find and print the index of the value 30 in my_list.
  int index_30 = my_list.indexOf(30);
  print("Index of value 30: $index_30");

  // Print the final list.
  print("Final list: $my_list");
}
