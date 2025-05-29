import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

/// Flutter code sample for [CarouselView].

class Room extends StatelessWidget {
  const Room({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: ListView(
        children: [
          Text(
            "ROOM",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
          SizedBox(height: 50.0),
          Toggle(),
          SizedBox(height: 50.0),
        ],
      ),
    );
  }
}

class Toggle extends StatefulWidget {
  const Toggle({super.key});

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {

  int _tabTextIndexSelected = 0;

  List<DataTab> get _listTextTabToggle => [
        DataTab(title: "Kamar Saya"),
        DataTab(title: "Kamar Tersedia"),
      ];
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // latar belakang putih
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.indigo, // garis luar seluruh toggle
          width: 2,
        ),
      ),
      child: FlutterToggleTab(
        width: 90,
        borderRadius: 30,
        height: 45,
        selectedIndex: _tabTextIndexSelected,
        selectedBackgroundColors: [Colors.indigo],
        unSelectedBackgroundColors: [Colors.white],
        selectedTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        unSelectedTextStyle: TextStyle(
          color: Colors.indigo,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        dataTabs: _listTextTabToggle,
        selectedLabelIndex: (index) {
          setState(() {
            _tabTextIndexSelected = index;
          });
        },
        marginSelected: EdgeInsets.all(3), // spasi dalam border
      ),
    );
  }
}
