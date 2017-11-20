import 'dart:async';

import 'package:angular/core.dart';

import 'Hero_component.dart';

/// Mock service emulating access to a to-do list stored on a server.
@Injectable()
class HeroService {
  List<String> mockHero = <String>[];



  Future<List<String>> getHero() async => mockHero;
}
