import 'dart:io';

void main() {
  print("------- STUDENT DETAILS -------");

  print('Enter a student name: ');
  String name = stdin.readLineSync()!;

  print('Enter mark 1: ');
  double m1 = double.parse(stdin.readLineSync()!);

  print('Enter mark 2: ');
  double m2 = double.parse(stdin.readLineSync()!);

  print('Enter mark 3: ');
  double m3 = double.parse(stdin.readLineSync()!);

  // Arithmetic operators - perform mathematical calculations
  double total = m1 + m2 + m3;
  double avg = (m1 + m2 + m3) / 3;
  double rem = total % 2;
  int res = total ~/ 3;

  print("\n--- RESULT ---");
  print("Total      : $total");
  print("Average    : $avg");
  print("Remainder  : $rem");
  print("Whole result: $res");

  // Assignment operators - assign and update values
  double bonus = 0;
  bonus += 5;
  bonus -= 2;
  bonus *= 2;
  bonus /= 2;

  print("--- BONUS SCORE ---");
  print("Bonus: $bonus");

  // Comparison operators - compare two values
  bool pass = avg >= 40;
  bool exc = avg >= 80;
  bool fail = avg <= 30;

  print("\n--- PASS / FAIL / EXCELLENT ---");
  print("Passed    : $pass");
  print("Excellent : $exc");
  print("Failed    : $fail");

  // Logical operators - combine multiple conditions
  bool goodstd = pass && exc;
  bool eligible = pass || exc;
  bool notFailed = !fail;

  print("\n--- ELIGIBLE / NOT ---");
  print("Good student : $goodstd");
  print("Eligible     : $eligible");
  print("Not failed   : $notFailed");

  // Equality and inequality operators - check whether values are equal
  bool marksEqual = m1 == m2;
  bool marksDifferent = m1 != m2;

  print("\n--- MARK STATUS ---");
  print("Mark 1 == Mark 2 : $marksEqual");
  print("Mark 1 != Mark 2 : $marksDifferent");

  // Null-aware ?? - use a fallback value when the value is null
  String? surname;
  String displayname = surname ?? name;

  print("\n--- FULL NAME ---");
  print("Display name: $displayname");

  // Null-aware ??= - assign a value only when the variable is null
  String? department;
  department ??= "Information Technology";

  print("Department: $department");

  // Null-aware ?. - safely access a member when the value may be null
  String? optionalName;

  // ignore: dead_code
  print("Name length: ${optionalName?.length}");

  // Cascase notation - perform multiple operations on the same object
  var result = StringBuffer()
    ..write("Student: ")
    ..write(name)
    ..write(" | Average: ")
    ..write(avg.toStringAsFixed(2));
  print("\n--- FINAL RESULT ---");
  print(result);
}
