// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   double value = 0.0;
//   TextEditingController displayCurrency = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       title: 'Currency Converter App',
//       home:Scaffold(
//         backgroundColor: Colors.blue,
//         appBar: AppBar(
//           backgroundColor: Colors.amber,
//           title: const Text('Currency Converter App'),
          
//         ),
//         body: Column(
//           children: [
//               Center(
//               child: Padding(
//                 padding:const EdgeInsets.only(top: 70),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     const Icon(Icons.currency_pound_sharp,size: 100,),
//                     Expanded(
//                       child: Text(
//                         '1 = 2187   ${value.toStringAsFixed(2)}',
//                       style:const TextStyle(fontSize: 35),),
//                     ),
//                     const Icon(Icons.currency_bitcoin_sharp,size: 100,),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text('How much would you like to exchange',style: TextStyle(fontSize: 25),),
//               ],
//             ),
//             const SizedBox(height: 20),
//             TextField(
//               controller: displayCurrency,
//               decoration: const InputDecoration(
//                 filled: true,
//                 fillColor:,
//                 hintText: '20',
//                 label: Text('Enter Amount'),
//               ),
//             ),
//               const SizedBox(height: 20),
//             const SizedBox(
//               child: Text('R')
//               ),
//               const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: (){
//                 setState(() {
                  
//                   value = double.parse(displayCurrency.text) * 2187;
//                 });
                
//               }, 
//               child: const Text('Submit'),
//             ),
//           //widget can go here
//           ],
//         ),
//       ) ,
//     );
//   }
// }



