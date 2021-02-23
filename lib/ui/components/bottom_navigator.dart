import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final ValueChanged<int> onTap;
  final int currentIndex;

  const AppBottomNavigationBar({
    @required this.onTap,
    @required this.currentIndex,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Theme.of(context).primaryColor,
      selectedItemColor: Theme.of(context).accentColor,
      unselectedItemColor:
          Theme.of(context).colorScheme.onPrimary.withOpacity(0.2),
      unselectedFontSize: 10,
      selectedFontSize: 10,
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: 'invent', icon: Icon(Icons.input)),
        BottomNavigationBarItem(label: 'order', icon: Icon(Icons.input)),
        BottomNavigationBarItem(label: 'bill', icon: Icon(Icons.input)),
      ],
    );
  }
}
