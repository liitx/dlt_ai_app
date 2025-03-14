import 'package:dlt_ai_client/dlt_ai_client.dart';

abstract interface class DltRepository {
  Future<List<DltFile>> list();
  Future<DltFile> retrieve(int id);
}
