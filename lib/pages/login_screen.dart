import 'package:flutter/material.dart';
import 'package:canadoreino/shared/helpers/validators.dart';
import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
      emailController.dispose();
      senhaController.dispose();     
      super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {   
    
    return SafeArea(
        top: true,
        bottom: true,
        child: Container(
        color: HexColor('#46531d'),
        child: ListView(
                children: <Widget>[
                  Center(
                    child: Column(
                      children: <Widget>[
                        _logo(),
                        Card(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          child: Form(
                              key: formKey,
                              child: ListView(
                              padding: const EdgeInsets.all(16),
                              shrinkWrap: true,
                              children:<Widget>[                                
                                TextFormField(
                                  controller: emailController,
                                  decoration: const InputDecoration(hintText: 'Email:'),
                                  keyboardType: TextInputType.emailAddress,
                                  autocorrect: false,                                 
                                  validator: (value){
                                    if(!emailValid(value)){
                                       return 'E-mail inválido';
                                    }else{
                                        
                                  return null;
                                    }
                                  
                                  },
                                ),

                                TextFormField(
                                  controller: senhaController,
                                  decoration: const InputDecoration(hintText: 'Senha:'),                                
                                  autocorrect: false,
                                  obscureText: true,
                                  validator: (value){
                                    if(value.isEmpty  || value.length < 6)
                                      return 'Senha inválida';
                                    return null;
                                  },
                                ),

                                SizedBox(height: 18),

                                Align(
                                  alignment: Alignment.centerRight,
                                  child: FlatButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: (){

                                    },
                                    child: Text('Esqueci minha senha'),
                                  ),
                                ),
                                
                                SizedBox(height: 18),
                                
                                ArgonButton(
                                    
                                    height: 50,
                                    //roundLoadingShape: true,
                                    width: MediaQuery.of(context).size.width * 0.45,
                                    minWidth: MediaQuery.of(context).size.width * 0.10,
                                    onTap: (startLoading, stopLoading, btnState) {
                                      if (btnState == ButtonState.Idle) {

                                        startLoading();
                                        
                                        if(formKey.currentState.validate()){ }
                                        
                                      }else{

                                        stopLoading();

                                      } 

                                       
                                    },
                                    child: Text(
                                      "Entrar",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    loader: Container(
                                      padding: EdgeInsets.all(10),
                                      child: SpinKitRotatingCircle(
                                        color: Colors.white,
                                        // size: loaderWidth ,
                                      ),
                                    ),
                                    borderRadius: 10.0,
                                    color: Color(0xFFfb4747),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
        ),
      ),
    );
  }

  Widget _logo() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 33),
        child: Image.asset(
          'images/logo/logo.png',
          width: 181.0,
        ),
      ),
    );
  }

  
}