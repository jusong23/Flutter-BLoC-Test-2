import 'package:bloc_pattern/src/ui/bloc_display_wideget.dart';
import 'package:flutter/material.dart';

// count만을 보여주는 코드
class CountView extends StatelessWidget {
  CountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      // 비동기 처리(StreamBuilder : 변화되는 값을 계속해서 감지)
      // (7) StreamBuilder를 통해 countBloc.count을 감지
      child: BlocBuilder<Bloc, State>(
        buildWhen: (previous, current) => previous.8index != current.index,
        builder: (context, state) {
          // (8) AsyncSnapshot을 통해 들어온 snapshot을 UI에 뿌려준다.
          if (snapshot.hasData) {
            return Text(
              snapshot.data.toString(),
              style: TextStyle(fontSize: 80),
            );
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}