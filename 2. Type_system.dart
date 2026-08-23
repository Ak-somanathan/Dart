import 'dart:io';

// Entry point
void main() {
  print("===== STUDENT DATA PROCESSOR =====");

  // Static typing - explicitly specify the variable type
  print("Enter your name:");
  String name = stdin.readLineSync()!;

  // Type inference - Dart automatically determines the type
  print("Enter your age:");
  var age = int.parse(stdin.readLineSync()!);

  // Type conversion - convert String input into int
  print("Enter your marks:");
  int marks = int.parse(stdin.readLineSync()!);

  // Type conversion - convert String input into double
  print("Enter your CGPA:");
  double cgpa = double.parse(stdin.readLineSync()!);

  // Type checking - check whether a value belongs to a specific type
  print("\n--- Type Checking ---");

  print(name is String);
  print(age is int);
  print(cgpa is double);

  // is - checks whether a value is of a particular type
  if (marks is int) {
    print("Marks is an integer.");
  }

  // Type conversion - convert int into double
  double convertedMarks = marks.toDouble();

  print("\nConverted marks: $convertedMarks");

  // as - explicitly treats a value as a specific type
  Object studentName = name;

  String convertedName = studentName as String;

  print("Student name: $convertedName");

  // Type checking with multiple types
  dynamic value = 100;

  if (value is int) {
    print("\nValue is an integer.");
  } else if (value is String) {
    print("\nValue is a string.");
  }

  print("\n===== RESULT =====");
  print("Name  : $name");
  print("Age   : $age");
  print("Marks : $marks");
  print("CGPA  : $cgpa");
}
