import 'package:cardapio/cardapio.dart';
import 'package:cardapio/components/main_drawer.dart';
import 'package:cardapio/components/order_item.dart';
import 'package:cardapio/components/payment_method.dart';
import 'package:cardapio/components/payment_total.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});
  final List pedidos = pedido;

  @override
  State <Orders> createState() =>  OrdersState();
}

class  OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Restaurante"),
        backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(
              Icons.account_circle,
              size: 32,
            ),
          )
        ],
        centerTitle: true,
      ),
     
      drawer: const MainDrawer(),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: CustomScrollView(
          slivers: [
            
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(bottom: 8),
              child: Text('Pedido', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              ),
            ), 

            SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return OrderItem(
              imageURI: pedido[index]['image'], 
              itemTitle: pedido[index]['name'], 
              itemPrice: pedido[index]['price'],       
          );
          },
          childCount: pedido.length
          ),
          ),

            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(bottom: 8, top: 16),
              child: Text('Pagamento', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              ),
            ), 
            
            const SliverToBoxAdapter(child: PaymentMethod(),),

            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(bottom: 8, top: 16),
              child: Text('Confirmar', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              ),
            ), 

            const SliverToBoxAdapter(child: PaymentTotal(),),

            ]
          ),
      )
  );
  }
}