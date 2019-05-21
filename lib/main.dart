//import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
//void main() => runApp(new MyApp());
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      theme: new ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
//        // counter didn't reset back to zero; the application is not restarted.
//        primarySwatch: Colors.blue,
//      ),
//      home: new MyHomePage(title: 'Flutter Demo Home Page'),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  // This widget is the home page of your application. It is stateful, meaning
//  // that it has a State object (defined below) that contains fields that affect
//  // how it looks.
//
//  // This class is the configuration for the state. It holds the values (in this
//  // case the title) provided by the parent (in this case the App widget) and
//  // used by the build method of the State. Fields in a Widget subclass are
//  // always marked "final".
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => new _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Startup Name Generator',
//      home: new RandomWords(),
//    );
//  }
//
////  @override
////  Widget build(BuildContext context) {
////    // This method is rerun every time setState is called, for instance as done
////    // by the _incrementCounter method above.
////    //
////    // The Flutter framework has been optimized to make rerunning build methods
////    // fast, so that you can just rebuild anything that needs updating rather
////    // than having to individually change instances of widgets.
////    final wordPair = new WordPair.random(); // 新增了这一行
////    return new Scaffold(
////      appBar: new AppBar(
////        // Here we take the value from the MyHomePage object that was created by
////        // the App.build method, and use it to set our appbar title.
////        title: new Text(widget.title),
////      ),
////      body: new Center(
////        // Center is a layout widget. It takes a single child and positions it
////        // in the middle of the parent.
////        child: new Column(
////          // Column is also layout widget. It takes a list of children and
////          // arranges them vertically. By default, it sizes itself to fit its
////          // children horizontally, and tries to be as tall as its parent.
////          //
////          // Invoke "debug paint" (press "p" in the console where you ran
////          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
////          // window in IntelliJ) to see the wireframe for each widget.
////          //
////          // Column has various properties to control how it sizes itself and
////          // how it positions its children. Here we use mainAxisAlignment to
////          // center the children vertically; the main axis here is the vertical
////          // axis because Columns are vertical (the cross axis would be
////          // horizontal).
////          mainAxisAlignment: MainAxisAlignment.center,
////          children: <Widget>[
////            new RandomWords(),
////            //new Text(wordPair.asPascalCase),  // 这是新的文字生成方式
////            new Text(
////              'You have clicked the button this many times:',
////            ),
////            new Text(
////              '$_counter',
////              style: Theme.of(context).textTheme.display1,
////            ),
////          ],
////        ),
////      ),
////      floatingActionButton: new FloatingActionButton(
////        onPressed: _incrementCounter,
////        tooltip: 'Increment',
////        child: new Icon(Icons.add),
////      ), // This trailing comma makes auto-formatting nicer for build methods.
////    );
////  }
//}
//
//
//class RandomWords extends StatefulWidget {
//  @override
//  RandomWordsState createState() => new RandomWordsState();
//}
//
//class RandomWordsState extends State<RandomWords>{
//  // 添加如下两行
//  final List<WordPair> _suggestions = <WordPair>[];
//  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);
//
//  @override
//  Widget build(BuildContext context) {
////    final WordPair wordPair = new WordPair.random();
////    return new Text(wordPair.asPascalCase);
//    return new Scaffold (                   // 代码从这里...
//      appBar: new AppBar(
//        title: new Text('Startup Name Generator'),
//      ),
//      body: _buildSuggestions(),
//    );                                      // ... 添加到这里
//  }
//
//  Widget _buildSuggestions() {
//    return new ListView.builder(
//        padding: const EdgeInsets.all(16.0),
//
//        // 对于每个建议的单词对都会调用一次 itemBuilder，
//        // 然后将单词对添加到 ListTile 行中
//        // 在偶数行，该函数会为单词对添加一个 ListTile row.
//        // 在奇数行，该行书湖添加一个分割线 widget，来分隔相邻的词对。
//        // 注意，在小屏幕上，分割线看起来可能比较吃力。
//
//        itemBuilder: (BuildContext _context, int i) {
//          // 在每一列之前，添加一个1像素高的分隔线widget
//          if (i.isOdd) {
//            return new Divider();
//          }
//
//          // 语法 "i ~/ 2" 表示i除以2，但返回值是整形（向下取整）
//          // 比如 i 为：1, 2, 3, 4, 5 时，结果为 0, 1, 1, 2, 2，
//          // 这可以计算出 ListView 中减去分隔线后的实际单词对数量
//          final int index = i ~/ 2;
//          // 如果是建议列表中最后一个单词对
//          if (index >= _suggestions.length) {
//            // ...接着再生成10个单词对，然后添加到建议列表
//            _suggestions.addAll(generateWordPairs().take(10));
//          }
//          return _buildRow(_suggestions[index]);
//        }
//    );
//  }
//
//  Widget _buildRow(WordPair pair) {
//    return new ListTile(
//      title: new Text(
//        pair.asPascalCase,
//        style: _biggerFont,
//      ),
//    );
//  }
//}

