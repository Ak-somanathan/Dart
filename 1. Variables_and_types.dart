import 'dart:io';

// Entry point
void main() {
  print("===== STUDENT PROFILE =====");

  // string - stores text values
  print("Enter your name:");
  String name = stdin.readLineSync()!;

  // integer - stores whole numbers
  print("Enter your age:");
  int age = int.parse(stdin.readLineSync()!);

  // double - stores decimal numbers
  print("Enter your CGPA:");
  double cgpa = double.parse(stdin.readLineSync()!);

  // num - stores both integer and decimal numbers
  print("Enter your marks:");
  num marks = num.parse(stdin.readLineSync()!);

  // bool - stores true or false values
  print("Are you currently a student? (true/false):");
  bool isStudent = bool.parse(stdin.readLineSync()!);

  // final - value can be assigned only once
  print("Enter your student ID:");
  final String id = stdin.readLineSync()!;

  // const - value is fixed at compile time
  const String college_name = 'MVIT';

  // dynamic - variable can hold values of different types
  print("Enter your status: (active/nil)");
  dynamic status = stdin.readLineSync()!;

  // Object - can store values of any object type while maintaining type safety
  print("Enter your course: ");
  Object course = stdin.readLineSync()!;

  print("------- STUDENT PROFILE -------");
  print("Name       : $name");
  print("Age        : $age");
  print("CGPA       : $cgpa");
  print("Marks      : $marks");
  print("Student    : $isStudent");
  print("Student ID : $id");
  print("College    : $college_name");
  print("Status     : $status");
  print("Course     : $course");
}
