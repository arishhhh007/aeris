import 'package:flutter/material.dart';
import 'app_theme.dart';
import '../features/home/home_page.dart';
import '../features/chat/chat_page.dart';
import '../features/account/account_page.dart';

class AerisApp extends StatefulWidget {
  const AerisApp({Key? key}) : super(key: key);

  @override
  State<AerisApp> createState() => _AerisAppState();
}

class _AerisAppState extends State<AerisApp> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    HomePage(),
    ChatPage(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AERIS',
      theme: AppTheme.light(),
      home: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          ],
        ),
      ),
    );
  }
}
