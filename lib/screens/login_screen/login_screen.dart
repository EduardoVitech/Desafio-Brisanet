import 'package:desafio_brisanet/utils/firebase_constants.dart';
import 'package:desafio_brisanet/widgets/button_login/button_login.dart';
import 'package:desafio_brisanet/widgets/textfield_login/textfield_login.dart';
import 'package:desafio_brisanet/widgets/button_theme/button_theme.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  width: size.width,
                  child: Image.asset(
                    'assets/fundo_login.png',
                    alignment: Alignment.bottomCenter,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                    left: 25,
                    right: 25,
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/pokemon_logo.png',
                        alignment: Alignment.bottomCenter,
                      ),
                      SizedBox(height: size.height * 0.1),
                      Container(
                        width: size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Comece a coletar',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'pokemons!',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.08),
                      TextFieldLogin(
                        textController: _emailController,
                        hintText: 'Email',
                        obscureText: false,
                      ),
                      const SizedBox(height: 10),
                      TextFieldLogin(
                        textController: _passwordController,
                        hintText: 'Password',
                        obscureText: true,
                      ),
                      const SizedBox(height: 20),
                      ButtonLogin(
                        onTap: () => authController.loginUser(
                          _emailController.text,
                          _passwordController.text,
                        ),
                        textButton: 'Entrar',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 25,
                    left: 25,
                  ),
                  child: Container(
                    width: size.width,
                    height: 30,
                    alignment: Alignment.centerLeft,
                    child: ButtonThemeLogin(
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
