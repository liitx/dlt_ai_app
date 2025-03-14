import 'package:dlt_ai_client/dlt_ai_client.dart';
import 'package:dlt_ai_flutter/core/usecase.dart';
import 'package:dlt_ai_flutter/features/dlt/domain/repositories/dlt_repository.dart';

class ListDltFileUseCase implements UserCae<List<DltFile>, NoParams> {
  ListDltFileUseCase({required this.dltRepository});
  final DltRepository dltRepository;
  @override
  Future<List<DltFile>> call(NoParams params) async {
    return await dltRepository.list();
  }
}
