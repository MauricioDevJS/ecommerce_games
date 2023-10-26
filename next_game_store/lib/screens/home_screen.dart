import 'package:flutter/material.dart';
import 'package:next_game_store/constants/custom_app_bar.dart';
import 'package:next_game_store/constants/custom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildNewArrivalSection(),
          SizedBox(height: 16.0),
          _buildCategorySection(),
          SizedBox(height: 16.0),
          _buildFeaturedProductsSection(),
          SizedBox(height: 16.0),
          _buildCollectionsSection(),
          // ... outros widgets conforme necessário
        ],
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}

Widget _buildNewArrivalSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.network(''), // Coloque a URL da imagem do laptop aqui
      Text('Asus ROG Zephyrus G15'),
      ElevatedButton(
        onPressed: () {},
        child: Text('Shop Now'),
      ),
    ],
  );
}

Widget _buildCategorySection() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('All'),
      Text('Laptop'),
      Text('Computer'),
      Text('Graphic Card'),
      // ... outros itens de categoria
    ],
  );
}

Widget _buildFeaturedProductsSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Featured Products'),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildFeaturedProductItem('URL_DA_IMAGEM', 'Xbox One Controller',
              '49.99'), // Substitua pela URL da imagem do Xbox
          _buildFeaturedProductItem('URL_DA_IMAGEM', 'Asus ROG Gaming Monitor',
              '619.99'), // Substitua pela URL da imagem do monitor
        ],
      ),
    ],
  );
}

Widget _buildFeaturedProductItem(String imageUrl, String title, String price) {
  return Column(
    children: [
      Image.network(imageUrl,
          height: 100, width: 100), // Ajuste o tamanho conforme necessário
      Text(title),
      Text('\$$price'), // Use a moeda correta se não for dólar
    ],
  );
}

Widget _buildCollectionsSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Collections'),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildCollectionItem('URL_DA_IMAGEM', 'Rapoo C260',
              '489.99'), // Substitua pela URL da imagem da câmera
          _buildCollectionItem('URL_DA_IMAGEM', 'ASTRO Wireless',
              '90.99'), // Substitua pela URL da imagem do fone de ouvido
        ],
      ),
    ],
  );
}

Widget _buildCollectionItem(String imageUrl, String title, String price) {
  return Column(
    children: [
      Image.network(imageUrl,
          height: 100, width: 100), // Ajuste o tamanho conforme necessário
      Text(title),
      Text('\$$price'), // Use a moeda correta se não for dólar
    ],
  );
}
