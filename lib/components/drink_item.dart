import 'package:flutter/material.dart';

class DrinkItem extends StatelessWidget {
const DrinkItem({ Key? key, required this.imageURI, required this.itemTitle, required this.itemPrice }) : super(key: key);
final String imageURI;
final String itemTitle;
final String itemPrice;

  @override
  Widget build(BuildContext context){
    return Card(
      clipBehavior: Clip.hardEdge,
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      elevation: 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Image(
            height: MediaQuery.of(context).orientation == Orientation.landscape ? 167 : 142,
            width: double.infinity,
            image: AssetImage(imageURI),
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(itemTitle, style: const TextStyle(fontSize: 16),),
                Text("R\$ " + itemPrice),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
