// import 'package:flutter/material.dart';
// import 'package:money_plaza/ui/common/app_colors.dart';
// import 'package:stacked/stacked.dart';
// import '../../../widgets/common/icon_box_btn/text.dart';
// import '../detail_filte_dialog_model.dart';

// class Card1Table extends ViewModelWidget<DetailFilteDialogModel> {
//   const Card1Table({Key? key}) : super(key: key);

//   @override
//   Widget build(
//     BuildContext context,
//     DetailFilteDialogModel viewModel,
//   ) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: DataTable(
//           columnSpacing: 3,
//           dataRowMinHeight: 3,
//           dataRowMaxHeight: 20,
//           horizontalMargin: 0,
//           columns: [
//             DataColumn(
//               label: SizedBox(
//                   width: 40,
//                   child: CustomText(
//                     text: 'loanAmount',
//                     textAlign: TextAlign.start,
//                     color: darkGreenHeigh,
//                     fontSize: 10,
//                   )),
//             ),
//             DataColumn(
//               label: SizedBox(
//                   width: 60,
//                   child: CustomText(
//                     text: 'repaymentPeriod',
//                     textAlign: TextAlign.center,
//                     color: darkGreenHeigh,
//                     fontSize: 10,
//                   )),
//             ),
//             DataColumn(
//               label: SizedBox(
//                   width: 60,
//                   child: CustomText(
//                     text: 'weLendCashRebate',
//                     textAlign: TextAlign.center,
//                     color: darkGreenHeigh,
//                     fontSize: 10,
//                   )),
//             ),
//             DataColumn(
//               label: SizedBox(
//                   width: 60,
//                   child: CustomText(
//                     text: 'exclusiveRebate',
//                     textAlign: TextAlign.center,
//                     color: darkGreenHeigh,
//                     fontSize: 10,
//                   )),
//             ),
//             DataColumn(
//               label: SizedBox(
//                   width: 60,
//                   child: CustomText(
//                     text: 'extraRebate',
//                     textAlign: TextAlign.center,
//                     color: darkGreenHeigh,
//                     fontSize: 10,
//                   )),
//             ),
//           ],
//           rows: [
//             DataRow(cells: [
//               DataCell(SizedBox(
//                   width: 20,
//                   child: CustomText(
//                     text: '1',
//                     textAlign: TextAlign.center,
//                     fontSize: 10,
//                   ))),
//               DataCell(SizedBox(
//                   width: 60,
//                   child: Center(
//                       child: CustomText(
//                     text: "\$6.36.777",
//                     textAlign: TextAlign.center,
//                     fontSize: 8,
//                   )))),
//               DataCell(SizedBox(
//                   width: 60,
//                   child: Center(
//                       child: CustomText(
//                     text: "\$65.36.777",
//                     textAlign: TextAlign.center,
//                     fontSize: 8,
//                   )))),
//               DataCell(SizedBox(
//                   width: 60,
//                   child: Center(
//                       child: CustomText(
//                     text: "\$65.36.777",
//                     textAlign: TextAlign.center,
//                     fontSize: 8,
//                   )))),
//               DataCell(SizedBox(
//                   width: 60,
//                   child: Center(
//                       child: CustomText(
//                     text: "\$654.36.777",
//                     textAlign: TextAlign.center,
//                     fontSize: 8,
//                   )))),
//             ]),
//             DataRow(cells: [
//               DataCell(SizedBox(
//                   width: 20,
//                   child: CustomText(
//                     text: '2',
//                     textAlign: TextAlign.center,
//                     fontSize: 10,
//                   ))),
//               DataCell(SizedBox(
//                   width: 60,
//                   child: Center(
//                       child: CustomText(
//                           text: "\$6.36.777",
//                           textAlign: TextAlign.center,
//                           fontSize: 8)))),
//               DataCell(SizedBox(
//                   width: 60,
//                   child: Center(
//                       child: CustomText(
//                     text: "\$65.36.777",
//                     textAlign: TextAlign.center,
//                     fontSize: 8,
//                   )))),
//               DataCell(SizedBox(
//                   width: 60,
//                   child: Center(
//                       child: CustomText(
//                     text: "\$65.36.777",
//                     textAlign: TextAlign.center,
//                     fontSize: 8,
//                   )))),
//               DataCell(SizedBox(
//                   width: 60,
//                   child: Center(
//                       child: CustomText(
//                     text: "\$654.36.777",
//                     textAlign: TextAlign.center,
//                     fontSize: 8,
//                   )))),
//             ]),
//           ]),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

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
      '''
  <h3>Heading</h3>
  <p>
    A paragraph with <strong>strong</strong>, <em>emphasized</em>
    and <span style="color: red">colored</span> text.
  </p>
  <!-- anything goes here -->
  ''',

      // all other parameters are optional, a few notable params:

      // specify custom styling for an element
      // see supported inline styling below
      customStylesBuilder: (element) {
        if (element.classes.contains('foo')) {
          return {'color': 'red'};
        }

        return null;
      },

      // render a custom widget
      customWidgetBuilder: (element) {
        if (element.attributes['foo'] == 'bar') {
          return Text("okkkkkkkk");
        }

        return null;
      },

      // these callbacks are called when a complicated element is loading
      // or failed to render allowing the app to render progress indicator
      // and fallback widget
      onErrorBuilder: (context, element, error) =>
          Text('$element error: $error'),
      onLoadingBuilder: (context, element, loadingProgress) =>
          CircularProgressIndicator(),

      // this callback will be triggered when user taps a link
      // onTapUrl: (url) => print('tapped $url'),

      // select the render mode for HTML body
      // by default, a simple `Column` is rendered
      // consider using `ListView` or `SliverList` for better performance
      renderMode: RenderMode.column,

      // set the default styling for text
      textStyle: TextStyle(fontSize: 14),

      // turn on `webView` if you need IFRAME support (it's disabled by default)
      // webView: true,
    );
    // return Container( height: 800, width: 200,
    //   child: Html(
    //     data: widget.url,
    //     shrinkWrap: true,
    //     // data:
    //     //     '<figure class="table"><table style="background-color:rgb(255, 255, 255);border:2px solid rgb(0, 0, 0);"><tbody><tr><th><strong>NAME</strong></th><th>DATE</th><th>DD</th></tr><tr><th>PETER</th><th>2020</th><th>SDSD</th></tr><tr><th>SAM</th><th>2021</th><th>SSS</th></tr></tbody></table></figure>',
    //     style: {
    //       "table": Style(
    //         backgroundColor: Colors.white,
    //       ),
    //       "tr": Style(
    //           padding: HtmlPaddings.all(2),
    //           border: Border.all(color: Colors.black)),
    //       "th": Style(
    //           padding: HtmlPaddings.all(2),
    //           border: Border.all(color: Colors.black)),
    //       "td": Style(
    //           padding: HtmlPaddings.all(2),
    //           border: Border.all(color: Colors.black)),
    //     },
    //     extensions: const [TableHtmlExtension()],
    //   ),
    // );
  }
}
