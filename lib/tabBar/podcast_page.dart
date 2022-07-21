import 'package:flutter/material.dart';

class PodCastPage extends StatelessWidget {
  const PodCastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [PodCastItem(), PodCastItem(), PodCastItem()],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class PodCastItem extends StatelessWidget {
  const PodCastItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset(
            'images/DSC_2261.jpeg',
            width: 50.0,
            height: 50.0,
          ),
        ),
        Container(
          child: Text('我的播客'),
        )
      ],
    );
  }
}
