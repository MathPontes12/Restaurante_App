import 'package:cardapio/cardapio.dart';
import 'package:cardapio/components/drink_item.dart';
import 'package:flutter/material.dart';

class DrinkMenu extends StatelessWidget {
  const DrinkMenu({super.key});
  final items = drinks;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Padding(padding: EdgeInsets.only(bottom: 16.0),
            child: 
            Text('Bebidas', style: TextStyle(fontFamily: 'Caveat', fontSize: 32), textAlign: TextAlign.center,))),
            
            SliverGrid(delegate: SliverChildBuilderDelegate((context, index) {
              return DrinkItem(
                
                imageURI: items[index]['image'],
                itemTitle: items[index]['name'],
                itemPrice: items[index]['price'],
                
                );
            },
            childCount: items.length
            ), gridDelegate: 
            SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: MediaQuery.of(context).orientation == Orientation.landscape ? 3 : 2, 
              mainAxisSpacing: 8, 
              crossAxisSpacing: 8, 
              childAspectRatio: MediaQuery.of(context).orientation == Orientation.landscape ? 1 : 0.81)) // mostra em quantas colunas quer o conteudo
        ]
        ,
      ),
    );
  }
}