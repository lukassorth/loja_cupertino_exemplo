// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:k1_app/principal_page.dart';

class AppLojaCupertino extends StatelessWidget {
  const AppLojaCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Este aplicativo foi desenhado para funcionar na vertical,
    // desta forma, nós podemos limitar a orientação para retrato
    // em pé e deitado.
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: PaginaPrincipalLojaCupertino(),
    );
  }
}
