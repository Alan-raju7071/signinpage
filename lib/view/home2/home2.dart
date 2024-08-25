import 'package:flutter/material.dart';
import 'package:signinpage/view/home1/home1.dart';

class Home2 extends StatefulWidget {

  const Home2({super.key});

  @override
  State<Home2> createState() => _MyappState();
}

class _MyappState extends State<Home2> {
  TextEditingController email2controller=TextEditingController();
   TextEditingController passcontroller=TextEditingController();
    TextEditingController pass2controller=TextEditingController();
  
  
   final _formKeyemail = GlobalKey<FormState>();
    final _formKeypass = GlobalKey<FormState>();
     final _formKeypass2 = GlobalKey<FormState>();
  
    



   
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
        body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Center(
                child: Text("Sign Up for Free",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),
                ),
              ),
              SizedBox(height: 80),
              //singup email
              Form(
                key: _formKeyemail,
                
                child: TextFormField(
                  controller:email2controller ,
                  
                  
                  
                  
                  decoration: InputDecoration(
                    hintText:"Your Email Adress",
                    
                    
                    label: Text("Email"),
                    
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black,width: 5),
                
                
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
                     
                     if(!email2controller.text.contains("@")){
                    return "Enter valid text";
                   } else{
                    return null;
                   }
                  
                   
                      


                    
                    
                  },
                
                     ),
              ),
              Text(email2controller.text),
              SizedBox(height: 10),

              //signup password
              Form(
                key: _formKeypass,
                child: TextFormField(
                  controller:passcontroller ,
                    decoration: InputDecoration(
                    hintText:"Your Password",
                    label: Text("Password"),
                    
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red,width: 5),
                
                
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
              SizedBox(height: 10),

              //signup password 2
              Form(
                key:_formKeypass2 ,
                child: TextFormField(
                  controller: pass2controller,
                    decoration: InputDecoration(
                    hintText:"Your Confirm Password",
                    label: Text("Password"),
                    
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red,width: 5),
                
                
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
                     if(passcontroller.text!=pass2controller.text){
                      return "enter valid text";
                    }else if(pass2controller.text.isEmpty){
                      return "enter valid text";
                    }

                    
                    
                  },
                
                ),
              ),
              SizedBox(height: 10),
              
              
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Colors.blueAccent,
                  ),
                  

                ),
                  
                  
                
                
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Home1())
                  );

                   _formKeyemail.currentState!.validate();
                    _formKeypass.currentState!.validate();
                     _formKeypass2.currentState!.validate();
              
              
              
                
              },
               child:Center(
                
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("Sign Up",
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
                   Text("Already have account? ",
                   style: TextStyle(
                    color: Colors.black,

                   ),
                   ),
                   Text("Sign in",
                   style: TextStyle(
                    color: Colors.blueAccent,
                   ),
                   )
                 ],
               )
                
            ],
            
          
          ),
        ),
      ),
    );
  }
}