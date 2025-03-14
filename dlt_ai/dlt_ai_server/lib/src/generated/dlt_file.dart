/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class DltFile implements _i1.TableRow, _i1.ProtocolSerialization {
  DltFile._({
    this.id,
    required this.title,
    required this.created,
  });

  factory DltFile({
    int? id,
    required String title,
    required int created,
  }) = _DltFileImpl;

  factory DltFile.fromJson(Map<String, dynamic> jsonSerialization) {
    return DltFile(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      created: jsonSerialization['created'] as int,
    );
  }

  static final t = DltFileTable();

  static const db = DltFileRepository._();

  @override
  int? id;

  String title;

  int created;

  @override
  _i1.Table get table => t;

  DltFile copyWith({
    int? id,
    String? title,
    int? created,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'created': created,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'created': created,
    };
  }

  static DltFileInclude include() {
    return DltFileInclude._();
  }

  static DltFileIncludeList includeList({
    _i1.WhereExpressionBuilder<DltFileTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DltFileTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DltFileTable>? orderByList,
    DltFileInclude? include,
  }) {
    return DltFileIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(DltFile.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(DltFile.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DltFileImpl extends DltFile {
  _DltFileImpl({
    int? id,
    required String title,
    required int created,
  }) : super._(
          id: id,
          title: title,
          created: created,
        );

  @override
  DltFile copyWith({
    Object? id = _Undefined,
    String? title,
    int? created,
  }) {
    return DltFile(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      created: created ?? this.created,
    );
  }
}

class DltFileTable extends _i1.Table {
  DltFileTable({super.tableRelation}) : super(tableName: 'dlt_file') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    created = _i1.ColumnInt(
      'created',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnInt created;

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        created,
      ];
}

class DltFileInclude extends _i1.IncludeObject {
  DltFileInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => DltFile.t;
}

class DltFileIncludeList extends _i1.IncludeList {
  DltFileIncludeList._({
    _i1.WhereExpressionBuilder<DltFileTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(DltFile.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => DltFile.t;
}

class DltFileRepository {
  const DltFileRepository._();

  Future<List<DltFile>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DltFileTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DltFileTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DltFileTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<DltFile>(
      where: where?.call(DltFile.t),
      orderBy: orderBy?.call(DltFile.t),
      orderByList: orderByList?.call(DltFile.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<DltFile?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DltFileTable>? where,
    int? offset,
    _i1.OrderByBuilder<DltFileTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DltFileTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<DltFile>(
      where: where?.call(DltFile.t),
      orderBy: orderBy?.call(DltFile.t),
      orderByList: orderByList?.call(DltFile.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<DltFile?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<DltFile>(
      id,
      transaction: transaction,
    );
  }

  Future<List<DltFile>> insert(
    _i1.Session session,
    List<DltFile> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<DltFile>(
      rows,
      transaction: transaction,
    );
  }

  Future<DltFile> insertRow(
    _i1.Session session,
    DltFile row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<DltFile>(
      row,
      transaction: transaction,
    );
  }

  Future<List<DltFile>> update(
    _i1.Session session,
    List<DltFile> rows, {
    _i1.ColumnSelections<DltFileTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<DltFile>(
      rows,
      columns: columns?.call(DltFile.t),
      transaction: transaction,
    );
  }

  Future<DltFile> updateRow(
    _i1.Session session,
    DltFile row, {
    _i1.ColumnSelections<DltFileTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<DltFile>(
      row,
      columns: columns?.call(DltFile.t),
      transaction: transaction,
    );
  }

  Future<List<DltFile>> delete(
    _i1.Session session,
    List<DltFile> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<DltFile>(
      rows,
      transaction: transaction,
    );
  }

  Future<DltFile> deleteRow(
    _i1.Session session,
    DltFile row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<DltFile>(
      row,
      transaction: transaction,
    );
  }

  Future<List<DltFile>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DltFileTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<DltFile>(
      where: where(DltFile.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DltFileTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<DltFile>(
      where: where?.call(DltFile.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
