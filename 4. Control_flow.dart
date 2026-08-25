import "dart:io";

// Entry point
void main() {
  print("----- STUDENT RESULT SYSTEM -----");

  // input
  print("Enter student name: ");
  String name = stdin.readLineSync()!;

  print("Enter mark: ");
  int mark = int.parse(stdin.readLineSync()!);

  // if..elif..else - execute code based on conditions
  String grade;

  if (mark >= 90) {
    grade = "A+";
  } else if (mark >= 80) {
    grade = "A";
  } else if (mark >= 70) {
    grade = "B";
  } else if (mark >= 60) {
    grade = "C";
  } else if (mark >= 50) {
    grade = "D";
  } else {
    grade = "F";
  }

  // Nested if - one condition inside another condition
  String performance;

  if (mark >= 40) {
    if (mark >= 80) {
      performance = "Excellent";
    } else {
      performance = "Good";
    }
  } else {
    if (mark < 20) {
      performance = "Needs major improvement";
    } else {
      performance = "Needs improvement";
    }
  }

  // Switch case - select one case based on a value
  String gradeMsg;

  switch (grade) {
    case 'A+':
      gradeMsg = "Outstanding";
      break;

    case "A":
      gradeMsg = "Excellent";
      break;

    case "B":
      gradeMsg = "Very Good";
      break;

    case "C":
      gradeMsg = "Good";
      break;

    case "D":
      gradeMsg = "Needs Improvement";
      break;

    default:
      gradeMsg = "Failed";
  }

  // for loop - repeats a block a fixed number of times
  print("\n--- Subject Marks ---");

  int total = 0;

  for (int i = 1; i <= 3; i++) {
    print("Enter mark for subject $i:");
    int subjectMark = int.parse(stdin.readLineSync()!);

    total += subjectMark;
  }

  // Nested for loop - loop inside another loop
  print("\n--- Subject and Test Structure ---");

  for (int subject = 1; subject <= 2; subject++) {
    print("Subject $subject:");

    for (int test = 1; test <= 2; test++) {
      print("  Test $test");
    }
  }

  // while loop - repeats while the condition is true
  print("\n--- While Loop ---");

  int count = 3;

  while (count > 0) {
    print("Processing... $count");
    count--;
  }

  // do while - executes at least once before checking the condition
  print("\n--- Do While Loop ---");

  int number = 1;

  do {
    print("Number: $number");
    number++;
  } while (number <= 3);

  // continue - skips the current iteration
  print("\n--- Continue ---");

  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      continue;
    }

    print(i);
  }

  // Final result
  print("\n----- FINAL RESULT -----");

  print("Name          : $name");
  print("Overall Mark  : $mark");
  print("Grade         : $grade");
  print("Performance   : $performance");
  print("Grade Message : $gradeMsg");
  print("Subject Total : $total");
}
