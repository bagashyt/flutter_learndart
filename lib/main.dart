import 'package:flutter/material.dart';
import 'package:flutter_learndart/product_card.dart';
import 'package:flutter_learndart/product_state.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: firstColor,
          title: Text("Latihan Product Card"),
        ),
        body: ChangeNotifierProvider<ProductState>(
          // ignore: deprecated_member_use
          builder: (context) => ProductState(),
          child: Container(
            margin: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Consumer<ProductState>(
                builder: (context, productState, _) => ProductCard(
                  imageURL:
                      "https://cdn-prod.medicalnewstoday.com/images/articles/308/308796/mixed-fruits.jpg",
                  name: "Buah-buahan mix 1kg",
                  price: "Rp 25.000",
                  quantity: productState.quantity,
                  notification:
                      (productState.quantity > 5) ? "Diskon 10%" : null,
                  onIncTap: () {
                    productState.quantity++;
                  },
                  onDecTap: () {
                    (productState.quantity >= 1)? productState.quantity-- : productState.quantity;
                  },
                  onAddCartTap: () {},
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
