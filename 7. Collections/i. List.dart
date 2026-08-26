// Entry point
void main() {
  print("------ STUDENT LIST MANAGEMENT ------");

  // Create a list - stores multiple values in order
  List<String> students = ["Akshaya", "Ruthra", "Mohana"];
  List<int> marks = [35, 48, 76, 92, 65, 28];

  // Add one element to the list
  students.add("Dhanalakshmi");

  // Add multiple elements to the list
  students.addAll(["Hariharan", "kumar"]);

  // Insert an element at a specific index
  students.insert(0, "somanathan");

  // Insert multiple elements at a specific index
  students.insertAll(1, ["dhanam", "hari"]);

  // Access an element using its index
  print("\n First student: ${students[0]}");

  // Update an elements using its index
  students[2] = 'Hari haran';

  // Display first and last element
  print("First student: ${students.first}");
  print("Last student: ${students.last}");

  // length of a list
  print("Total students: ${students.length}");

  // empty or not
  print("Is list empty: ${students.isEmpty}");
  print("Is not empty: ${students.isNotEmpty}");

  // Check whether an element exists
  print(("Has somanathan? ${students.contains("somanathan")}"));

  // Find the index of an element
  print("Index of Mohana: ${students.indexOf("Mohana")}");

  // Remove an element by its value
  students.remove("hari");

  // Remove an element using its index
  students.removeAt(6);

  // Remove the last element
  students.removeLast();

  // where() - fliter elements based on a condition
  List<int> passMarks = marks.where((mark) => mark >= 40).toList();
  print("Passed marks: $passMarks");

  // map() - transform every element
  List<int> bonusMarks = marks.map((mark) => mark + 5).toList();
  print("Bonus Marks: $bonusMarks");

  // any() - checks whether at least one element matches
  bool hasExcellentMark = marks.any((mark) => mark >= 90);
  print("Any mark above 90? $hasExcellentMark");

  // every() - checks whether all elements match
  bool everonePassed = marks.every((mark) => mark >= 40);
  print("Everyone passed? $everonePassed");

  // sort() - arrange elements in asc order
  marks.sort();
  print("Sorterd marks: $marks");

  // sort in desc order
  marks.sort((a, b) => b.compareTo(a));
  print("Descending marks: $marks");

  //clear() - remove all elements
  print("\n Before clear: $students");
  students.clear();
  print("\n After clear: $students");
}
