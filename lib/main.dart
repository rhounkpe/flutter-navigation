import 'package:flutter/material.dart';
import 'package:navigation_app/art_route.dart';
import 'package:navigation_app/art_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigating Art',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Art Tab'),
          bottom: const TabBar(
            controller: null,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.art_track),
                text: ArtUtil.CARAVAGGIO,
              ),
              Tab(
                icon: Icon(Icons.art_track),
                text: ArtUtil.MONET,
              ),
              Tab(
                icon: Icon(Icons.art_track),
                text: ArtUtil.VANGOGH,
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: null,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(ArtUtil.IMG_CARAVAGGIO),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(ArtUtil.IMG_MONET),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(ArtUtil.IMG_VANGOGH),
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
