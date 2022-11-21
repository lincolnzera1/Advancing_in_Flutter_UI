import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:getx_redemption/src/pages/home/home_tag.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}



class _BaseScreenState extends State<BaseScreen> {

  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    print("$pageController é esse");
    return Scaffold(
      body: PageView(
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
            print("O valor é $value");
          });
        },
        controller: pageController,
        children: [
          HomeTab(),
          Container(
            color: Colors.white,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.green,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex = index;
              pageController.jumpToPage(index);
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.green,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withAlpha(100),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: "Carrinho"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "Pedidos"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "Perfil"),
          ]),
    );
  }
}
