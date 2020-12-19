import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Layout(),
    );
  }
}

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {

  int score = 41;
  bool selected=false;

  @override
  Widget build(BuildContext context) {

    Widget imageSection= Image.network(
      "http://d2m29rwiahucy3.cloudfront.net/images/store/S190412_1558789280755/1557375640619_0.jpg",
      height: 240,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    );

    Widget titleSection= Container(
        padding: EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "로니로티 건대점!!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "연인들과 데이트하기 좋은 코스입니다.",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: selected ? Icon(Icons.star):Icon(Icons.star_border),
              color: Colors.red,
              onPressed: (){
                setState(() {
                  if(selected){
                    score--;
                  }else{
                    score++;
                  }
                  selected=!selected;
                });
              },
            ),
            Text('$score')
          ],
        ));

    Widget buttonSection= Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(
              Icons.call,
              color: Colors.lightBlue,
            ),
            Text("전화하기", style: TextStyle(color: Colors.blue))
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.near_me,
              color: Colors.lightBlue,
            ),
            Text("메시지 보내기", style: TextStyle(color: Colors.blue))
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.share,
              color: Colors.lightBlue,
            ),
            Text("공유하기", style: TextStyle(color: Colors.blue))
          ],
        )
      ],
    );

    Widget textSection=
    Container(
      padding: EdgeInsets.all(32),
      child: Text(
        "한민국 헌법상 영토는 '한반도와 그 부속 도서'[31]이지만 실효 지배하는 지역은 휴전선 이남이며 면적은 10만 401km²로 한반도의 44.9%(약 45%)에 해당한다.[32] 인구는 약 5,200만 명으로[33] 한반도 전체 인구의 66.8%(3분의 2) 가량을 차지한다. 대한민국은 한반도 이북 지역의 북한보다 면적은 약간 작지만 인구는 두 배 이상이다."
            +"\n\n 한민국 헌법상 영토는 '한반도와 그 부속 도서'[31]이지만 실효 지배하는 지역은 휴전선 이남이며 면적은 10만 401km²로 한반도의 44.9%(약 45%)에 해당한다.[32] 인구는 약 5,200만 명으로[33] 한반도 전체 인구의 66.8%(3분의 2) 가량을 차지한다. 대한민국은 한반도 이북 지역의 북한보다 면적은 약간 작지만 인구는 두 배 이상이다."
            +"\n\n한민국 헌법상 영토는 '한반도와 그 부속 도서'[31]이지만 실효 지배하는 지역은 휴전선 이남이며 면적은 10만 401km²로 한반도의 44.9%(약 45%)에 해당한다.[32] 인구는 약 5,200만 명으로[33] 한반도 전체 인구의 66.8%(3분의 2) 가량을 차지한다. 대한민국은 한반도 이북 지역의 북한보다 면적은 약간 작지만 인구는 두 배 이상이다."
            +"\n\n한민국 헌법상 영토는 '한반도와 그 부속 도서'[31]이지만 실효 지배하는 지역은 휴전선 이남이며 면적은 10만 401km²로 한반도의 44.9%(약 45%)에 해당한다.[32] 인구는 약 5,200만 명으로[33] 한반도 전체 인구의 66.8%(3분의 2) 가량을 차지한다. 대한민국은 한반도 이북 지역의 북한보다 면적은 약간 작지만 인구는 두 배 이상이다."
            +"\n\n한민국 헌법상 영토는 '한반도와 그 부속 도서'[31]이지만 실효 지배하는 지역은 휴전선 이남이며 면적은 10만 401km²로 한반도의 44.9%(약 45%)에 해당한다.[32] 인구는 약 5,200만 명으로[33] 한반도 전체 인구의 66.8%(3분의 2) 가량을 차지한다. 대한민국은 한반도 이북 지역의 북한보다 면적은 약간 작지만 인구는 두 배 이상이다."
        ,
        style: TextStyle(
        ),
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Layout 앱"),
        ),
        body: ListView(
          children: [
            //Image
            imageSection,

            // Title Section
            titleSection,

            //Button section
            buttonSection,

            //텍스트
            textSection,
          ],
        ));
  }
}

