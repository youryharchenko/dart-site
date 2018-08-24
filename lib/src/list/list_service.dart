import 'dart:async';

import 'package:angular/core.dart';
import '../item.dart';

/// Mock service emulating access to a list stored on a server.
@Injectable()
class ListService {

  List<Item> mockList = <Item>[
    Item(1, 
      "Learning WebGL in Dart", "https://youryharchenko.github.io/site/webgl/", 
      "Forked from", "https://github.com/jtmcdole/dart-webgl", 
      "Adapted to Dart2 (In progress)", "https://github.com/youryharchenko/dart-webgl"
    )
  ];
  Future<List<Item>> getList() async => mockList;
}