// Create an infinite scrolling lazily loaded list

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome',
      theme: new ThemeData(primaryColor: Colors.black),
      //home: new RandomWords()
      home: new ScaffoldRoute(),
    );
  }
}
class ScaffoldRoute extends StatefulWidget {
  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldRoute> with SingleTickerProviderStateMixin {
  int _selectedIndex = 1;

  TabController _tabController; //需要定义一个Controller
  List tabs = ["新闻", "历史", "图片"];

  @override
  void initState() {
    super.initState();
    // 创建Controller
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //导航栏
        title: Text("App Name"),
        actions: <Widget>[ //导航栏右侧菜单
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
        ],
        bottom: TabBar(   //生成Tab菜单
            controller: _tabController,
            tabs: tabs.map((e) => Tab(text: e)).toList()
        ),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.dashboard, color: Colors.white), //自定义图标
            onPressed: () {
              // 打开抽屉菜单

             // AnimationController controller = new AnimationController(
              //    duration: const Duration(seconds: 3), vsync: this);
              //图片宽高从0变到300
             // Animation<double> animation2 = new Tween(begin: 0.0, end: 300.0).animate(controller);

//              Navigator.push(context, PageRouteBuilder(
//                  transitionDuration: Duration(milliseconds: 500), //动画时间为500毫秒
//                  pageBuilder: (BuildContext context, Animation animation,
//                      Animation secondaryAnimation) {
//                    return new FadeTransition( //使用渐隐渐入过渡,
//                        opacity: animation2,
//                        child: PageB() //路由B
//                    );
//                  }));
              Navigator.push(context, animation_route(HeroAnimationRoute()));
              //Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      body: TabBarView(
        controller: _tabController,
//children: <Widget>[ScrollNotificationTestRoute()],
        children: tabs.map((e) { //创建3个Tab页
          return Container(
            alignment: Alignment.center,
            child: Text(e, textScaleFactor: 5),
          );
        }).toList(),
      ),
      drawer: new MyDrawer(), //抽屉
      endDrawer: new MyDrawer(), //抽屉
      bottomNavigationBar: BottomNavigationBar( // 底部导航
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Business')),
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton( //悬浮按钮
          child: Icon(Icons.add),
          onPressed:_onAdd
      ),

    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  void _onAdd(){
  }
}
class SingleChildScrollViewTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return Scrollbar(
      child: SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            //动态创建一个List<Widget>
            children: str.split("")
            //每一个字母都用一个Text显示,字体为原来的两倍
                .map((c) => Text(c, textScaleFactor: 2.0,))
                .toList(),
          ),
        ),
      ),
    );
  }
}


class InfiniteListView extends StatefulWidget {
  @override
  _InfiniteListViewState createState() => new _InfiniteListViewState();
}

class _InfiniteListViewState extends State<InfiniteListView> {
  static const loadingTag = "##loading##"; //表尾标记
  var _words = <String>[loadingTag];

  @override
  void initState() {
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _words.length,
      itemBuilder: (context, index) {
        //如果到了表尾
        if (_words[index] == loadingTag) {
          //不足100条，继续获取数据
          if (_words.length - 1 < 100) {
            //获取数据
            _retrieveData();
            //加载时显示loading
            return Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: CircularProgressIndicator(strokeWidth: 2.0)
              ),
            );
          } else {
            //已经加载了100条数据，不再获取数据。
            return Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(16.0),
                child: Text("没有更多了", style: TextStyle(color: Colors.grey),)
            );
          }
        }
        //显示单词列表项
        return ListTile(title: Text(_words[index]));
      },
      separatorBuilder: (context, index) => Divider(height: .0),
    );
  }

  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      _words.insertAll(_words.length - 1,
          //每次生成20个单词
          generateWordPairs().take(20).map((e) => e.asPascalCase).toList()
      );
      setState(() {
        //重新构建列表
      });
    });
  }

}



class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        // DrawerHeader consumes top MediaQuery padding.
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipOval(
                      child: Image.asset(
                        "imgs/avatar.png",
                        width: 80,
                      ),
                    ),
                  ),
                  Text(
                    "Wendux",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.add),
                    title: const Text('Add account'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Manage accounts'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class CustomScrollViewTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //因为本路由没有使用Scaffold，为了让子级Widget(如Text)使用
    //Material Design 默认的样式风格,我们使用Material作为本路由的根。
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          //AppBar，包含一个导航栏
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Demo'),
              background: Image.asset(
                "./images/avatar.png", fit: BoxFit.cover,),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.all(1.0),
            sliver: new SliverGrid( //Grid
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, //Grid按两列显示
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
              delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  //创建子widget
                  return new Container(
                    alignment: Alignment.center,
                    color: Colors.cyan[100 * (index % 9)],
                    child: new Text('grid item $index'),
                  );
                },
                childCount: 20,
              ),
            ),
          ),
          //List
          new SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  //创建列表项
                  return new Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: new Text('list item $index'),
                  );
                },
                childCount: 50 //50个列表项
            ),
          ),
        ],
      ),
    );
  }
}


