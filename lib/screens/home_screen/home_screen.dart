import 'package:desafio_brisanet/screens/empty_favorites_screen/empty_favorites_screen.dart';
import 'package:desafio_brisanet/utils/colors.dart';
import 'package:desafio_brisanet/widgets/botton_bar/botton_bar.dart';
import 'package:desafio_brisanet/widgets/top_bar/top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int option = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: buttonLoginColor,
        centerTitle: true,
        title: Image.asset(
          'assets/logo_pokemon_2.png',
          scale: 1,
        ),
      ),
      body: Column(
        children: [
          TopBar(
            onTap: () {},
            option: option,
          ),
          Expanded(
            child: EmptyFavorites(),
          ),
          BottonBar(),
        ],
      ),
    );
  }
}
