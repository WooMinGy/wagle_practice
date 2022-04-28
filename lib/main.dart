import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [TopBar(), BodyContainer(), BottomBar()],
      ),
    );
  }
}

// 상단 바
class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 110,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(16, 0, 14, 0),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border:
                        Border.all(color: const Color(0xffE8E8E8), width: 1)),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xff6C6C6C),
                    size: 20,
                  ),
                ),
              ),
              Text(
                '예술체육계열',
                style: TextStyle(
                  color: Color(0xff202020),
                  fontSize: 14,
                  fontFamily: "Noto Sans KR",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Container(
            width: 178,
            height: 40,
            margin: EdgeInsets.fromLTRB(14, 0, 16, 0),
            padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Color(0xffE8E8E8), width: 1)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/add.svg'),
                  iconSize: 30,
                ),
                Text(
                  '|',
                  style: TextStyle(color: Color(0xffE8E8E8)),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/search.svg'),
                  iconSize: 30,
                ),
                Text(
                  '|',
                  style: TextStyle(color: Color(0xffE8E8E8)),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/notification.svg'),
                  iconSize: 30,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// 바디 컨테이너
class BodyContainer extends StatefulWidget {
  const BodyContainer({Key? key}) : super(key: key);

  @override
  State<BodyContainer> createState() => _BodyContainerState();
}

class _BodyContainerState extends State<BodyContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 640,
      child: Column(
        children: [
          PopularityPost(),
          PostList(),
        ],
      ),
    );
  }
}

// 인기글
class PopularityPost extends StatefulWidget {
  const PopularityPost({Key? key}) : super(key: key);

  @override
  State<PopularityPost> createState() => _PopularityPostState();
}

class _PopularityPostState extends State<PopularityPost> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom:
                  BorderSide(color: Color(0xffF5F5F5)) // 색깔 진하게 확인할 때 959595
              )),
      padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('인기글 ',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
              SvgPicture.asset(
                'assets/icons/crown.svg',
                height: 16,
                width: 16,
              ),
            ],
          ),
          Container(
            width: 355,
            height: 120,
            padding: EdgeInsets.fromLTRB(13, 13, 13, 13),
            margin: EdgeInsets.fromLTRB(0, 8, 0, 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Color(0xffDAAFFE))),
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '누가 교수님 좀 기절시켜줘',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '02/18 19:50',
                        style:
                            TextStyle(fontSize: 10, color: Color(0xff959595)),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                    width: 260,
                    child: Text(
                      '얘들아 오늘 날씨가 너무 좋은데 난 과제를 하고 있어 교수님이 3일만 기절했다 일어나시면 좋겠어',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "시각디자인과",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff959595)),
                      ),
                      SizedBox(
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              // width: 4,
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/picture_cnt.svg',
                                    height: 12,
                                    width: 12,
                                  ),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff8949BA)),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/like_cnt.svg',
                                    height: 12,
                                    width: 12,
                                  ),
                                  Text(
                                    '80',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff8949BA)),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/comment_cnt.svg',
                                    height: 12,
                                    width: 12,
                                  ),
                                  Text(
                                    '5',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff8949BA)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// 일반 게시글 리스트
class PostList extends StatefulWidget {
  const PostList({Key? key}) : super(key: key);

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  List<Map> contents = [
    {
      'title': '전공 수업 질문',
      'created_at': '02/18 19:50',
      'content': '스레과~ 다들 전공과목 어떤거 들어? 다른 곳은 어떨지 궁금하다 많이 다르려나?',
      'department': '스포츠레저학과',
      'picture_cnt': '1',
      'like_cnt': '80',
      'comment_cnt': '5'
    },
    {
      'title': '다들 노트북 어떤 제품 많이 써?',
      'created_at': '02/18 19:50',
      'content':
          '내 사촌동생이 이번에 미대 입학해서 노트북 궁금해하던데 추천 좀 해주라! 너네가 노트북을 추천해주면 내 사동의 대학 생활이 달라질거라 확신해 나를 위해 이 글을 누르고 댓글을 써주는 아량을 한번 베풀어 줄 누군가 있을까 여기...?',
      'department': '시각디자인과',
      'picture_cnt': '0',
      'like_cnt': '61',
      'comment_cnt': '8'
    },
    {
      'title': '악기 브랜드 뭐써?',
      'created_at': '02/18 19:50',
      'content': '각자 자기 악기랑 브랜드 좀 알려주라!',
      'department': '기악과',
      'picture_cnt': '1',
      'like_cnt': '32',
      'comment_cnt': '13'
    },
    {
      'title': '졸리당 배고프당ㅎㅎ',
      'created_at': '02/18 19:50',
      'content': '졸릴땐 뭐해~? 코딩ㅋ 배고플땐 뭐먹어~? 다 먹어ㅋ',
      'department': '돼지과',
      'picture_cnt': '2',
      'like_cnt': '27',
      'comment_cnt': '8'
    },
    {
      'title': '졸리당 배고프당ㅎㅎ',
      'created_at': '02/18 19:50',
      'content': '졸릴땐 뭐해~? 코딩ㅋ 배고플땐 뭐먹어~? 다 먹어ㅋ',
      'department': '돼지과',
      'picture_cnt': '2',
      'like_cnt': '27',
      'comment_cnt': '8'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 470,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xffF5F5F5)))),
      child: ListView.builder(
          itemCount: contents.length,
          itemBuilder: (context, i) {
            return Container(
              padding: EdgeInsets.fromLTRB(18, 20, 18, 20),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color(0xffF5F5F5)) // 색깔 진하게 확인할 때 959595
                      )),
              child: Container(
                width: 355,
                // height: 120,
                padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                // margin: EdgeInsets.fromLTRB(0, 8, 0, 16),
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            contents[i]['title'],
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            contents[i]['created_at'],
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff959595)),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                        child: Text(
                          contents[i]['content'],
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            contents[i]['department'],
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff959595)),
                          ),
                          SizedBox(
                            width: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  // width: 4,
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/picture_cnt.svg',
                                        height: 12,
                                        width: 12,
                                      ),
                                      Text(
                                        contents[i]['picture_cnt'],
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff8949BA)),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/like_cnt.svg',
                                        height: 12,
                                        width: 12,
                                      ),
                                      Text(
                                        contents[i]['like_cnt'],
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff8949BA)),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/comment_cnt.svg',
                                        height: 12,
                                        width: 12,
                                      ),
                                      Text(
                                        contents[i]['comment_cnt'],
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff8949BA)),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

