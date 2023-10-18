
// import 'package:flutter/material.dart';

// final List<Map<String, dynamic>> booksList = [
//   {
//     'image': 'assets/rupees.png',
//     'title': 'The Great Gatsby',
//     'subtitle': '\$15.99',
//   },
//   {
//     'image': 'assets/rupees.png',
//     'title': 'To Kill a Mockingbird',
//     'subtitle': '\$12.49',
//   },
//   {
//     'image': 'assets/rupees.png',
//     'title': 'Pride and Prejudice',
//     'subtitle': '\$10.99',
//   },
//   {
//     'image': 'assets/rupees.png',
//     'title': '1984',
//     'subtitle': '\$14.75',
//   },
//   {
//     'image': 'assets/rupees.png',
//     'title': 'The Catcher in the Rye',
//     'subtitle': '\$11.25',
//   },
// ];


// class Profile extends StatelessWidget {
//   const Profile({super.key});

//   @override
//   Widget build(BuildContext context) {
//          const baseWidth = 375.0;
//       final double fem  = MediaQuery.of(context).size.width / baseWidth;
//       final double ffem = fem * 0.97;
//     return Scaffold(
//       backgroundColor: Colors.white,
     
//       body:  
//       Column(
//         children:[
//                      const SizedBox(height: 19),

//        Center(
//         child: Column(
                
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//              const SizedBox(height: 15),
//             const CircleAvatar(
//               radius: 50,
              
//             ),
//            const SizedBox(height: 19),
//             const Text(
//               'John Doe',
//               style: TextStyle(
//                 fontSize: 25,
//                 fontWeight: FontWeight.w700,
//                 color: Colors.black,
//               ),
//             ),
//             const Text(
//               'Library Enthusiast',
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.grey,
//               ),
//             ),
//             const SizedBox(height: 13),
//             SizedBox(width: 300 * fem, child: const Divider()),
//                         const SizedBox(height: 5),

//             const Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                 Text("21" , style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold
//                 ),),
//                 Text("Total Fine"),
//                   ],
//                 ),
                
//                  Column(
//                   children: [
//                 Text("21",style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold
//                 ),),
//                 Text("Total Books"),
//                   ],
//                 ),
//               ],
//             ),

//           ],
//         ),
//       ),
//                 const SizedBox(height: 50),
//      SizedBox(
//       width: 350*fem,
//        child: Padding(
//         padding: EdgeInsets.fromLTRB(20*fem, 0, 0, 0),
//         child: const Text("Your Fines",
//     textAlign: TextAlign.start,
//     style: TextStyle(
//                   fontSize: 21,
                  
//                   fontWeight: FontWeight.bold
//                 )))),
//                                 const SizedBox(height: 10),

//       fosterGlass(),
//         // Container( child:     fineList()),

//     ]));
//   }
// }

// class InfoBox extends StatelessWidget {
//   final String label;
//   final String value;

//   const InfoBox({super.key,  required this.label, required this.value});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: const Color.fromARGB(255, 187, 187, 187).withOpacity(0.1),
//         borderRadius: BorderRadius.circular(12),
      
//       ),
//       child: Column(
//         children: [
//           Text(
//             label,
//             style: const TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//               color: Colors.grey,
//             ),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             value,
//             style: const TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



// Widget fosterGlass(){
//   return Expanded(child:  Container(
//       width: 400,
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: const Color.fromARGB(255, 163, 230, 255).withOpacity(0.1),
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(40),
//           topRight: Radius.circular(40),
//         ),
//       ),
//       child:ListView.builder(
//         itemCount: booksList.length,
//         itemBuilder: (context, index) {
//           final book = booksList[index];
//           return  ListTile(
//             leading: Image.asset(book['image']),
//             title: Text(book['title']),
//             subtitle: Text(book['subtitle']),
//             onTap: () {
//               // Handle tap on the book item
//             },
//           );}
//           )
//     ));
// }