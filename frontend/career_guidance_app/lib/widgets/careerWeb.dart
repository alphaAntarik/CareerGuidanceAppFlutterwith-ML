import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../Career/CareerDataModel.dart';

class careerWeb extends StatefulWidget {
  final String listUrl;
  final CareerDataModel careerDataModel;
  careerWeb(this.listUrl, this.careerDataModel);

  @override
  State<careerWeb> createState() => _careerWebState();
}

class _careerWebState extends State<careerWeb> {
  bool isLoading = true;

  WebViewController controller = WebViewController();

  changeUrl(String url) {
    WebViewController newcontroller = WebViewController();
    newcontroller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
          onPageStarted: (String url) {
            setState(() {
              isLoading = true;
            });
          },
          onPageFinished: (String url) {
            setState(() {
              isLoading = false;
            });
          },
        ),
      )
      ..loadRequest(
        Uri.parse(url),
      );
    if (mounted) {
      setState(() {
        controller = newcontroller;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeUrl(widget.listUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.careerDataModel.careerName),
          backgroundColor: Theme.of(context).primaryColor),
      body: Column(
        children: [
           isLoading
              ? Expanded(
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  ),
                )
              : Expanded(child: WebViewWidget(controller: controller)),
        ],
      ),
    );
  }
}
