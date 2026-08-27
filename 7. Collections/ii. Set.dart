// Entry point
void main() {
  // Creating a set
  Set<String> fruits = {'Apple', 'Banana', 'Grapes', 'Mango'};

  print('Original set: $fruits');

  // Length
  print("Number of fruits: ${fruits.length}");

  // Adding a single element
  fruits.add('Guava');

  // Adding multiple elements
  fruits.addAll({'Dragon fruit', 'watermelon'});

  // checking whether an element exists
  print("Contains Apple: ${fruits.contains('Apple')}");

  // Removing an element
  fruits.remove('Dragon fruit');

  // Checking empty or not empty
  print('is set empty: ${fruits.isEmpty}');
  print('is set not empty: ${fruits.isNotEmpty}');

  // Set operations - Union
  Set<String> veg1 = {'carrot', 'beans', 'greens', 'yam', 'tomato'};
  Set<String> veg2 = {'onion', 'beans', 'drumstick', 'yam', 'chow chow'};

  print("Union: ${veg1.union(veg2)}");

  // Intersection
  print("Intersection: ${veg1.intersection(veg2)}");

  // Difference
  print("First set difference: ${veg1.difference(veg2)}");
  print("Second set difference: ${veg2.difference(veg1)}");

  // List to set
  // Set to list - use toList()
  List<int> numbers = [9, 52, 6, 9];
  Set<int> uniquenumbers = numbers.toSet();

  print("\n List: $numbers \n Set: $uniquenumbers");

  // Remove multiple elements
  fruits.removeAll({'Grapes', 'watermelon'});

  // Clear the set
  uniquenumbers.clear();

  print("After clear: $uniquenumbers");
}
