import 'package:flutter/material.dart';

class PesquisaPagina extends StatefulWidget {
  const PesquisaPagina({super.key});

  @override
  State<PesquisaPagina> createState() => _PesquisaPaginaState();
}

class _PesquisaPaginaState extends State<PesquisaPagina> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Pesquisa'),
      ),
    );
  }
}
