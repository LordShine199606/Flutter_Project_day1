import 'package:first_project_text/views/pages/pesquisar_page.dart';
import 'package:first_project_text/views/pages/page_inicial.dart';
import 'package:first_project_text/views/pages/perfil.dart';

import 'package:first_project_text/views/pages/salvar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;

  static List<Widget> pages = const [
    PageInicial(),
    PesquisaPagina(),
    SalvarPagina(),
    PerfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: pages.elementAt(currentIndex),
            bottomNavigationBar: GNav(
                onTabChange: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                tabBorderRadius: 10,
                gap: 8,
                color: Colors.grey,
                activeColor: Colors.white,
                iconSize: 18,
                tabBackgroundColor: Colors.deepPurple,
                selectedIndex: currentIndex,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                tabMargin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                tabs: const [
                  GButton(
                    icon: Icons.home_filled,
                    text: 'Pagina Inicial',
                  ),
                  GButton(icon: Icons.search, text: 'Pesquisar'),
                  GButton(icon: Icons.bookmark, text: 'Salvar'),
                  GButton(icon: Icons.person, text: 'Perfil'),
                ])));
  }
}
