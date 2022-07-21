import 'package:flutter/material.dart';
import 'package:net_application/tabBar/find_page.dart';
import 'package:net_application/tabBar/podcast_page.dart';
import 'package:net_application/tabBar/mine_page.dart';
import 'package:net_application/tabBar/attention_page.dart';
import 'package:net_application/tabBar/cloud_page.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _IndexState();
  }
}

class _IndexState extends State<IndexPage> {
  final List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.home), backgroundColor: Colors.blue, label: "发现"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.home), backgroundColor: Colors.blue, label: "播客"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.home), backgroundColor: Colors.blue, label: "我的"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.home), backgroundColor: Colors.blue, label: "关注"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.home), backgroundColor: Colors.blue, label: "云村")
  ];

  int currentIndex = 0;

  final pages = [
    const FindPage(),
    const PodCastPage(),
    const MinePage(),
    const AttentionPage(),
    const CloudPage()
  ];

  @override
  void initState() {
    super.initState();
    currentIndex = 2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('r')),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomItems,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          _changePage(index);
        },
      ),
      body: pages[currentIndex],
    );
  }

  void _changePage(int index) {
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }
}
