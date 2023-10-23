import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            leading: Container(
                child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            )),
            title: Container(
              child: Text("Aplikasi App Bar"),
            ),
            actions: [
              Container(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ),
              Container(
                  child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              )),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(120),
              child: Container(
                margin: EdgeInsets.all(6),
                height: 50,
                color: Colors.white,
                child: Center(
                  child: Text("Bottom"),
                ),
              ),
            )),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ColumnAndRowNestingWidget(),
                  SizedBox(height: 20),
                  RowWidget(),
                  ColumWidget(),
                  SizedBox(height: 20),
                  ContainerWithBoxDecoration()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ColumnAndRowNestingWidget extends StatelessWidget {
  const ColumnAndRowNestingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text("Column and Row Nesting 1"),
        Text("Column and Row Nesting 1"),
        Text("Column and Row Nesting 1"),
        Container(
          child: Text(""), 
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Row Nesting 1"),
            Text("Row Nesting 2"),
            Text("Row Nesting 3"),
          ],
        )
      ],
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text("Row 1"),
        Padding(padding: EdgeInsets.all(16)),
        Text("Row 2"),
        Padding(padding: EdgeInsets.all(16)),
        Text("Row 3"),
        Padding(padding: EdgeInsets.all(16)),
      ],
    );
  }
}

class ColumWidget extends StatelessWidget {
  const ColumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("Row 1"),
          Divider(),
          Text("Row 2"),
          Divider(),
          Text("Row 3"),
          Divider(),
        ],
      ),
    );
  }
}

class ContainerWithBoxDecoration extends StatelessWidget {
  const ContainerWithBoxDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(100.0),
            bottomRight: Radius.circular(100.0),
          ),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.lightBlue.shade500,
              ]),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0))
          ]),
      child: Center(
        child: Text("Container"),
      ),
    );
  }
}
