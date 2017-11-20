import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'Hero_service.dart';

@Component(
  selector: 'Hero',
  styleUrls: const ['Hero_component.css'],
  templateUrl: 'Hero_component.html',
  directives: const [
    CORE_DIRECTIVES,
    materialDirectives,
  ],
  providers: const [HeroService],
)

class HeroComponent implements OnInit{
  final HeroService heroService;

  int id;
  String name;
  int level;
  int gainedExperience;
  int neededExperienceToLevelUp;
  int health;
  int mana;
  var abilities; // list of abilities

  List<String> items = [];
  String newHero = '';

  HeroComponent(this.heroService);

  @override
  Future<Null> ngOnInit() async {
    items = await heroService.getHero();
  }

  void add() {
    items.add(newHero);
    newHero = '';
  }

  String remove(int index) => items.removeAt(index);
  void onReorder(ReorderEvent e) =>
      items.insert(e.destIndex, items.removeAt(e.sourceIndex));

}