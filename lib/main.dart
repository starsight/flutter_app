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
      home: new MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class NewRoute extends StatelessWidget {
  NewRoute(this.tip);

  final String tip;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              //margin: EdgeInsets.only(top: 50.0, left: 130.0),
              //容器外补白
              constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0),
              //卡片大小
              decoration: BoxDecoration(
                  //背景装饰
                  gradient: RadialGradient(
                      //背景径向渐变
                      colors: [Colors.red, Colors.orange],
                      center: Alignment.topLeft,
                      radius: .98),
                  borderRadius: BorderRadius.circular(20.0), //3像素圆角
                  boxShadow: [
                    //卡片阴影
                    BoxShadow(
                        color: Colors.black54,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 4.0)
                  ]),
              //transform: Matrix4.rotationZ(.2),
              //卡片倾斜变换
              alignment: Alignment.center,
              //卡片内文字居中
              child: Text(
                //卡片文字
                "$tip", style: TextStyle(color: Colors.white, fontSize: 40.0),
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(10.0,10,10,10), //容器外补白
              color: Colors.orange,
              child: Text("Hello world!"),
            ),
            Container(
              padding: EdgeInsets.all(1.0), //容器内补白
              color: Colors.orange,
              child: Text("Hello world!"),
            ),

          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key1, this.title}) : super(key: key1);

  final String title;

  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('increment time'),
            new Text('$_counter'),
            new FlatButton(
              child: Text("open new route"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new NewRoute("TIPS");
                }));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrCounter,
        tooltip: 'increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}

class RandomWord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(wordPair.toString()),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final _saved = new Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    //final wordPair = new WordPair.random();
    //return new Text(wordPair.asPascalCase);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("StartUp !"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved)
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      final tiles = _saved.map(
        (pair) {
          return new ListTile(
            title: new Text(
              pair.asPascalCase,
              style: _biggerFont,
            ),
          );
        },
      );
      final divided = ListTile.divideTiles(
        context: context,
        tiles: tiles,
      ).toList();

      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Saved Suggestions"),
        ),
        body: new ListView(children: divided),
      );
    }));
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();
        final index = i ~/ 2;

        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair suggestion) {
    final alreadySaved = _saved.contains(suggestion);
    return new ListTile(
      title: new Text(
        suggestion.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null),
      onTap: () {
        setState(() {
          if (alreadySaved)
            _saved.remove(suggestion);
          else
            _saved.add(suggestion);
        });
      },
    );
  }
}
