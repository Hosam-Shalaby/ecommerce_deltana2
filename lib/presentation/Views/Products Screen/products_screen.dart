import 'package:ecommerce_deltana2/presentation/Views/widgets/products_widget.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});
  static const String routeName = 'ProductsScreen';

  @override
  Widget build(BuildContext context) {
    var title = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
          title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      )),
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: .6,
              crossAxisCount: 3,
              // mainAxisSpacing: 3,
              crossAxisSpacing: .1),
          children: [
            ProductWidget(
                text1: 'Radhuni Shemai-\n200 gm-4-2-15-\nVD-SQ',
                img: 'assets/images/makrona.png',
                price: '৳60'),
            ProductWidget(
                text1: 'Radhuni Shemai-\n200 gm-4-2-15-\nVD-SQ',
                img: 'assets/images/roz.png',
                price: '৳60'),
            ProductWidget(
                text1: 'Radhuni Shemai-\n200 gm-4-2-15-\nVD-SQ',
                img: 'assets/images/cheese.png',
                price: '৳60'),
            ProductWidget(
                text1: 'Radhuni Shemai-\n200 gm-4-2-15-\nVD-SQ',
                img: 'assets/images/makrona.png',
                price: '৳60'),
            ProductWidget(
                text1: 'Radhuni Shemai-\n200 gm-4-2-15-\nVD-SQ',
                img: 'assets/images/coffe.png',
                price: '৳60'),
            ProductWidget(
                text1: 'Radhuni Shemai-\n200 gm-4-2-15-\nVD-SQ',
                img: 'assets/images/cheese.png',
                price: '৳60'),
            ProductWidget(
                text1: 'Radhuni Shemai-\n200 gm-4-2-15-\nVD-SQ',
                img: 'assets/images/makrona.png',
                price: '৳60'),
            ProductWidget(
                text1: 'Radhuni Shemai-\n200 gm-4-2-15-\nVD-SQ',
                img: 'assets/images/roz.png',
                price: '৳60'),
            ProductWidget(
                text1: 'Radhuni Shemai-\n200 gm-4-2-15-\nVD-SQ',
                img: 'assets/images/makrona.png',
                price: '৳60'),
            ProductWidget(
                text1: 'Radhuni Shemai-\n200 gm-4-2-15-\nVD-SQ',
                img: 'assets/images/makrona.png',
                price: '৳60'),
            ProductWidget(
                text1: 'Radhuni Shemai-\n200 gm-4-2-15-\nVD-SQ',
                img: 'assets/images/roz.png',
                price: '৳60'),
            ProductWidget(
                text1: 'Radhuni Shemai-\n200 gm-4-2-15-\nVD-SQ',
                img: 'assets/images/makrona.png',
                price: '৳60'),
          ]),
    );
  }
}
