// ignore_for_file: unused_import, unnecessary_non_null_assertion, dead_null_aware_expression, invalid_null_aware_operator, dead_code
import 'dart:io';

void main() {
  // Non-nullable variable
  String name = 'Akshaya';
  int age = int.parse(stdin.readLineSync()!);

  print("Name: $name");
  print("Age : $age");

  // Nullable variable
  String? lastname;
  print('\n Lastname: $lastname');

  lastname = "Somanathan";
  print('Updated name: $name $lastname');

  // Checking for null
  String? city;

  // ignore: unnecessary_null_comparison
  if (city == null) {
    print('city is not available');
  }

  city = 'Puducherry';

  // ignore: unnecessary_null_comparison
  if (city != null) {
    print('City: $city');
  }

  // Null-aware access (?.)
  String? college;
  print('\n College length: ${college?.length}');

  college = 'MVIT';
  print('\n College length: ${college?.length}');

  // Null-coalescing operator (??)
  String? course;

  print('\n Course: ${course ?? 'Course not available'}');

  course = 'B. Tech IT';
  print('\n Course: ${course ?? 'Course not available'}');

  // Null-aware assignment (??=)
  String? email;
  email ??= 'akshaya@example.com';

  print('\n Email: $email');

  // This will not replace the existing value
  email ??= 'new@example.com';
  print('Email after second assignment: $email');

  // Null assertion operator (!)
  String? username = 'Akshaya';
  print('\n Username length: ${username!.length}');

  // Function with nullable parameter
  void greet(String? name) {
    print('\n Hello ${name ?? 'Guest'}');
  }

  String? getStudentName(bool available) {
    if (available) {
      return 'Akshaya';
    }
    return null;
  }

  // Nullable function parameter
  greet('Akshaya');
  greet(null);

  // Nullable return value
  String? studentName = getStudentName(true);

  print('\nStudent name: ${studentName ?? 'Name not available'}');

  studentName = getStudentName(false);

  print('Student name: ${studentName ?? 'Name not available'}');

  // Nullable list
  List<String>? subjects;
  print('\n Subjects: $subjects');

  subjects = ['Dart', 'Flutter', 'Sql'];

  print('Subjects: $subjects');
  print('Number of subjects: ${subjects?.length}');

  // List containing nullable values
  List<String?> friends = [
    'Hari'
        'null',
    'priya',
    'null',
  ];

  print('\n Friends: $friends');

  for (String? friend in friends) {
    print(friend ?? 'Unknown friend');
  }

  // Nullable map values
  Map<String, String?> student = {
    'name': 'Akshaya',
    'lastname': null,
    'city': 'Puducherry',
  };

  print('\n Student map: $student');
  print('Name: ${student['lastname'] ?? 'No lastname'}');
  print('City: ${student['city']}');

  // Nullable map
  Map<String, String>? contact;
  print('\n Contact: $contact');

  contact = {'email': 'akshaya@example.com', 'phone': '978653210'};
  print('Contact: $contact');
  print('Email: ${contact['email']}');

  // Combining null safety operators
  String? message;
  int messageLength = message?.length ?? 0;
  print('\n Message length: $messageLength');

  message = 'Hello Dart';
  messageLength = message?.length ?? 0;
  print('Message length: $messageLength');
}
