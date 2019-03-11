import 'package:bigdeals2/tabs/model/categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewCategory extends StatefulWidget {
  CategaryItem category;
  WebViewCategory({Key key,this.category});
  @override
  _WebViewCategoryState createState() => _WebViewCategoryState();
}

class _WebViewCategoryState extends State<WebViewCategory> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        // elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(180, 11, 204, 200),
        title: Text(widget.category.name,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
      ),
      url: widget.category.ads_url,
      withZoom: true,
    );
    
  }
}