import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/android.dart';

/// Flutter code sample for [AppBar].

void main() => runApp(const SignDictionary());

class SignDictionary extends StatelessWidget {
  const SignDictionary({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppBarExample(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  get controller => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('maganar hannu'),
            actions: <Widget>[
              IconButton(
                  icon: const Icon(Icons.filter),
                  tooltip: 'Filter your language',
                  onPressed: () {}
              ),
              IconButton(
                  icon: const Icon(Icons.search),
                  tooltip: 'Searching button',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                          return Scaffold(
                            appBar: AppBar(
                              title: const Text('Searching screen'),
                            ),
                            body: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0),
                                child: TextField(
                                  controller: controller,
                                  decoration: InputDecoration(
                                    hintText: 'Search...',
                                    prefixIcon: const Icon(Icons.search),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: const BorderSide(
                                            color: Colors.blue)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                    ));
                  }
              ),
              IconButton(
                  icon: const Icon(Icons.settings),
                  tooltip: 'Settings button',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                          return Scaffold(
                            appBar: AppBar(
                              title: const Text('Settings screen'),
                            ),
                            body: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0),
                              ),
                            ),
                          );
                        }
                    ));
                  }
              ),
            ]
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 500,
              color: Colors.white,
              child: const Center(child: Text('Favorites')),
            ),
            Container(
              height: 500,
              color: Colors.white,
              child: const Center(child: Text('Recent searches')),
            ),
            Container(
              height: 500,
              color: Colors.white,
              child: const Center(child: Text('Recent views')),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
            child: IconButton(
                icon: const Icon(Icons.category),
                tooltip: 'Categories button',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context)
                  {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text('Categories screen'),
                      ),
                      body: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: TextField(
                            controller: controller,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.category),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                      color: Colors.blue)
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  })
                }
            ))


    );
  }
