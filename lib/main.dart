import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:kohoclone/constants/colors.dart";
import "package:kohoclone/screens/home.dart";

void main() {
  runApp(KohoClone());
}

class KohoClone extends StatelessWidget {
  const KohoClone({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoSansTextTheme(textTheme),
      ),
      debugShowCheckedModeBanner: false,
      home: LandingScreen(),
    );
  }
}

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        unselectedItemColor: Colors.grey.shade800,
        selectedItemColor: backgroundColor,
        elevation: 1,
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(
          color: Colors.grey.shade400,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined),
            label: 'Spend',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.savings_outlined,
            ),
            label: 'Save',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.loyalty_outlined),
            label: 'My Plan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.donut_large_outlined),
            label: 'Credit',
          ),
        ],
      ),
    );
  }
}
