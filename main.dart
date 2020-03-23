import 'package:flutter/material.dart';
import 'model/post.dart';
void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
return MaterialApp(
  home:Home(),
  theme:ThemeData(
    primarySwatch:Colors.yellow//主题颜色
  )
);
  }
}
class Home extends StatelessWidget{
  //自定义一个函数
  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
      color:Colors.red,
      margin:EdgeInsets.all(20.0),//外边距
      child: Column(//竖着排列的，所以用Column小部件
        children:<Widget>[
        Image.network(posts[index].imageUrl),
        SizedBox(height:16.0),//SizedBox留点空间，height高度
        Text(
          posts[index].title,
          style: Theme.of(context).textTheme.headline6,//设置文字的样式
        ),
        Text(
          posts[index].author,
          style: Theme.of(context).textTheme.subtitle1,
        )
      ]),
      
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    appBar:AppBar(
      title:Text('NINGHAO'),
      elevation:30.0//阴影默认4.0
    ),
    body:ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    )
  );
  }
}
class Hello extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'hello2',
        textDirection:TextDirection.ltr,
        style: TextStyle(
          fontSize:40.0,
          fontWeight:FontWeight.bold,
          color:Colors.yellow,
        ),
      ),
    );
  }
}