import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(

        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        children: [
          TextButton(
            onPressed: () {Navigator.pushNamed(context, '/categories_screen');},
            child: Text(
              'Categories',
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            child: GridView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, mainAxisSpacing: 5),
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.red,
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {Navigator.pushNamed(context, '/products_screen');},
            child: Text(
              'Products',
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            child: GridView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, mainAxisSpacing: 5),
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.orange,
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Offers',
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 7,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.person),
                title: Text('Offer ${index + 1}'),
                subtitle: Text('Offer ${index + 1} - detailes'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
