import 'package:flutter/material.dart';

class RevTextField extends StatelessWidget {
RevTextField({super.key});

  TextEditingController userController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController messageController = TextEditingController();

  String? textVal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text field'),),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
              TextField(
                controller: userController,
              decoration: const InputDecoration(
                label: Text('username'),
                icon: Icon(Icons.person),
                contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10),
              ),
              maxLines: 1,
            ),
              TextField(
              controller: phoneController,
              decoration: const InputDecoration(
                label: Text('phone number'),
                icon: Icon(Icons.phone),
                contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10),
              ),
              keyboardType: TextInputType.phone,
              maxLines: 1,
            ),
            SizedBox(height: 12,),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                label: Text('email'),
                icon: Icon(Icons.email),
                contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10),
              ),
              keyboardType: TextInputType.emailAddress,
              maxLines: 1,
            ),
            SizedBox(height: 12,),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                label: Text('password'),
                icon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10),
              ),
              maxLines: 1,
            ),
            SizedBox(height: 12,),
            TextField(
              //controller: messageController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple, width: 2)
                ),
                label: Text('type your message here'),
                
                alignLabelWithHint: true,
                icon: Icon(Icons.email),
                contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10),
              ),
              maxLength: 100,
              maxLines: 10,
              minLines: 5,
              onChanged: (val){
                print(val);
                //textVal = val;
              },
            ),
            MaterialButton(onPressed: (){
              print(userController.text);
              print(phoneController.text);
              print(emailController.text);
              print(passwordController.text);
              print(messageController.text);
            }, child: Text('Sign up', style: TextStyle(fontSize: 20, color: Colors.white), ),color: Colors.purple[800],
            ),
            //Text('$textVal'),
          ],
        ),
      ),
    );
  }
}