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
import 'dart:async' as _i2;
import 'package:dlt_ai_client/src/protocol/dlt_file.dart' as _i3;
import 'protocol.dart' as _i4;

/// {@category Endpoint}
class EndpointDltFile extends _i1.EndpointRef {
  EndpointDltFile(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'dltFile';

  _i2.Future<List<_i3.DltFile>> list() =>
      caller.callServerEndpoint<List<_i3.DltFile>>(
        'dltFile',
        'list',
        {},
      );

  _i2.Future<_i3.DltFile?> retrieve(int id) =>
      caller.callServerEndpoint<_i3.DltFile?>(
        'dltFile',
        'retrieve',
        {'id': id},
      );

  _i2.Future<_i3.DltFile> create(_i3.DltFile dltFile) =>
      caller.callServerEndpoint<_i3.DltFile>(
        'dltFile',
        'create',
        {'dltFile': dltFile},
      );
}

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i4.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    dltFile = EndpointDltFile(this);
    example = EndpointExample(this);
  }

  late final EndpointDltFile dltFile;

  late final EndpointExample example;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'dltFile': dltFile,
        'example': example,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
