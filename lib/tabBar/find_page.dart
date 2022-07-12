import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';

class FindPage extends StatelessWidget {
  const FindPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          height: 200,
          child: Swiper(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Image.asset('images/DSC_2261.jpeg');
            },
            itemCount: 6,
            autoplay: true,
            pagination: _buildPlugin(),
          ),
        ),
        Container(height: 100, child: FunctionList())
      ],
    ));
  }

  _buildPlugin() {
    return const SwiperPagination();
  }
}

class FunctionList extends StatelessWidget {
  const FunctionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        FunctionItem(),
        FunctionItem(),
        FunctionItem(),
        FunctionItem(),
        FunctionItem(),
        FunctionItem(),
      ],
    );
  }
}

class FunctionItem extends StatelessWidget {
  const FunctionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset('images/DSC_2261.jpeg', width: 100.0, height: 60),
        ),
        Container(
          child: Text("Hello"),
        )
      ],
    );
  }
}
