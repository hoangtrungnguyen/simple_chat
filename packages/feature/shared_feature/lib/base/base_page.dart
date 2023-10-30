import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/base_cubit.dart';

part '../basic/basic_page_mixin.dart';

abstract class BasePage<Cubit extends BaseCubit, PageView extends BasePageView>
    extends StatelessWidget {
  const BasePage({super.key});

  Cubit get cubit;

  PageView pageView();
}

abstract class BasePageView extends StatefulWidget {
  const BasePageView({super.key}) : super();
}

abstract class BaseState<Cubit extends BaseCubit, Page extends BasePageView>
    extends State<Page> {
  String get screenName;

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return scaffold(context);
  }

  Scaffold scaffold(BuildContext context);
}
