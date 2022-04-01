import '../lib/map_path.dart';

void main() {
  final map1 = {
    'a': {
      'b': {
        'c': {
          'd': 'Hello!',
        }
      }
    }
  };

  final result1 = mapPath(map1, ['a', 'b', 'c', 'd']) ?? '';

  // Prints "Hello"
  print(result1);

  final map2 = {
    'a': {
      'b': {
        'c': ['1', '2', '3']
      }
    }
  };

  final result2 = mapPath(map2, ['a', 'b', 'c', 2]) ?? '';

  // Prints "3"
  print(result2);

  final map3 = [
    {'a': 'Hi'},
    {'b': 'Bonjour'}
  ];

  final result3 = mapPath(map3, [0, 'a']) ?? '';

  // Prints "Hi"
  print(result3);

  final map4 = {'a': 1};

  final result4 = mapPath(map4, ['b']) ?? 'null';

  // Returns null because path map4.b not exists;
  print(result4);

  final dynamic map5 = null;

  final result5 = mapPath(map5, ['a']) ?? 'null';

  // Returns null because path map5 is null;
  print(result5);
}
