// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';

import 'busca_tab.dart';
import 'carrinho_tab.dart';
import 'produtos_tab.dart';

class PaginaPrincipalLojaCupertino extends StatelessWidget {
  const PaginaPrincipalLojaCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CupertinoTabView returnValue = CupertinoTabView();

    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Produtos',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Busca',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
            label: 'Carrrinho',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            returnValue = CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: ProdutosTab(),
                );
              },
            );
            break;
          case 1:
            returnValue = CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: BuscaTab(),
                );
              },
            );
            break;
          case 2:
            returnValue = CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: CarrinhoTab(),
                );
              },
            );
            break;
        }
        return returnValue;
      },
    );
  }
}
