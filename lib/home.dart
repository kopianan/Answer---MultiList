import 'package:dual_scroll/api_repository.dart';
import 'package:dual_scroll/model/top_data.dart';
import 'package:dual_scroll/pages/bottom_list.dart';
import 'package:flutter/material.dart';

import 'pages/top_list.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ApiRepository _apiRepository = ApiRepository();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            child: TopList(
              apiRepository: _apiRepository,
            ),
          ),
          Expanded(
            
            child: BottomList(
              apiRepository: _apiRepository,
            ),
          ),
        ],
      ),
    );
  }
}
