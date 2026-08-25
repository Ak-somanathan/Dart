void main() {
  // String - stores text values
  String name = "Akshaya";

  // String interpolation - insert variables inside a String
  print("Hello, $name");

  // Expression interpolation
  int age = 21;
  print("Next year you will be ${age + 1}.");

  // String methods - perform operations on Strings
  String message = "  Hello Dart Programming  ";

  print(message.length); // length
  print(message.toUpperCase()); // uppercase
  print(message.toLowerCase()); // lowercase
  print(message.trim()); // removes extra spaces
  print(message.contains("Dart")); // checks whether text exists
  print(message.startsWith("  Hello"));
  print(message.endsWith("  "));
  print(message.replaceAll("Dart", "Flutter"));
  print(message.substring(2, 7));

  // Split String into a List
  String skills = "Dart,Flutter,Firebase";
  print(skills.split(","));

  // Multiline String - stores text across multiple lines
  String introduction = '''
    Hello!
    My name is Akshaya.
    I am learning Dart.
    My goal is to become a Flutter developer.
  ''';
  print(introduction);

  // Raw String - treats special characters literally
  String path = r"C:\Users\Akshaya\Documents\Dart";
  print(path);

  String pattern = r"\n \t \$";
  print(pattern);

  // Combining Strings
  String firstName = "Akshaya";
  String lastName = "Somanathan";
  String fullName = "$firstName $lastName";

  print("Full Name: $fullName");
}
