import 'package:countdown_animation/countdown_animation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../colors.dart';
import 'custom_app_bar.dart';

class HomePage extends StatelessWidget {
  static var routeName = '/home';
  static Widget wrapped() {
    return Provider(
      create: (context) => CountTriggerController(),
      child: HomePage(),
    );
  }

  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.onSecondary,
      body: NestedScrollView(
        headerSliverBuilder: (_, __) => [
          const CustomAppBar(),
        ],
        body: const _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final tableHeaderStyle =
        textTheme.subtitle1.copyWith(fontWeight: FontWeight.bold);
    final topArea = MediaQuery.of(context).size.height * 0.35;
    return Container(
      color: Colors.white,
      height: topArea,
      child: Padding(
        padding: EdgeInsets.only(left: 32, right: 32, bottom: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return ListTile(
                      title: Text(
                        'Goods',
                        style: tableHeaderStyle,
                      ),
                      trailing: Text(
                        'Quantity',
                        style: tableHeaderStyle,
                      ),
                    );
                  }
                  return Container(
                    color: index % 2 != 0 ? lightBlue : Colors.white,
                    child: ListTile(
                      title: Text('ITEM No.$index'),
                      trailing: Text('${index * 12333}'),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
