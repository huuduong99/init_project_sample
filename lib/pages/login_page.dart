import 'package:app_localization/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:init_project_sample/core/constant/app_space.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _showPassword = false;
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
        key: _scaffoldMessengerKey, child: Scaffold(body: _buildBody()));
  }

  Widget _buildBody() {
    return Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.blue,
        ),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
               Text(
                S.current.login,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              spaceVertical30,
              _buildUsername(),
              const SizedBox(height: 10.0),
              _buildPassword(),
              _buildForgetPassword(),
              spaceVertical30,
              _buildLoginButton(),
              const SizedBox(height: 50.0),
              _buildSignUpButton()
            ],
          ),
        ));
  }

  Widget _buildUsername() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
         Text(
          S.current.userName,
          style: const TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: const Color(0xFF6CA8F1),
              borderRadius: BorderRadius.circular(10.0),
              // ignore: always_specify_types
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6.0,
                    offset: Offset(0, 5))
              ]),
          height: 60.0,
          child: TextField(
              controller: _userNameController,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.white),
              decoration:  InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.only(top: 14.0),
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  hintText: S.current.enterPassword,
                  hintStyle: const TextStyle(color: Colors.white54))),
        ),
      ],
    );
  }

  Widget _buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
         Text(
          S.current.password,
          style: const TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: const Color(0xFF6CA8F1),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6.0,
                    offset: Offset(0, 5))
              ]),
          height: 60.0,
          child: TextFormField(
              controller: _passwordController,
              obscureText: !_showPassword,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.only(top: 14.0),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: _showPassword ? Colors.black12 : Colors.white,
                    ),
                    onPressed: () {
                      setState(() => _showPassword = !_showPassword);
                    },
                  ),
                  hintText: 'Enter your password',
                  hintStyle: const TextStyle(color: Colors.white54))),
        ),
      ],
    );
  }

  Widget _buildForgetPassword() {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('Forgot password'),
        child:  Text(
          S.current.forgotPassword,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          FocusScope.of(context).unfocus();
          final String userName = _userNameController.text.trim().toString();
          final String password = _passwordController.text.trim().toString();
        },
        padding: const EdgeInsets.all(25.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child:  Text(
          S.current.login,
          style: const TextStyle(
              color: Color(0xFF527DAA),
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildSignUpButton() {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           Text(
            S.current.youDoNotHaveAccount,
            style: const TextStyle(color: Colors.white),
          ),
          FlatButton(
            onPressed: () {},
            child:  Text(
              S.current.register,
              style: const TextStyle(fontSize: 15.0),
            ),
          )
        ],
      ),
    );
  }
}
