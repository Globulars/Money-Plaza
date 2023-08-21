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
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebViewHtml extends StatefulWidget {
  final String url;
   const WebViewHtml({Key? key, required this.url}) : super(key: key);

  @override
  State<WebViewHtml> createState() => _WebViewHtmlState();
}

class _WebViewHtmlState extends State<WebViewHtml> {
   InAppWebViewController? _webViewController;

  @override
   
  Widget build(BuildContext context) {
    return 
     InAppWebView(
                initialData: InAppWebViewInitialData(data: widget.url) ,initialOptions: InAppWebViewGroupOptions(
                    crossPlatform: InAppWebViewOptions(
                      // debuggingEnabled: true,
                    )
                ),
                onWebViewCreated: (InAppWebViewController controller) {
                  _webViewController = controller;

                  _webViewController?.addJavaScriptHandler(handlerName:'handlerFoo', callback: (args) {
                    // return data to JavaScript side!
                    return {
                      'bar': 'bar_value', 'baz': 'baz_value'
                    };
                  }
                  );

                  _webViewController?.addJavaScriptHandler(handlerName: 'handlerFooWithArgs', callback: (args) {
                    print(args);
                    // it will print: [1, true, [bar, 5], {foo: baz}, {bar: bar_value, baz: baz_value}]
                  });
                },
                onConsoleMessage: (controller, consoleMessage) {
                  print(consoleMessage);
                  // it will print: {message: {"bar":"bar_value","baz":"baz_value"}, messageLevel: 1}
                },
             
            );
    
        
      
        // body: Html(
        //     data:
        //         """<table><tr><td>100</td><td>200</td><td>300</td></tr></table>"""),
    
  }
}
