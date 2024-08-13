import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Complex Responsive Flutter Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Layout Example'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1200) {
            return DesktopLayout();
          } else if (constraints.maxWidth >= 800 &&
              constraints.maxWidth <= 1200) {
            return TabletLayout();
          } else {
            return MobileLayout();
          }
        },
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'Header',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 7,
          child: Container(
            color: Colors.grey[200],
            child: Center(
              child: Text(
                'Content Area',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'Footer',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TabletLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'Header',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 7,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue[50],
                  child: Center(
                    child: Text(
                      'Sidebar',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.grey[200],
                  child: Center(
                    child: Text(
                      'Content Area',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'Footer',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DesktopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'Header',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 8,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue[50],
                  child: Center(
                    child: Text(
                      'Sidebar',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  color: Colors.grey[200],
                  child: Center(
                    child: Text(
                      'Content Area',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue[50],
                  child: Center(
                    child: Text(
                      'Additional Sidebar',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'Footer',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
