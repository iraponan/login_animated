import 'package:flutter/material.dart';
import 'package:login_animated/generated/assets.dart';
import 'package:login_animated/pages/home/widgets/list_data.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  const AnimatedListView({super.key, required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'Procure sempre manter os estudos em dia.',
          image: const AssetImage(Assets.imagesPerfil),
          margin: listSlidePosition.value * 5,
        ),
        ListData(
          title: 'Estudar Flutter 2',
          subtitle: 'Todos os dias procure estudar.',
          image: const AssetImage(Assets.imagesPerfil),
          margin: listSlidePosition.value * 4,
        ),
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'Procure sempre manter os estudos em dia.',
          image: const AssetImage(Assets.imagesPerfil),
          margin: listSlidePosition.value * 3,
        ),
        ListData(
          title: 'Estudar Flutter 2',
          subtitle: 'Todos os dias procure estudar.',
          image: const AssetImage(Assets.imagesPerfil),
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'Procure sempre manter os estudos em dia.',
          image: const AssetImage(Assets.imagesPerfil),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: 'Estudar Flutter 2',
          subtitle: 'Todos os dias procure estudar.',
          image: const AssetImage(Assets.imagesPerfil),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
