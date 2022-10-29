import 'package:cafe_note_mobile/configs/route_config.dart';
import 'package:flutter/cupertino.dart';

class MenuContent extends StatelessWidget {
  final Widget content;

  const MenuContent({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      routes: RouteConfig.routes,
      builder: (BuildContext context) => CupertinoPageScaffold(child: content),
    );
  }
}
