import 'package:flutter/material.dart';
//import 'package:string_validator/string_validator.dart';

class FormUI extends StatefulWidget {
  var usernamecontroller = TextEditingController();
  var passwrdcontroller = TextEditingController();
  bool check = false;
  String email;
  String pass;
  setEmail() {
    this.email = email;
  }

  setPass() {
    this.pass = pass;
  }

  @override
  _FormUIState createState() => _FormUIState();
}

setValidate() {
  formkey.currentState.validate();
}

GlobalKey<FormState> formkey = GlobalKey<FormState>();

class _FormUIState extends State<FormUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: formkey,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              // validator: (String value) {
              //   if (value.length == 0) {
              //     return 'requeried value';
              //   } else if (!isEmail(value)) {
              //     return 'Invalid email syntax';
              //   }
              //  },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  labelText: 'Email',
                  fillColor: Colors.blue.withOpacity(0.2),
                  filled: true),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              validator: (String value) {
                if (value.length < 6) {
                  return 'requeried value';
                }
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  labelText: 'password',
                  fillColor: Colors.blue.withOpacity(0.2),
                  filled: true),
            ),
          ),
          RaisedButton(
              child: Text('validate'),
              onPressed: () {
                setValidate();
              })
        ],
      ),

//       body: Container(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           children: [
//             CustomTextFiled(
//               label: 'username',
//               controller: widget.usernamecontroller,
//             ),
//             CustomTextFiled(
//               label: 'password',
//               controller: widget.passwrdcontroller,
//               ispass: true,
//             ),

//             // TextField(
//             //   controller: widget.usernamecontroller,
//             // ),
//             // TextField(
//             //   controller: widget.passwrdcontroller,
//             // ),
//             // Row(
//             //   children: [
//             //     Text('accept'),
//             //     Checkbox(
//             //         value: widget.check,
//             //         onChanged: (value) {
//             //           setState(() {
//             //             widget.check = value;
//             //           });
//             //         }),
//             //   ],
//             // ),
//             // RaisedButton(
//             //     child: Text('submit'),
//             //     onPressed: () {
//             //       widget.check
//             //           ? print(widget.usernamecontroller.text +
//             //               ' ' +
//             //               widget.passwrdcontroller.text)
//             //           : print('no');
//             //     })
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TextFormWidget extends StatelessWidget {
//   String label;
//   TextFormWidget({this.label});
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//         child: Column(
//       children: [
//         Container(
//           margin: EdgeInsets.all(20),
//           child: TextFormField(
//             decoration: InputDecoration(
//                 border:
//                     OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
//                 labelText: this.label,
//                 fillColor: Colors.blue.withOpacity(0.2),
//                 filled: true),
//           ),
//         )
      //   ],
      //  )
    ));
  }
}

class CustomTextFiled extends StatefulWidget {
  String label;
  TextEditingController controller;
  bool ispass;
  CustomTextFiled({this.label, this.controller, this.ispass = false});

  @override
  _CustomTextFiledState createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {
  bool yy = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextField(
        obscureText: widget.ispass,
        decoration: InputDecoration(
            //  prefix: Icon(Icons.email),

            suffixIcon: Visibility(
              visible: true,
              child: IconButton(
                  icon: Icon(Icons.remove_red_eye),
                  onPressed: () {
                    setState(() {
                      widget.ispass = !widget.ispass;
                    });
                  }),
            ),
            // .icon(
            //   onPressed: () {
            //     yy = false;
            //   },
            //   icon: Icon(Icons.remove_red_eye),
            //   label: Text(''),
            // ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
            labelText: widget.label,
            fillColor: Colors.blue.withOpacity(0.2),
            filled: true),
      ),
    );
  }
}

class Custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FormUi(
        label: 'name',
      ),
      FormUi(
        label: 'email',
      ),
      FormUi(
        label: 'password',
      ),
    ]);
  }
}

class Mershant extends StatefulWidget {
  @override
  _MershantState createState() => _MershantState();
}

class _MershantState extends State<Mershant> {
  List categories = ['Fahion', 'Shoes', 'Electronics'];
  String valuee = 'Fahion';
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FormUi(
        label: 'name',
      ),
      FormUi(
        label: 'email',
      ),
      FormUi(
        label: 'password',
      ),
      FormUi(
        label: 'bio',
      ),
      FormUi(
        label: 'shop',
      ),
      FormUi(
        label: 'password',
      ),
      Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.blue.withOpacity(0.2)),
        child: DropdownButton<String>(
            value: this.valuee,
            onChanged: (v) {
              setState(() {
                this.valuee = v;
              });
            },
            items: categories.map((e) {
              return DropdownMenuItem<String>(
                child: Text(e),
                value: e,
              );
            }).toList()),
      )
    ]);
  }
}

class FormUi extends StatelessWidget {
  String label;
  FormUi({this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            labelText: this.label,
            fillColor: Colors.blue.withOpacity(0.2),
            filled: true),
      ),
    );
  }
}
