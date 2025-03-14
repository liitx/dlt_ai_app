/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class DltFile implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  int created;

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
