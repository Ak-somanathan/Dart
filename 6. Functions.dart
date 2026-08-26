// Function with parameters and return type
int add(int a, int b) {
  return a + b;
}

// Function with optional positional parameter
void greet(String name, [String message = "Welcome"]) {
  print("$message, $name!");
}

// Functional with named parameters
void studentDetails({
  required String name,
  required int age,
  String course = "B.Tech IT",
}) {
  print("Name     : $name");
  print("Age      : $age");
  print("Course   : $course");
}

// Arrow function - short function with a single expression
int square(int number) => number * number;

// Anonymous function
void executeOperation(int a, int b, int Function(int, int) operation) {
  print(operation(a, b));
}

// Higher-order function - function receives another function
int calculate(int a, int b, int Function(int, int) operation) {
  return operation(a, b);
}

void main() {
  // Calling a function with arguments
  int sum = add(10, 20);
  print("Sum: $sum");

  // Optional parameter with default value
  greet("Akshaya");
  greet("Akshaya", "Good morning");

  // Named parameters
  studentDetails(name: "Akshaya", age: 21);

  // Arrow function
  print("Sqaure: ${square(5)}");

  // Anonymous function
  executeOperation(10, 5, (a, b) {
    return a - b;
  });

  // Higher - order function
  int addition = calculate(10, 5, (a, b) => a + b);
  int multiplication = calculate(10, 5, (a, b) => a * b);

  print("Addition       : $addition");
  print("Multiplication : $multiplication");

  // Function returning a value
  double avg = calculateAverage(80, 90, 85);

  print("Average: $avg");
}

// Function with multiple parameters and return type
double calculateAverage(int m1, int m2, int m3) {
  return (m1 + m2 + m3) / 3;
}
