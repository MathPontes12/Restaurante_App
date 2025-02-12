import 'package:cardapio/screens/home.dart';
import 'package:cardapio/screens/orders.dart';
import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
        child: ListView(
          children: <Widget>[
            ListTile(
              textColor: AppColors.drawerFontColor,
              title: const Text(
                "Conta",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
            ListTile(
              iconColor: AppColors.drawerIconColor,
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) {
                  return const Orders();
                })));
              },
              title: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.receipt_long),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "Pedidos",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    )),
                  ]),
            ),
            ListTile(
              iconColor: AppColors.drawerIconColor,
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) {
                  return const Home();
                })));
              },
              title: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.fact_check_outlined),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "Tela Inicial",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    )),
                  ]),
            )
          ],
        ));
  }
}
