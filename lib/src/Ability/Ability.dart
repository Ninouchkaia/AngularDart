import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';


@Component(
  selector: 'Ability',
  styleUrls: const ['Ability.css'],
  templateUrl: 'Ability.html',
  directives: const [
    CORE_DIRECTIVES,
    materialDirectives,
  ],
  //providers: const [Hero_service],
)

class Ability implements OnInit{
  final int id;
  String name;
  String description;
  SpellType Type;// Type as a spell type
  int manaRequired;
  int damage; //Health points to remove when it hits an ennemy.

  Ability(this.id, this.name, this.description, this.Type, this.manaRequired, this.damage);

  @override
  ngOnInit() {
    // TODO: implement ngOnInit
  }
}

enum SpellType {Physical, Magical, Neutral}
