import 'package:grpc/grpc.dart';

import 'connection.dart';

class HttpClientChannel extends ClientChannel {
  final String host;
  final int port;
  final ChannelOptions options;

  HttpClientChannel(this.host, {this.port, this.options})
      : assert(host?.isNotEmpty == true),
        super(host, port: port, options: options);

  @override
  HttpClientConnection createConnection() {
    return HttpClientConnection(this.host, this.port, options: this.options);
  }
}
