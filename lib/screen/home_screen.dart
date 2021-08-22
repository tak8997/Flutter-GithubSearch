import 'package:flutter/material.dart';
import 'package:github_search/widget/banner_widget.dart';
import 'package:github_search/widget/repo_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _bannerWidgets = <BannerWidget>[
    BannerWidget(),
    BannerWidget()
  ];
  final List<String> _bannerTitle = ["사랑의 불시착", "사랑의 불시착1"];
  int _currentIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(children: [
          makeBannerPageView(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              child: makeBannerIndicator(),
              margin: EdgeInsets.all(10),
            ),
          )
        ]),
        Container(
          child: Text(
            _bannerTitle[_currentIndex],
            style: TextStyle(fontSize: 14),
          ),
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
        ),
        Container(
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "유저를 입력해주세요."),
          ),
          height: 60,
          padding: EdgeInsets.all(10),
        ),
        RepoWidget()
      ],
    );
  }

  Widget makeBannerPageView() {
    return Container(
        height: 250,
        child: PageView.builder(
            scrollDirection: Axis.horizontal,
            physics: ClampingScrollPhysics(),
            itemCount: _bannerWidgets.length,
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentIndex = page;
              });
            },
            itemBuilder: (context, index) {
              return _bannerWidgets[index];
            }));
  }

  Widget makeBannerIndicator() {
    List<Widget> results = [];
    for (var i = 0; i < _bannerWidgets.length; i++) {
      results.add(Container(
        width: 10,
        height: 10,
        margin: EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentIndex == i
                ? Color.fromRGBO(255, 255, 255, 0.9)
                : Color.fromRGBO(255, 255, 255, 0.4)),
      ));
    }

    return Container(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: results,
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
