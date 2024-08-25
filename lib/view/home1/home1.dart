import 'package:flutter/material.dart';
import 'package:signinpage/view/home2/home2.dart';
String Email=""; 
String Password=""; 


class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passcontroller=TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();
  
  
  

   
    
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Center(
                child: Text("Sign in to Your Account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),
                ),
              ),
              SizedBox(height: 100),
              Form(
                key:_formKey,
                //email
                child: TextFormField(
                  controller:emailcontroller,
                  
                  
                  
                  
                  decoration: InputDecoration(
                    hintText:"email",
                    
                    
                    label: Text("Your email Adress"),
                    
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.green,width: 5),
                
                
                    ),
                    enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black,width: 5),
                
                    ),
                    errorBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red,width: 5),

                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red,width: 5),


                    ),
                  
                    
                  ),
                 validator: (value) {
                   if(Email!=emailcontroller){
                   
                    return "Enter valid text";
                   } 
                    
                   
                 },
                    ),
              ),
              
              Text(emailcontroller.text),
              SizedBox(height: 20),

             //password 

              Form(
                key: _formKey1,
                child: TextFormField(
                  controller:passcontroller ,
                  
                    decoration: InputDecoration(
                    hintText:"Your Password",
                    label: Text("Password"),
                    
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.green,width: 5),
                
                
                    ),
                    
                    enabledBorder: OutlineInputBorder(
                      
                       borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black,width: 5),
                      
                
                    ),
                    errorBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red,width: 5),

                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red,width: 5),


                    ),
                    
                      
                
                    
                    
                  ),
                  validator: (value) {
                    if(passcontroller.text.length<8 ){
                      return "enter minimum 8 chareters";
                    }
                  },
                
                
                ),
              ),
              Text(passcontroller.text),
              
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    child: Icon(Icons.mark_chat_read),
                  ),
                  Text("Remember Me",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),
                  Spacer(),
                  Text("Forgot Password",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                  )
                ],
              ),
              SizedBox(height:30),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Colors.blueAccent,
                  )
                  

                ),
                   onPressed: () {
                    _formKey.currentState!.validate();
                    _formKey1.currentState!.validate();
                    Email=emailcontroller.text;
                    Password=passcontroller.text;
                    
                      
                    
               
               print(emailcontroller.text);
               
                
              },
               child:Center(
                
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("Sign in",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      
                      ),
                      ),
                    ),
                  ),
                 
                 ),
               ),
               Spacer(),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Dont't have an account?",
                   style: TextStyle(
                    color: Colors.black,
                   ),
                   ),
                   TextButton(onPressed: () {
                     Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Home2(),)
                     );
                   }, child: Text("Sign in",
                   style: TextStyle(
                    color: Colors.blueAccent,
                   ),
                   )),
                   
                    
                   
                   
                 ],
               ),
               
                
            ],
            
          
          ),
        ),
      ),
    );
  }
}