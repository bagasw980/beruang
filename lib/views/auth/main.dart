import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const CarouselView(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton(
                onPressed: () => Navigator.pushNamed(context, '/login'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black87,
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 46),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: const Text('Sign In', style: TextStyle(fontSize: 20)),
              ),
              FilledButton(
                onPressed: () => Navigator.pushNamed(context, '/register'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent,
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 46),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: const Text('Register', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CarouselView extends StatefulWidget {
  const CarouselView({super.key});

  @override
  State<StatefulWidget> createState() => _CarouselViewState();
}

class _CarouselViewState extends State<CarouselView> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: const <Widget>[
            CarouselItem(
              imageUrl: 'assets/images/bg-human.png',
              title: 'Team work all',
              subTitle:
                  'Convallis vitae, dictum justo, iaculis id. Cras a ac augue netus egestas semper varius facilis id.',
            ),
            CarouselItem(
              imageUrl: 'assets/images/bg-human.png',
              title: 'Team work all',
              subTitle:
                  'Convallis vitae, dictum justo, iaculis id. Cras a ac augue netus egestas semper varius facilis id.',
            ),
            CarouselItem(
              imageUrl: 'assets/images/bg-human.png',
              title: 'Team work all',
              subTitle:
                  'Convallis vitae, dictum justo, iaculis id. Cras a ac augue netus egestas semper varius facilis id.',
            ),
            CarouselItem(
              imageUrl: 'assets/images/bg-human.png',
              title: 'Team work all',
              subTitle:
                  'Convallis vitae, dictum justo, iaculis id. Cras a ac augue netus egestas semper varius facilis id.',
            ),
          ],
          options: CarouselOptions(
            enableInfiniteScroll: false,
            height: 450,
            viewportFraction: 1,
            enlargeCenterPage: false,
            enlargeFactor: 0.5,
            onPageChanged: (index, reason) {
              setState(() {
                pageIndex = index;
              });
            },
          ),
        ),
        SizedBox(
          height: 65, // Adjust the height as needed
          child: CarouselIndicator(
            color: Colors.grey, // Optional: Customize the dot color
            activeColor:
                Colors.indigoAccent, // Optional: Customize the active dot color
            count: 4, // Number of items in the CarouselSlider
            index: pageIndex, // Initial index (set to 0)
            width: 8,
            height: 8,
            space: 10,
          ),
        ),
      ],
    );
  }
}

class CarouselItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  const CarouselItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 50,
        ),
        Image(
          image: AssetImage(imageUrl),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          width: 260,
          child: Text(
            subTitle,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
