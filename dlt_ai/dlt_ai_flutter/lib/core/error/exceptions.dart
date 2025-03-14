class ServerException implements Exception {
  const ServerException({this.message = 'Random Exception'});
  final String message;
}
