// Entry point
void main() {
  // Creating a map
  Map<String, dynamic> student = {
    'name': 'Akshaya',
    'age': 21,
    'course': 'B. Tech IT',
    'Cgpa': 8.54,
    'isGraduated': false,
  };
  print('Student Details: $student');

  // Accessing values using keys
  print('\nName: ${student['name']}');
  print('\nAge: ${student['age']}');
  print('\nCourse: ${student['course']}');

  // Adding a new key-value pair
  student['city'] = 'Puducherry';
  print('\n After adding city: $student');

  // Updating an existing value
  student['age'] = 22;
  print("After updating age: $student");

  // Adding multiple key-value pairs
  student.addAll({'department': 'Information Technology', 'college': 'MVIT'});
  print('\n After adding multiple details: $student');

  // Checking whether a key exists
  print('\n contains name key: ${student.containsKey('name')}');
  print('contains salart key: ${student.containsValue('salary')}');

  // Checking whether a value exists
  print('\n Contains Akshaya value: ${student.containsValue('Akshaya')}');
  print('\n Contains chennai value: ${student.containsValue('Chennai')}');

  // Getting the number entries
  print('\n Number of entries: ${student.length}');

  // Checking whether the map is empty
  print('Is map empty? ${student.isEmpty}');
  print('is map not empty? ${student.isNotEmpty}');

  // Getting all keys
  print('Keys: ${student.keys}');
  print('values: ${student.values}');

  // Converting keys and values into lists
  List<String> keys = student.keys.toList();
  List<dynamic> values = student.values.toList();

  print('\nkeys as list: $keys');
  print('values as list: $values');

  // Nested Map
  Map<String, dynamic> profile = {
    'name': 'Akshaya',
    'contact': {'email': 'akshaya@example.com', 'phone': '9876543210'},
    'address': {'city': 'Puducherry', 'country': 'India'},
  };

  print('\nNested Map: $profile');

  // Accessing nested values
  print('Email: ${profile['contact']['email']}');
  print('City: ${profile['address']['city']}');

  // 16. Removing an entry
  student.remove('city');

  print('\nAfter removing city: $student');

  // 17. Clearing a Map
  Map<String, int> temporaryMap = {'A': 1, 'B': 2, 'C': 3};

  print('\nTemporary Map before clear: $temporaryMap');

  temporaryMap.clear();

  print('Temporary Map after clear: $temporaryMap');
  print('Is temporary Map empty? ${temporaryMap.isEmpty}');
}
