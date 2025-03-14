import 'package:dlt_ai_client/dlt_ai_client.dart';
import 'package:dlt_ai_flutter/core/error/exceptions.dart';
// import 'package:dlt_ai_flutter/core/error/failure.dart';

abstract interface class DltDatasource {
  Future<List<DltFile>> list();
  Future<DltFile> retrieve(int id);
}

class DltDatasourceImpl implements DltDatasource {
  DltDatasourceImpl({required this.client});
  final Client client;
  // final SessionManager sessionManager;

  @override
  Future<List<DltFile>> list() async {
    try {
      return await client.dltFile.list();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<DltFile> retrieve(
    int id,
  ) async {
    try {
      final result = await client.dltFile.retrieve(id);
      if (result == null) {
        throw const ServerException(message: 'Dlt File (id) Not Found');
      }
      return result;
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
