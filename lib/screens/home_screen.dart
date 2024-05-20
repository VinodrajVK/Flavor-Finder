import 'package:flavor_finder/screens/image_screen.dart';
import 'package:flavor_finder/screens/text_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends ConsumerState<HomeScreen> {
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) async {
    Navigator.pop(context);
    if (identifier == 'filters') {
      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const TextScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = ImageScreen();
    var activePageTitle = 'Dish Snap';
    if (_selectedPageIndex == 1) {
      //final favoriteMeals = ref.watch(favoriteMealsProvider);
      activePage = const TextScreen();
      activePageTitle = 'Flavor Pallete';
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          activePageTitle,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _selectPage(index);
        },
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Dish Snap',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_rounded),
            label: 'Flavor Pallete',
          ),
        ],
      ),
    );
  }
}
