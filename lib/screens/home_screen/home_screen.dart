import 'package:desafio_brisanet/screens/empty_favorites_screen/empty_favorites_screen.dart';
import 'package:desafio_brisanet/screens/search_screen/search_screen.dart';
import 'package:desafio_brisanet/screens/see_all_screen/see_all_screen.dart';
import 'package:desafio_brisanet/utils/colors.dart';
import 'package:desafio_brisanet/widgets/botton_bar/botton_bar.dart';
import 'package:desafio_brisanet/widgets/top_bar/top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/homeScreen';
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
            onTap1: () {
              setState(() {
                option = 1;
              });
            },
            onTap2: () {
              setState(() {
                option = 2;
              });
            },
            onTap3: () {
              setState(() {
                option = 3;
              });
            },
            option: option,
          ),
          //
          // Telas
          //
          if (option == 1)
            Expanded(
              child: EmptyFavorites(
                searchButton: () {
                  setState(() {
                    option = 2;
                  });
                },
              ),
            ),
          if (option == 2)
            Expanded(
              child: SearchScreen(),
            ),
          if (option == 3)
            const Expanded(
              child: SeeAllScreen(),
            ),
          const BottonBar(),
        ],
      ),
    );
  }
}
