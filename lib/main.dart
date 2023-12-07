import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/home': (context) => HomePage(),
        '/about': (context) => BlankPage('About'),
        '/alumni': (context) => BlankPage('Alumni'),
        '/gps_photos': (context) => BlankPage('GPS Photos'),
        '/news_letter': (context) => BlankPage('News Letter'),
        '/vif': (context) => BlankPage('Vivekanand Incubation Foundation'),
        '/community_radio': (context) => BlankPage('Community Radio'),
        '/photo_gallery': (context) => BlankPage('Photo Gallery'),
        '/anti_ragging': (context) => BlankPage('Anti-Ragging'),
        '/contact_us': (context) => BlankPage('Contact Us'),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('IET App')),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120.0,
                    height: 120.0,
                    child: Image.asset(
                      'coll.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              // Text('Drawer Header'),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              title: Text('Alumni'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/alumni');
              },
            ),
            ListTile(
              title: Text('News Letters'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/news_letter');
              },
            ),
            ListTile(
              title: Text('Vivekanand Incubation Foundation'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/vif');
              },
            ),
            ListTile(
              title: Text('Contact us'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/contact_us');
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150.0,
                  height: 150.0,
                  child: Image.asset(
                    'coll.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Dr. Bhimrao Ambedkar University, Agra',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'An Institution Of 90 Years of Glorious History & Contributions In Teaching And Research(Accredited Grade B” by NAAC) (called at the place of Agra University, Agra from 24.09.1995 vide U.P. Govt. Notification No. 33/XVII-V-1-1(ka)-43-1996, dated 06.01.1996)',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: InkWell(
                      onTap: () {
                        _launchBlankPage();
                      },
                      child: Image.asset(
                        'logo1.jpg',
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: InkWell(
                      onTap: () {
                        _launchBlankPage();
                      },
                      child: Image.asset(
                        'logo2.jpg',
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: InkWell(
                      onTap: () {
                        _launchBlankPage();
                      },
                      child: Image.asset(
                        'logo3.jpg',
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: InkWell(
                      onTap: () {
                        _launchBlankPage();
                      },
                      child: Image.asset(
                        'logo4.jpg',
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: PhotoSection(),
          ),
        ],
      ),
    );
  }
}

class BlankPage extends StatelessWidget {
  final String pageTitle;

  BlankPage(this.pageTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
      ),
      body: Center(
        child: Text('This is the $pageTitle page.'),
      ),
    );
  }
}

class PhotoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'Photo Gallery',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    _launchBlankPage();
                  },
                  child: Image.asset(
                    'logo4.jpg',
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    _launchBlankPage();
                  },
                  child: Image.asset(
                    'logo4.jpg',
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    _launchBlankPage();
                  },
                  child: Image.asset(
                    'logo4.jpg',
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    _launchBlankPage();
                  },
                  child: Image.asset(
                    'logo4.jpg',
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    _launchBlankPage();
                  },
                  child: Image.asset(
                    'logo4.jpg',
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Add more photos as needed
            ],
          ),
        ),
      ],
    );
  }
}

Future<void> _launchBlankPage() async {
  const url = 'about:blank'; // Opens a blank page
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch$url';
  }
}
