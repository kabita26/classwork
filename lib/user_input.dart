// import 'dart:io';

// void main() {
//   List<int> lstInt = [];

//   for (int i = 0; i < 5; i++) {
//     // User input
//     print('Enter a value : ');
//     int val = int.parse(stdin.readLineSync()!);
//     lstInt.add(val);
//   }
//   // Print value
//   printArr(lstInt);
// }

// void printArr(List<int> arr) {
//   print('---------Array Values Are----------');
//   for (int i = 0; i < 5; i++) {
//     print(arr[i]);
//   }

//   // =================== OR ====================
//   for (int i in arr) {
//     print(i);
//   }
// }

// void countEvenNo(List<int> arr) {
//   int count = 0;
//   for (int i in arr) {
//     if (i % 2 == 0) {
//       count++;
//     }
//   }

//   print('No of even nos are : $count');
// }

void main() {
  Map cityCountry = <String, String>{};
  cityCountry['NewYork'] = 'USA';
  cityCountry['London'] = 'UK';
  cityCountry['Paris'] = 'France';
  cityCountry['Berlin'] = 'Germany';

  cityCountry.forEach((city, country) {
    print('$city is in $country');
   
  });
  String searchValue="London";
   print('$searchValue is in ${cityCountry[searchValue]}');
    
}
