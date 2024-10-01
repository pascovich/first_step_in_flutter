import 'package:flutter/material.dart';

class HeroWidget extends StatefulWidget {
  const HeroWidget({super.key});

  @override
  State<HeroWidget> createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  final _infos = [
    {
      'code': 'Voyage au kenya',
      'title': 'maked your online jorney',
      'image': 'assets/images/b1.jfif',
      'imageLine':
          'https://th.bing.com/th/id/R.da9b5dbb601dec1a5060909fceff588f?rik=pu6oJO39PEE%2bRQ&pid=ImgRaw&r=0'
    },
    {
      'code': 'Go away from',
      'title': 'in your make dvshd nuorfer',
      'image': 'assets/images/b2.jpg',
      'imageLine':
          'https://pixnio.com/free-images/2017/10/25/2017-10-25-14-43-24.jpg'
    },
    {
      'code': 'Journey in Paris',
      'title': 'pour tout vos paris spoartif',
      'image': 'assets/images/b3.jfif',
      'imageLine':
          'https://th.bing.com/th/id/R.e8409546bb2f8dffaf5e6c27c106d976?rik=0iylvn%2flxrwIng&riu=http%3a%2f%2fimg.20mn.fr%2f8yVNHz5SR42-wbLyndTHdA%2f2048x1536-fit_vue-ensemble-ville-paris.jpg&ehk=jhk17YiHAppELUoECyR9RvbTLATEVsFPCS0c8J%2fIp78%3d&risl=&pid=ImgRaw&r=0'
    }
  ];
  int _currentInfo = 0;
  final _pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentInfo = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(_infos[_currentInfo]['image']!),
              fit: BoxFit.cover),
          color: Colors.blue,
          borderRadius: BorderRadius.circular(19)),
      child: Stack(children: [
        PageView(
          controller: _pageController,
          children: _infos.map((info) => _buildInfo(info)).toList(),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.only(bottom: 17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: _infos.map((infos) => _buildPagination(infos)).toList(),
          ),
        ),
      ]),
    );
  }

  Widget _buildPagination(Map<String, String> info) {
    return Container(
      width: _infos.indexOf(info) == _currentInfo ? 30 : 10,
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        color: _infos.indexOf(info) == _currentInfo
            ? Colors.white
            : Colors.white54,
        // color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      // children: [
      //   Image.network(infos['image']),
      //   Positioned(
      //     bottom: 12,
      //     right: 12,
      //     child: Text(
      //       infos['title'],
      //       style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      //     ),
      //   )
      // ],
      // alignment: Alignment.bottomRight,
      // child: Container(
      //   padding: EdgeInsets.symmetric(horizontal: 12),
      //   child: Text(
      //     infos['code'],
      //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //   ),
      // ),
    );
  }

  Widget _buildInfo(Map<String, String> info) {
    return Stack(
      children: [
        Positioned(
            top: 20,
            left: 20,
            child: Text(_infos[_currentInfo]['code']!.toUpperCase(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold))),
        Positioned(
            top: 60,
            left: 20,
            child: Text(_infos[_currentInfo]['title']!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ))),
      ],
    );
  }
}
