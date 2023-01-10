import 'package:flutter/material.dart';

class SalvarPagina extends StatefulWidget {
  const SalvarPagina({super.key});

  @override
  State<SalvarPagina> createState() => _SalvarPaginaState();
}

class _SalvarPaginaState extends State<SalvarPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Salvar'),
      ),
    );
  }
}
