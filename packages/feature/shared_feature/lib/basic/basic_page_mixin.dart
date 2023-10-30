part of '../base/base_page.dart';

mixin BasicPage<Cubit extends BaseCubit, Page extends BasePageView>
on BaseState<Cubit, Page>{

  Widget get body;

  Widget get fab => const SizedBox();



  @override
  Scaffold scaffold(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(screenName),
      ),
      floatingActionButton: fab,
      body: SafeArea(
        child: body,
      ),
    );
  }
}