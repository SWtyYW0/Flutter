import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'user_data.dart';
import 'userInfo.dart';

List<String> countries = [
  'Russia',
  'USA',
  'Canada',
  'Kazakhstan',
  'Japan',
  'China'
];
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, 
        title: Text(
          'Регистрация',
          style: TextStyle(color: Colors.white), 
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: RegistrationForm(),
        ),
      ),
      backgroundColor: Colors.black,
    ),
  ));
}






class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  String? selectedCountry = countries.isNotEmpty ? countries[0] : null;
  final TextEditingController countryController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  //final TextEditingController countryController = TextEditingController();
  //final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final MaskedTextController phoneNumberController =
      MaskedTextController(mask: '000-000-00-00');
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // Поле ввода логина
          TextFormField(
              controller: usernameController,
              decoration: InputDecoration(
              labelText: 'Логин',
              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0), 
              prefixIcon: Icon(Icons.person_2_rounded,
              color: Colors.white),
              border: UnderlineInputBorder( 
              borderRadius: BorderRadius.circular(15.0),
               borderSide: BorderSide.none, 
                  ),
                enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey), 
                //borderRadius: BorderRadius.circular(15.0),
                ),
                focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white), 
                //borderRadius: BorderRadius.circular(15.0),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                  Icons.clear,
                  color: Color.fromARGB(255, 167, 12, 1),), 
                onPressed: () {
                  
                  usernameController.clear();
                },
              ),
               labelStyle: TextStyle(color: Color.fromARGB(255, 153, 153, 153)),
            ),
            style: TextStyle(color: Colors.white),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Пожалуйста, введите логин';
              }
              return null;
            },
          ),
          SizedBox(height: 16.0),
          // Поле ввода пароля
          TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Пароль',
              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0), 
              prefixIcon: Icon(
                Icons.password_rounded,
                color: Colors.white),
              border: UnderlineInputBorder( 
              //borderRadius: BorderRadius.circular(15.0), 
                  ),
                   enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey), 
                  //borderRadius: BorderRadius.circular(15.0),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), 
                  //borderRadius: BorderRadius.circular(15.0),
                ),
                  suffixIcon: IconButton(
                  icon: Icon(
                  Icons.clear,
                  color: Color.fromARGB(255, 167, 12, 1),),
                onPressed: () {
                 
                  passwordController.clear();
                },
              ),
               labelStyle: TextStyle(color: Color.fromARGB(255, 153, 153, 153)),
            ),
            style: TextStyle(color: Colors.white),
            validator: (value) {
              if (value == null || value.length < 6) {
                return 'Пароль должен содержать минимум 6 символов';
              }
              if (!RegExp(r'^(?=.*[A-Z])(?=.*\d)').hasMatch(value)) {
                return 'Пароль должен содержать большую букву и цифру';
              }

              return null;
            },
          ),
          SizedBox(height: 16.0),
        ]
      )
    );



  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    countryController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    super.dispose();
  }
}
}