
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';


@Component(
  selector: 'FakeDatabase',
  styleUrls: const ['FakeDatabase.css'],
  templateUrl: 'FakeDatabase.html',
  directives: const [
    CORE_DIRECTIVES,
    materialDirectives,
  ],
  //providers: const [Hero_service],
)

class FakeDatabase implements OnInit{

  FakeDatabase();

  @override
  ngOnInit() {
    // TODO: implement ngOnInit
  }
}