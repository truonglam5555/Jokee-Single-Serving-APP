import 'package:flutter/material.dart';
import 'package:jokeesingleserving/core/themes/themes_app.dart';
import 'package:jokeesingleserving/home/home_page.dart';

void main() {
  // Read input
  List<int> arr = [1, 2, 3, 4, 5];

  // Call the function with the input
  miniMaxSum(arr);
  runApp(const MyApp());
}

void miniMaxSum(List<int> arr) {
  // Sort the array in ascending order
  arr.sort();

  // Calculate the minimum sum (sum of the first four elements)
  int minSum = arr.sublist(0, 4).reduce((a, b) => a + b);

  // Calculate the maximum sum (sum of the last four elements)
  int maxSum = arr.sublist(1).reduce((a, b) => a + b);

  // Print the results
  print('$minSum $maxSum');

  // Task 1: Count total of array
  int total = arr.reduce((a, b) => a + b);
  print("Total of the array: $total");

  // Task 2: Find min in array
  int min = arr.reduce((a, b) => a < b ? a : b);
  print("Minimum value in the array: $min");

  // Task 3: Find max in array
  int max = arr.reduce((a, b) => a > b ? a : b);
  print("Maximum value in the array: $max");

  // Task 4: Find even elements in array
  List<int> evenNumbers = arr.where((element) => element % 2 == 0).toList();
  print("Even elements in the array: $evenNumbers");

  // Task 5: Find odd elements in array
  List<int> oddNumbers = arr.where((element) => element % 2 != 0).toList();
  print("Odd elements in the array: $oddNumbers");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Jokee Single Serving APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeApp.appTheme,
      home: HomePage(),
    );
  }
}
