import 'package:android_core_flutter/restaurant.dart';
import 'package:android_core_flutter/screens/menu_screen.dart';
import 'package:flutter/material.dart';

class RestaurantsScreen extends StatelessWidget {
  const RestaurantsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Digital House Foods'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: ListView.builder(
          itemCount: getRestaurantsData().length,
          itemBuilder: (context, position) {
            return getRestaurantCard(context, position);
          },
        ),
      ),
    );
  }

  Widget getRestaurantCard(BuildContext context, int i) {
    Restaurant restaurant = getRestaurantsData()[i];
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MenuScreen(restaurant: restaurant),
            ),
          );
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Material(
                child: Ink.image(
                  fit: BoxFit.cover,
                  height: 200,
                  image: AssetImage(restaurant.assetImage),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      restaurant.name,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      restaurant.address,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Fecha às ${restaurant.closingTime}",
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Restaurant> getRestaurantsData() => [
        Restaurant(
          "Tony Roma's",
          "Av. Lavandisca, 717 - Indianópolis, São Paulo",
          "22:00",
          "Salada com Molho de Gengibre",
          "assets/image1.jpg",
          "assets/image4.jpeg",
        ),
        Restaurant(
          "Aoyama - Moema",
          "Alameda dos Arapanés, 532 - Moema, São Paulo",
          "00:00",
          "Camarão ao Bafo",
          "assets/image4.jpeg",
          "assets/image1.jpg",
        ),
        Restaurant(
          "Outback - Moema",
          "Av. Moaci, 187 - Moema, São Paulo",
          "00:00",
          "Brunch",
          "assets/image5.jpeg",
          "assets/image3.jpg",
        ),
        Restaurant(
          "Sí Señor",
          "Alameda Jauaperi, 626 - Moema, São Paulo",
          "01:00",
          "Escondidinho ao Molho Bolonhesa",
          "assets/image3.jpg",
          "assets/image5.jpeg",
        ),
      ];
}
