// ignore_for_file: prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart'; //NOVO

import 'app.dart';
import 'modelo/modelo_estado_app.dart'; //NOVO

void main() {
  return runApp(
    ChangeNotifierProvider<ModeloEstadoApp>(
      //NOVO
      create: (_) => ModeloEstadoApp()..carregaProdutos(), //NOVO
      child: AppLojaCupertino(), //NOVO
    ),
  );
}
