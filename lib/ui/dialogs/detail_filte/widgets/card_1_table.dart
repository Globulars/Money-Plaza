import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:money_plaza/ui/common/app_colors.dart';

class WebViewHtml extends StatefulWidget {
  final String url;
  const WebViewHtml({Key? key, required this.url}) : super(key: key);

  @override
  State<WebViewHtml> createState() => _WebViewHtmlState();
}

class _WebViewHtmlState extends State<WebViewHtml> {
  @override
  Widget build(BuildContext context) {
    return HtmlWidget(
      // the first parameter (`html`) is required
      widget.url,
      customStylesBuilder: (element) {
        if (element.classes.contains('foo')) {
          return {'color': 'red'};
        }

        return null;
      },

      onErrorBuilder: (context, element, error) =>
          Text('$element error: $error'),
      onLoadingBuilder: (context, element, loadingProgress) =>
          const CircularProgressIndicator(
        color: darkGreenLight,
      ),
      renderMode: RenderMode.column,
      textStyle: const TextStyle(fontSize: 14),
    );
  }
}
