import 'package:ecommapp2/constants/assets.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = <Widget>[];
    String content = '';

    Widget rowWidget(String text) {
      return Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      );
    }

    List<Widget> listOfText() {
      for (int i = 0; i < 20; i++) {
        content = 'Row no. ${i}'.toString();
        widgetList.add(rowWidget(content));
      }

      return widgetList;
    }

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
                pinned: true,
                expandedHeight: 150.0,
                flexibleSpace: const FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text('Available seats'),
                ),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.add_circle),
                    tooltip: 'Add new entry',
                    onPressed: () {/* ... */},
                  ),
                ]),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 200,
                child: Container(
                  color: Colors.red,
                  child: Center(
                    child: Text('SliverToBoxAdapter'),
                  ),
                ),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 100,
              delegate: SliverChildListDelegate([
                //equivalent to Listview
                Container(
                  color: Colors.indigo,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.blue,
                ),
              ]),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => listOfText()[index],
                  childCount: listOfText().length),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 2),
              delegate:
                  SliverChildBuilderDelegate(//equivalent to Listview.builder
                      (context, index) {
                return Container(
                  height: 100,
                  color: Colors.red[100 * (index % 9)],
                  child: Text('Pink $index'),
                );
              }, childCount: 16),
            ),
            SliverGrid.extent(
                maxCrossAxisExtent: 50,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1,
                children: [
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.green,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.yellow,
                  ),
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.green,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.yellow,
                  )
                ])
          ],
        ),
      ),
    );
  }
}
