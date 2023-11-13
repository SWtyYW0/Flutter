import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_7/auth/login/bloc/login_bloc.dart';
import 'package:practice_7/translations/locale_keys.g.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //states

  int _lanuage = 0;

  final _formKey = GlobalKey<FormState>();

  String selectedCountry = '';

  bool _hidePass = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  //functions
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocus.dispose();
    _passwordFocus.dispose();
    super.dispose();
  }

  bool _validateEmail(String input) {
    final emailExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailExp.hasMatch(input);
  }

  _validatePassword(String input) {
    if (input.isEmpty){
      return LocaleKeys.passwordErrorIsEmpty.tr();
    }
    if (input.length <= 8){
      return LocaleKeys.passwordErrorLenght.tr();
    }
    return null;
  }

  void fieldFocusChange(BuildContext context, FocusNode currentFocus, FocusNode nextFocus){
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  //interface
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (BuildContext context, LoginState state) {  
          if (state is LoginError) {
            print('---------------------');
            print(state.error);
            print('---------------------');
            var snackBar = SnackBar(
              elevation: 0,
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              content: AwesomeSnackbarContent(
                title: 'О нет!',
                message: 'Что то пошло не так! Ошибка: ${state.error}',
                contentType: ContentType.failure
              )
            );
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(snackBar);
          }

          if(state is LoginSuccess){
            Navigator.pushNamed(context, '/navigate');
          }
        },
        builder: ((context, state) {
          if(state is LoginLoading){
            return Scaffold(
              appBar: AppBar(
                title: const Text('Login'),
                centerTitle: true,
                automaticallyImplyLeading: false,
              ),
              body: const Center(
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: CircularProgressIndicator(
                    strokeWidth: 4,
                  )
                ),
              )
            );
          }

          return Scaffold(
            //backgroundColor:  Color.fromRGBO(250, 231, 201,1),
              appBar: AppBar(
                title: const Text('Log in'),
                centerTitle: true,
                automaticallyImplyLeading: false,
                backgroundColor:  Color.fromRGBO(176, 146, 106, 1.0),
              ),
              body: Column(
                children: [ 
                  Form(
                    key: _formKey,
                    child: Expanded(
                      child: ListView(
                        padding: EdgeInsets.all(20),
                        children: [
                          TextFormField(
                            focusNode: _emailFocus,
                            decoration: InputDecoration(
                              labelText: LocaleKeys.email.tr(),
                              hintText: LocaleKeys.emailHint.tr(),
                              prefixIcon: Icon(Icons.email, color: Color.fromRGBO(112, 98, 51, 1.0)),
                              suffixIcon: IconButton(
                                onPressed: () => setState(() {
                                  _emailController.clear();
                                }),
                                icon: Icon(Icons.delete_outline, color: Colors.red),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Color.fromRGBO(112, 98, 51, 1.0), width: 1),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide(color: Color.fromRGBO(112, 98, 51, 1.0), width: 1),
                              ),
                              focusedErrorBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide(color: Color.fromRGBO(112, 98, 51, 1.0), width: 1),
                              ),
                              errorBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide(color: Color.fromRGBO(112, 98, 51, 1.0), width: 1),
                              ),
                            ),
                            controller: _emailController,
                            onFieldSubmitted: (_) {
                              fieldFocusChange(context, _emailFocus, _passwordFocus);
                            },
                            validator: (input) {
                              if (!_validateEmail(input!)) {
                                return LocaleKeys.emailError.tr();
                              }
                              return null;
                            },
                            onChanged: (text){
                              setState(() {
                                _emailController.text = text;
                              });
                            },
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            focusNode: _passwordFocus,
                            decoration: InputDecoration(
                              labelText: LocaleKeys.password.tr(),
                              hintText: LocaleKeys.passwordHint.tr(),
                              prefixIcon: const Icon(Icons.vpn_key_rounded , color: Color.fromRGBO(112, 98, 51, 1.0)),
                              suffixIcon: IconButton(
                                onPressed: () => setState(() {
                                  _hidePass = !_hidePass;
                                }),
                                icon: _hidePass ? Icon(Icons.visibility_off, color: Colors.grey) : Icon(Icons.visibility)
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.black, width: 1),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide(color:Color.fromRGBO(112, 98, 51, 1.0), width: 1),
                              ),
                              focusedErrorBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide(color: Color.fromRGBO(112, 98, 51, 1.0), width: 1),
                              ),
                              errorBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide(color: Color.fromRGBO(112, 98, 51, 1.0), width: 1),
                              ),
                            ),
                            obscureText: _hidePass,
                            controller: _passwordController,
                            validator: (input) {
                              return _validatePassword(input!);
                            },
                            onChanged: (text){
                              setState(() {
                                _passwordController.text = text;
                              });
                            },
                          ),
                          const SizedBox(height: 20),
                         ElevatedButton(
  onPressed: () async {
    if (_formKey.currentState!.validate()) {
      BlocProvider.of<LoginBloc>(context).add(LoginButtonPressed(_emailController.text, _passwordController.text));
    }
  },
  child: Text(
    LocaleKeys.submit.tr(),
    style: TextStyle(
      color: Color(0xFF706233), // Цвет текста
    ),
  ),
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(250, 231, 201,1)), // Устанавливаем прозрачный цвет фона
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0), // Радиус округлых углов
        side: BorderSide(
          color: Color(0xFF706233), // Цвет рамки
        ),
      ),
    ),
  ),
),
                          const SizedBox(height: 20),
                          TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/register');
                            }, 
                            child: Text('Register', style: TextStyle(color: Color.fromRGBO(112, 98, 51, 1.0),),
                            ) 
                          ),
                                            IconButton(onPressed: (){
                    if (_lanuage == 0){
                      context.setLocale(Locale('en'));
                      setState(() {
                        _lanuage = 1;
                      });
                    } else {
                      context.setLocale(Locale('ru'));
                      setState(() {
                        _lanuage = 0;
                      });
                    }
                  }, icon: Icon(Icons.translate, color: Color.fromRGBO(112, 98, 51, 1.0))),

                          
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        ), 
      )
    );
  }
}