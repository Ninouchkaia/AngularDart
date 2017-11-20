import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'src/todo_list/todo_list_component.dart';
import 'src/Hero/Hero_component.dart';
import 'src/Hero/Hero_service.dart';

import 'package:angular_forms/angular_forms.dart';


// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives, formDirectives, TodoListComponent, HeroComponent],
  providers: const [materialProviders],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
  final title = 'Tour of Heroes';
  Hero hero = new Hero(1, 'Windstorm', 0, 0, 1000, 100, 100, ['Offense']);
}

class Hero {
  final int id;
  String name;
  int level  ;
  int gainedExperience  ;
  int neededExperienceToLevelUp  ;
  int health  ;
  int mana  ;
  var abilities; // list of abilities

  Hero(this.id, this.name, this.level, this.gainedExperience, this.neededExperienceToLevelUp, this.health, this.mana, this.abilities);
}


