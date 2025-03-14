import 'dart:async';

import 'package:dlt_ai_client/dlt_ai_client.dart';
import 'package:dlt_ai_flutter/core/usecase.dart';
import 'package:dlt_ai_flutter/features/dlt/domain/repositories/dlt_repository.dart';

class RetrieveDltFileUseCase
    implements UserCae<DltFile, RetrieveDltFileParams> {
  RetrieveDltFileUseCase({required this.dltRepository});
  final DltRepository dltRepository;

  @override
  Future<DltFile> call(RetrieveDltFileParams params) async {
    return await dltRepository.retrieve(params.id);
  }
}

class RetrieveDltFileParams {
  const RetrieveDltFileParams({required this.id});
  final int id;
}
