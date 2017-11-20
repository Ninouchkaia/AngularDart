
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';


@Component(
  selector: 'Monster',
  styleUrls: const ['Monster.css'],
  templateUrl: 'Monster.html',
  directives: const [
    CORE_DIRECTIVES,
    materialDirectives,
  ],
  //providers: const [Hero_service],
)

class Monster implements OnInit{
  String name;
  int level;
  int health;
  int experienceGivenWhenDefeated; //Health points to remove when it hits an ennemy.

  Monster(this.name, this.level, this.health, this.experienceGivenWhenDefeated);

  @override
  ngOnInit() {
    // TODO: implement ngOnInit
  }
}