import 'package:flutter/material.dart';

// class LoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: const <Widget>[
//         Padding(
//           padding: EdgeInsets.all(8),
//           child: TextField(
            
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: 'Enter your email address'
//             ),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.all(8),
//           child: TextField(
//             obscureText: true,
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: 'Enter your password' 
//               ),
//           ),
//         )
//       ],
//     );
//   }
// }

//rewriting to allow verfication
//uses keys to keep track of the state and verification
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //creating a key to allow validation and is created globably
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
            TextFormField(
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'Please enter some text';
                }
                return null;
              },
            )
        ],
      )
    );
  }
}