// 하단 바
class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var buttons = ''; // 어떤 버튼 눌렸는지 넣어줄 state

  handleClick(x) {
    setState(() {
      buttons = x;
      print(x);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 350,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Color(0xffE8E8E8), width: 1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          // AnimatedPositioned(duration: Duration(seconds: 1),
          //   top: 100,
          //   left: 100, // 이거 하나만 변수로 해서 위치 옮기자
          //   bottom: 0,
          //   right: 0,
          //   child: Container(
          //     decoration: BoxDecoration(
          //         color: Color(0xffB863FB),
          //         borderRadius: BorderRadius.circular(50),
          //         boxShadow: [
          //           BoxShadow(
          //               color: Color.fromRGBO(184, 99, 251, 0.6),
          //               blurRadius: 20,
          //               offset: Offset(-6, 0))
          //         ]),
          //   ),), // 여기는 배경색 들어갈 부분

          buttons == 'home'
              ? Container(
            decoration: BoxDecoration(
                color: Color(0xffB863FB),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(184, 99, 251, 0.6),
                      blurRadius: 20,
                      offset: Offset(-6, 0))
                ]),
            child: IconButton(
              padding: EdgeInsets.all(10),
              onPressed: () {
                handleClick('home');
              },
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                color: Colors.white,
              ),
              iconSize: 25,
            ),
          )
              : IconButton(
            onPressed: () {
              handleClick('home');
            },
            icon: SvgPicture.asset('assets/icons/home.svg'),
            iconSize: 25,
          ),

          buttons == 'new_chat'
              ? Container(
                  decoration: BoxDecoration(
                      color: Color(0xffB863FB),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(184, 99, 251, 0.6),
                            blurRadius: 20,
                            offset: Offset(-6, 0))
                      ]),
                  child: IconButton(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.bottomCenter,
                    onPressed: () {
                      handleClick('new_chat');
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/new_chat.svg',
                      color: Colors.white,
                    ),
                    iconSize: 25,
                  ),
                )
              : IconButton(
                  onPressed: () {
                    handleClick('new_chat');
                  },
                  icon: SvgPicture.asset('assets/icons/new_chat.svg'),
                  iconSize: 25,
                ),

          buttons == 'new_message'
              ? Container(
            decoration: BoxDecoration(
                color: Color(0xffB863FB),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(184, 99, 251, 0.6),
                      blurRadius: 20,
                      offset: Offset(-6, 0))
                ]),
            child: IconButton(
              padding: EdgeInsets.all(10),
              onPressed: () {
                handleClick('new_message');
              },
              icon: SvgPicture.asset(
                // 'assets/icons/message.svg',
                'assets/icons/new_message.svg',
                color: Colors.white,
              ),
              iconSize: 25,
            ),
          )
              : IconButton(
            onPressed: () {
              handleClick('new_message');
            },
            icon: SvgPicture.asset('assets/icons/new_message.svg'),
            iconSize: 25,
          ),

          buttons == 'view_list'
              ? Container(
            decoration: BoxDecoration(
                color: Color(0xffB863FB),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(184, 99, 251, 0.6),
                      blurRadius: 20,
                      offset: Offset(-6, 0))
                ]),
            child: IconButton(
              padding: EdgeInsets.all(10),
              onPressed: () {
                handleClick('view_list');
              },
              icon: SvgPicture.asset(
                'assets/icons/view_list.svg',
                color: Colors.white,
              ),
              iconSize: 25,
            ),
          )
              : IconButton(
            onPressed: () {
              handleClick('view_list');
            },
            icon: SvgPicture.asset('assets/icons/view_list.svg'),
            iconSize: 25,
          ),

          buttons == 'person'
              ? Container(
            decoration: BoxDecoration(
                color: Color(0xffB863FB),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(184, 99, 251, 0.6),
                      blurRadius: 20,
                      offset: Offset(-6, 0))
                ]),
            child: IconButton(
              padding: EdgeInsets.all(10),
              onPressed: () {
                handleClick('person');
              },
              icon: SvgPicture.asset(
                'assets/icons/person.svg',
                color: Colors.white,
              ),
              iconSize: 25,
            ),
          )
              : IconButton(
            onPressed: () {
              handleClick('person');
            },
            icon: SvgPicture.asset('assets/icons/person.svg'),
            iconSize: 25,
          ),

        ],
      ),
    );
  }
}
