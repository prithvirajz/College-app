import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawersMobile extends StatelessWidget {
  const DrawersMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DrawerHeader(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 2.0, color: Colors.black)),
              child: Image.asset('coll.png', filterQuality: FilterQuality.high),
            ),
          ),
          TabsMobile(text: "Home", route: '/'),
          SizedBox(height: 20.0),
          TabsMobile(text: "Work", route: '/works'),
          SizedBox(height: 20.0),
          TabsMobile(text: "Blog", route: '/blog'),
          SizedBox(height: 20.0),
          TabsMobile(text: "About", route: '/about'),
          SizedBox(height: 20.0),
          TabsMobile(text: "Contact", route: '/contact'),
          SizedBox(height: 40.0),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     urlLauncher("assets/instagram.svg",
          //         "https://www.instagram.com/chauhanprathvirajsingh/"),
          //     urlLauncher(
          //         "assets/twitter.svg", "https://twitter.com/prithviraj__k"),
          //     urlLauncher("assets/github.svg", "https://github.com/prithvirajz")
          //   ],
          // )
        ],
      ),
    );
  }
}

class TabsMobile extends StatefulWidget {
  final text;
  final route;
  const TabsMobile({Key? key, @required this.text, @required this.route})
      : super(key: key);

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      height: 50.0,
      minWidth: 200.0,
      color: Colors.black87,
      child: Text(
        widget.text,
        selectionColor: Colors.white,
        // style: GoogleFonts.
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(widget.route);
      },
    );
  }
}

class GoogleFonts {}
