// websocket_channel_wrapper.dart
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

//This class checks if the app is running on the web or mobile and returns the appropriate WebSocketChannel

abstract class WebSocketChannelWrapper {
  WebSocketChannel connect(String url);

  factory WebSocketChannelWrapper() {
    if (Uri.base.scheme == 'http' || Uri.base.scheme == 'https') {
      return _WebSocketChannelWrapperWeb();
    } else {
      return _WebSocketChannelWrapperIO();
    }
  }
}

class _WebSocketChannelWrapperIO implements WebSocketChannelWrapper {
  @override
  WebSocketChannel connect(String url) {
    return IOWebSocketChannel.connect(url);
  }
}

class _WebSocketChannelWrapperWeb implements WebSocketChannelWrapper {
  @override
  WebSocketChannel connect(String url) {
    return WebSocketChannel.connect(Uri.parse(url));
  }
}