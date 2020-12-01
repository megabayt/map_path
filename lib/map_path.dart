dynamic mapPath(dynamic map, List<dynamic> path) {
  var result = map;

  final pathOk = path.every((key) {
    if (map is! Map<String, dynamic> && map is! List<dynamic>) {
      return false;
    }
    if (key is int && (result is! List<dynamic> || key > result.length - 1)) {
      return false;
    }
    if (result[key] != null) {
      result = result[key];
      return true;
    }
    return false;
  });

  if (!pathOk) {
    return null;
  }

  return result;
}
