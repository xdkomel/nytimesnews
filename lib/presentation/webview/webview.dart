import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../common/loading_indicator.dart';

class Webview extends StatefulWidget {
  final Uri url;

  const Webview({super.key, required this.url});

  @override
  State<Webview> createState() => _WebviewState();
}

class _WebviewState extends State<Webview> {
  final _controller = WebViewController();
  bool loading = true;

  @override
  void initState() {
    _loadImage();
    super.initState();
  }

  Future<void> _loadImage() async {
    await _controller.loadRequest(widget.url);
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            SafeArea(child: WebViewWidget(controller: _controller)),
            Positioned.fill(
              child: Center(
                child: AnimatedOpacity(
                  opacity: loading ? 1 : 0,
                  duration: const Duration(milliseconds: 200),
                  child: const LoadingIndicator(),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(25),
                        offset: const Offset(0, 0),
                        spreadRadius: 16,
                        blurRadius: 16,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
