import 'package:flutter/material.dart';
import 'core/widgets/bottom_nav.dart';
import './features/my_project/presentation/screens/my_project_screen.dart';
import 'features/purchase_requests/presentation/screens/purchase_req_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proven App',
      home: const MainLayoutScreen(),
    );
  }
}

class MainLayoutScreen extends StatefulWidget {
  const MainLayoutScreen({super.key});

  @override
  State<MainLayoutScreen> createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const MyProjectsScreen(),             
    const Center(child: Text('Add Screen')),    
    // const PurchaseReqScreen(),           
    const Center(child: Text('Profile Screen')), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: FixedBottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; 
          });
        },
      ),
    );
  }
}