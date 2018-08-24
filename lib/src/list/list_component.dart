import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'list_service.dart';
import '../item.dart';


@Component(
  selector: 'list',
  styleUrls: ['list_component.css'],
  templateUrl: 'list_component.html',
  directives: [
    
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
  ],
  providers: [const ClassProvider(ListService)],
)
class ListComponent implements OnInit {
  final ListService listService;

  List<Item> items = [];
  Item newItem;

  ListComponent(this.listService);

  @override
  Future<Null> ngOnInit() async {
    items = await listService.getList();
  }

  void add() {
    items.add(newItem);
    newItem = null;
  }

  Item remove(int index) => items.removeAt(index);
}
