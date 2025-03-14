import 'package:dlt_ai_server/src/generated/dlt_file.dart';
import 'package:serverpod/serverpod.dart';

class DltFileEndpoint extends Endpoint {
  Future<List<DltFile>> list(Session session) async {
    return DltFile.db.find(session);
  }

  Future<DltFile?> retrieve(Session session, int id) async {
    return DltFile.db.findById(session, id);
  }

  Future<DltFile> create(Session session, DltFile dltFile) async {
    return await DltFile.db.insertRow(session, dltFile);
  }
}
