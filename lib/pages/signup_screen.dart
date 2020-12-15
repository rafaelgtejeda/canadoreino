import 'package:canadoreino/shared/widgets/bezier_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'base_screen.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 12, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: HexColor('#46531d')),
            ),
            Text('Voltar',
                style: GoogleFonts.qwigley(
                fontWeight: FontWeight.w700,
                fontSize: 28,
                color: HexColor('#46531d'),
                letterSpacing: 5.0,
              )
            )
          ],
        ),
      ),
    );
  }

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: HexColor('#46531d'),
                  letterSpacing: 1.0),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xFFF2F5ED),
                  filled: true))
        ],
      ),
    );
  }

  Widget _submitButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [HexColor('#46531d'), HexColor('#272e10')])),
      child: Text(
        'Cadastrar',
        style: GoogleFonts.qwigley(
          textStyle: Theme.of(context).textTheme.headline1,
          fontSize: 30,
          color: Colors.white,
          letterSpacing: 5.0,
        ),
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text('ou'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  Widget _facebookButton() {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff1959a9),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    topLeft: Radius.circular(5)),
              ),
              alignment: Alignment.center,
              child: Text('f',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400)),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff2872ba),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(5),
                    topRight: Radius.circular(5)),
              ),
              alignment: Alignment.center,
              child: Text('Entrar com o facebook',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
            ),
          ),
        ],
      ),
    );
  }

   Widget _titulo() {
    return Container(
      alignment: Alignment.center,
      child: Text('Cadastre-se', style: GoogleFonts.qwigley(
        textStyle: Theme.of(context).textTheme.headline1,
      fontSize: 61,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.italic,
      color: HexColor('#46531d'),
      letterSpacing: 5.0,
      )),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Email: "),
        _entryField("Senha: ", isPassword: true),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(

      height: height,

      child: Stack(
        children: <Widget>[

          Positioned(

              top: -height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: BezierContainer()),
          
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),

            child: SingleChildScrollView(

              child: Column(

                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[

                  SizedBox(height: height * .22),

                  _titulo(),

                  SizedBox(height: 20),

                  _emailPasswordWidget(),

                  SizedBox(height: 20),

                  _submitButton(),

                ],
              ),
            ),
          ),

          Positioned(top: 61, left: 0, child: _backButton()),
        ],
      ),
    ));
  }
}