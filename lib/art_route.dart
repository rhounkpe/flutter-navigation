import 'package:flutter/material.dart';
import 'package:navigation_app/art_util.dart';

class ArtRoute extends StatelessWidget {
  // const ArtRoute({Key? key}) : super(key: key);

  final String art;

  ArtRoute({required this.art});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigating art'),
        actions: <Widget>[
          PopupMenuButton(
              // icon: const Icon(Icons.image),
              // child: const Text('Change Route'),
              itemBuilder: (BuildContext context) {
                return ArtUtil.menuItems
                    .map(
                      (String item) => PopupMenuItem(
                        value: item,
                        child: Text(item),
                      ),
                    )
                    .toList();
              },
            onSelected: (String value) => changeRoute(context, value),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(art),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  void changeRoute(BuildContext context, String menuItem) {
    String image = '';
    switch (menuItem) {
      case ArtUtil.CARAVAGGIO: {
        image = ArtUtil.IMG_CARAVAGGIO;
        break;
      }
      case ArtUtil.MONET: {
        image = ArtUtil.IMG_MONET;
        break;
      }
      case ArtUtil.VANGOGH: {
        image = ArtUtil.IMG_VANGOGH;
        break;
      }
    }
    Navigator.push(context, MaterialPageRoute(builder: (context) => ArtRoute(art: image)));
  }
}