class ScrollNotificationTestRoute extends StatefulWidget {
  @override
  _ScrollNotificationTestRouteState createState() =>
      new _ScrollNotificationTestRouteState();
}

class _ScrollNotificationTestRouteState
    extends State<ScrollNotificationTestRoute> {
  String _progress = "0%"; //保存进度百分比

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Listener(
          child: ConstrainedBox(
            constraints: BoxConstraints.tight(Size(300.0, 200.0)),
            child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.blue)),
          ),
          onPointerDown: (event) => print("down0"),
        ),
        Listener(
          child: ConstrainedBox(
            constraints: BoxConstraints.tight(Size(200.0, 100.0)),
            child: Center(
              child: Text("左上角200*100范围内非文本区域点击"),
            ),
          ),
          onPointerDown: (event) => print("down1"),
          behavior: HitTestBehavior.translucent, //放开此行注释后可以"点透"
        )
      ],
    );
  }
}


class ScaleAnimationRoute extends StatefulWidget {
  @override
  _ScaleAnimationRouteState createState() => new _ScaleAnimationRouteState();
}

//需要继承TickerProvider，如果有多个AnimationController，则应该使用TickerProviderStateMixin。
class _ScaleAnimationRouteState extends State<ScaleAnimationRoute>  with SingleTickerProviderStateMixin{

  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(seconds: 3), vsync: this);
    //图片宽高从0变到300
    animation = new Tween(begin: 0.0, end: 300.0).animate(controller)..addListener(() {
        setState(()=>{});
      });
    //启动动画(正向执行)
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Image.asset("images/avatar.png",
          width: animation.value,
          height: animation.value
      ),
    );
  }

  dispose() {
    //路由销毁时需要释放动画资源
    controller.dispose();
    super.dispose();
  }
}

//Hero跳转动画
class HeroAnimationRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Scaffold(
        appBar: AppBar( //导航栏
          title: Text("App Name")),
        body : InkWell(
          child: Hero(
            tag: "avatar", //唯一标记，前后两个路由页Hero的tag必须相同
            child: ClipOval(
              child: Image.asset("images/1.jpg",
                width: 50.0,
              ),
            ),
          ),
          onTap: () {
            //打开B路由
            Navigator.push(context, PageRouteBuilder(
                pageBuilder: (BuildContext context, Animation animation,
                    Animation secondaryAnimation) {
                  return new FadeTransition(
                    opacity: animation,
                    child: Scaffold(
                      //title: Text("原图"),
                      body: HeroAnimationRouteB(),
                    ),
                  );
                })
            );
          },
        ),
      )

    );
  }
}
class HeroAnimationRouteB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: "avatar", //唯一标记，前后两个路由页Hero的tag必须相同
        child: Image.asset("images/1.jpg"),
      ),
    );
  }
}

//https://www.cnblogs.com/ckAng/p/10768894.html
//自定义RouteBuilder
class animation_route extends PageRouteBuilder {

  final Widget widget;

  animation_route(this.widget)
      : super(
      transitionDuration: const Duration(milliseconds: 500), //设置动画时长500毫秒
      pageBuilder: (
          BuildContext context,
          Animation<double> animation1,
          Animation<double> animation2){
        return widget;
      },
      transitionsBuilder: (
          BuildContext context,
          Animation<double> animation1,
          Animation<double> animation2,
          Widget child
          ){
        //渐变过渡
//      return FadeTransition(//渐变过渡 0.0-1.0
//        opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//          parent: animation1, //动画样式
//          curve: Curves.fastOutSlowIn, //动画曲线
//        )),
//        child: child,
//      );
        //翻转缩放
//      return RotationTransition(
//        turns: Tween(begin: 0.0, end: 1.0).
//        animate(
//          CurvedAnimation(
//            parent: animation1,
//            curve: Curves.fastOutSlowIn,
//          )
//        ),
//        child: ScaleTransition(
//          scale: Tween(begin: 0.0, end: 1.0).
//          animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
//          child: child,
//        ),
//      );
        //左右滑动
        return SlideTransition(
          position: Tween<Offset>(
              begin: Offset(-1.0, 0.0),
              end: Offset(0.0, 0.0)
          ).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
          child: child,
        );
      }

  );


}