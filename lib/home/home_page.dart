import 'package:flutter/material.dart';
import 'package:jokeesingleserving/core/models/joke_model.dart';
import 'package:jokeesingleserving/core/widgets/content_widget.dart';
import 'package:jokeesingleserving/core/widgets/fooder_widget.dart';
import 'package:jokeesingleserving/core/widgets/header_widget.dart';
import 'package:jokeesingleserving/core/widgets/tilte_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  final List<JokeModel> list = [
    JokeModel(
        id: '0',
        content:
            'A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on."The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now."The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."'),
    JokeModel(
        id: '1',
        content:
            'Teacher: "Kids,what does the chicken give you?" Student: "Meat!" Teacher: "Very good! Now what does the pig give you?" Student: "Bacon!" Teacher: "Great! And what does the fat cow give you?" Student: "Homework!"'),
    JokeModel(
        id: '2',
        content:
            'The teacher asked Jimmy, "Why is your cat at school today Jimmy?" Jimmy replied crying, "Because I heard my daddy tell my mommy,\'I am going to eat that pussy once Jimmy leaves for school today!"'),
    JokeModel(
        id: '3',
        content:
            'A housewife, an accountant and a lawyer were asked "How much is 2+2?" The housewife replies: "Four!". The accountant says: "I think it\'s either 3 or 4. Let me run those figures through my spreadsheet one more time." The lawyer pulls the drapes, dims the lights and asks in a hushed voice, "How much do you want it to be?"'),
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: buildBody(),
      ),
    );
  }

  Widget buildBody() {
    return Column(
      children: [
        const HeaderWidget(),
        const TitleWidget(),
        ContentWidget(
          content: widget.list[index].content,
          isRefresh: index == widget.list.length - 1,
          onLike: () {
            widget.list[index].isLike = true;
            setState(() {
              if (index < widget.list.length - 1) {
                index++;
              }
            });
          },
          onDisLike: () {
            widget.list[index].isLike = false;
            setState(() {
              if (index < widget.list.length - 1) {
                index++;
              }
            });
          },
          onRefresh: () {
            setState(() {
              index = 0;
            });
          },
        ),
        const Divider(),
        const FooderWidget(),
      ],
    );
  }
}
