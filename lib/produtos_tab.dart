// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'modelo/modelo_estado_app.dart';
import 'linha_item_produto.dart';

class ProdutosTab extends StatelessWidget {
  const ProdutosTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ModeloEstadoApp>(
      builder: (context, model, child) {
        final produtos = model.obtemProdutos();
        return CustomScrollView(
          semanticChildCount: produtos.length,
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Loja Cupertino'),
            ),
            SliverSafeArea(
              top: false,
              minimum: const EdgeInsets.only(top: 8),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  if (index < produtos.length) {
                    return LinhaItemProduto(
                      indice: index,
                      produto: produtos[index],
                      ultimoItem: index == produtos.length - 1,
                    );
                  }
                  return null;
                }),
              ),
            ),
          ],
        );
      },
    );
  }
}
