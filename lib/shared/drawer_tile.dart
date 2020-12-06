import 'package:canadoreino/models/page_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerTile extends StatelessWidget {
  
  DrawerTile({Key key, this.iconData, this.title, this.page}) : super(key: key);
  
  final IconData iconData;
  final String title;
  final int page;
  @override
  Widget build(BuildContext context) {

    final int curPage = context.watch<PageManager>().page;

    return InkWell(
           onTap: (){
            context.read<PageManager>().setPage(page);
          },
          child: SizedBox(
            height: 60,
            child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32,),
                child: Icon(
                   iconData,
                   size: 32,
                   color: curPage == page ? Theme.of(context).primaryColor : Colors.grey[700],
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: curPage == page ? Theme.of(context).primaryColor : Colors.grey[700],
                ),
              )
            ],
        ),
      ),
    );
  }
}