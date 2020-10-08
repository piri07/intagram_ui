import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intagramui/insta_story.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize =MediaQuery.of(context).size;
    return new ListView.builder(
      itemCount: 5,
      itemBuilder: (context,index)=> index==0? new SizedBox(
        child: new InstaStories(),
        height: deviceSize.height*0.19,
      ):Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //1st row
          Padding(
            padding: const EdgeInsets.fromLTRB(9.0, 15.0, 9.0, 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(image: NetworkImage("https://specials-images.forbesimg.com/imageserve/1183266467/960x0.jpg?fit=scale"))
                      ),
                    ),
                    new SizedBox(
                      width: 10.0,
                    ),
                    new Text(
                      "priyanshu109",style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                new IconButton(icon: Icon(Icons.more_vert), onPressed: null),
              ],
            ),
          ),
          //2nd row
          Flexible(
            fit: FlexFit.loose,
            child: new Image.network("https://c.ndtvimg.com/2020-01/l842qabo_ms-dhoni-afp_625x300_16_January_20.jpg",fit: BoxFit.cover),
          ),
          //3rd row
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Icon(
                      FontAwesomeIcons.heart,
                    ),
                    new SizedBox(
                      width: 16.0,
                    ),
                    new Icon(
                      FontAwesomeIcons.comment,
                    ),
                    new SizedBox(
                      width: 16.0,
                    ),
                    new Icon(
                      FontAwesomeIcons.paperPlane,
                    ),
                    new SizedBox(
                      width: 16.0,
                    ),
                  ],
                ),
                //2nd row starts so icon appears at the end
                new Icon(FontAwesomeIcons.bookmark),
              ],
            ),
          ),
          //4th row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9.0),
            child: Text(
              "Liked by priyanshu109, ritika__garg & 070719 more ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          //5th row
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      image: new NetworkImage("https://c.ndtvimg.com/2020-01/l842qabo_ms-dhoni-afp_625x300_16_January_20.jpg"),
                      fit:BoxFit.fill,
                    )
                  ),
                ),
                new SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: new TextField(
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add a comment"
                    ),
                  ),
                ),
              ],
            ),
          ),
          //6th row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: new Text("1 day ago",style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
