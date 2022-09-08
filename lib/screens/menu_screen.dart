import 'package:android_core_flutter/restaurant.dart';
import 'package:android_core_flutter/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key, required this.restaurant}) : super(key: key);

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(restaurant.assetImage),
                  fit: BoxFit.fill,
                ),
              ),
              height: 350,
              width: double.infinity,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Stack(
                    children: [
                      Text(
                        restaurant.name,
                        style: TextStyle(
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 1
                            ..color = Colors.black,
                          fontSize: 28,
                        ),
                      ),
                      Text(
                        restaurant.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 12.0,
                top: 24.0,
                right: 16.0,
                bottom: 12.0,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  Strings.mainDishes,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: StaggeredGrid.count(
                crossAxisSpacing: 2,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: getMenu(),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> getMenu() {
    List<Widget> dishes = [];

    for (var i = 0; i < 7; i++) {
      dishes.add(
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: InkWell(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Material(
                    child: Ink.image(
                      height: 100,
                      fit: BoxFit.fill,
                      image: AssetImage(restaurant.assetMenu),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(restaurant.mainDish),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return dishes;
  }
}
