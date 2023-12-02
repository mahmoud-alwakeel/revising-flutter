import 'package:flutter/material.dart';

class RevTxtFormField extends StatefulWidget {
  @override
  State<RevTxtFormField> createState() => _RevTxtFormFieldState();
}

class _RevTxtFormFieldState extends State<RevTxtFormField> {

  String? username;
  String? password;

  bool isObscured = true;

  GlobalKey<FormState> formState = GlobalKey();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('text form field'),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Form(
          key: formState,
          child: Column(
            children: [
              TextFormField(
                onSaved: (val) {
                  username = val;  
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "username can't be empty";
                  }
                  if (value.length < 3) {
                    return "username can't less than 3 characters";
                  }  
                  else if (value.length > 40) {
                    return "username can't more than 40 characters";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple, width: 2)
                ),
                  label: Text('username'),
                  icon: Icon(Icons.person),
                contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10),
                ),
              ),
              const SizedBox(height: 12,),
              TextFormField(
                //autovalidateMode: AutovalidateMode.always,
                obscureText: isObscured,
                onSaved: (val) {
                  password = val;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "password can't be empty";
                  }
                  if (value.length < 8) {
                    return "password can't less than 8 characters";
                  }  
                  return null;
                },
                decoration:  InputDecoration(
                  border: const OutlineInputBorder(),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2)
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple, width: 2)
                ),
                  label: const Text('password'),
                  icon: const Icon(Icons.lock),

                  suffixIcon: IconButton(
                    onPressed: (){
                    setState(() {
                      isObscured = !isObscured;
                    });
                  }, icon: Icon(
                    isObscured? Icons.remove_red_eye: Icons.remove_red_eye_outlined)
                  ),
                contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10),
                ),
              ),
              const SizedBox(height: 20,),
              MaterialButton(onPressed: () {
                if(formState.currentState!.validate()) {
                  formState.currentState!.save();
                  print('valid');
                  print(username);
                  print(password);
                } else {
                  print('not valid');
                }
              },
              color: Colors.purple[800],
              child: const Text('Sign in', style: TextStyle(fontSize: 20, color: Colors.white),),
              ),
            ],
          ),),
      ),
    );
  }
}