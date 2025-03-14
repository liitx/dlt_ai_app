import 'package:dlt_ai_client/src/protocol/dlt_file.dart';
import 'package:dlt_ai_flutter/core/error/exceptions.dart';
import 'package:dlt_ai_flutter/core/error/failure.dart';
import 'package:dlt_ai_flutter/features/dlt/data/datasources/dlt_datasource.dart';
import 'package:dlt_ai_flutter/features/dlt/domain/repositories/dlt_repository.dart';

class DltRepositoryImpl implements DltRepository {
  DltRepositoryImpl({required this.datasource});
  final DltDatasource datasource;
  @override
  Future<List<DltFile>> list() async {
    try {
      return await datasource.list();
    } on ServerException catch (e) {
      return Failure(message: e.toString()) as Future<List<DltFile>>; //miro
    }
  }

  @override
  Future<DltFile> retrieve(int id) async {
    try {
      return await datasource.retrieve(id);
    } on ServerException catch (e) {
      return Failure(message: e.toString()) as Future<DltFile>; //miro
    }
  }
}
