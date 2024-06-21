import 'package:flutter/material.dart';
import 'package:typographia/typographia.dart';

void main() {
  runApp(const MyApp());
}

List<Widget> all = [
  TextDisplayLarge('Display Large\nopacity: 0.5', opacity: 0.5),
  TextDisplayMedium('Display Medium\ncolor: orange[600]', color: Colors.orange[600]),
  TextDisplaySmall('Display Small\nbackgroundColor: blue[100]', backgroundColor: Colors.blue[100]),
  TextHeadlineLarge('Headline Large\ndecoration: TextDecoration.underline', decoration: TextDecoration.underline),
  TextHeadlineMedium('Headline Medium. \ndirection: TextDirection.rtl', direction: TextDirection.rtl),
  TextHeadlineSmall('Headline Small. overflow: TextOverflow.ellipsis. Plus some jibber-jabber to overflow', overflow: TextOverflow.ellipsis),
  TextTitleLarge('Title Large. softWrap: false. Plus some jibber-jabber to overflow', softWrap: false),
  TextTitleMedium('Title Medium. textAlign: TextAlign.center', textAlign: TextAlign.center),
  TextTitleSmall('Title Small'),
  TextBodyLarge('BodyLarge'),
  TextBodyMedium('BodyMedium'),
  TextBodySmall('BodySmall'),
  TextLabelLarge('LabelLarge'),
  TextLabelMedium('LabelMedium'),
  TextLabelSmall('LabelSmall'),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var columnChildren = all.reversed.map((e) => 
      Padding(
        padding: const EdgeInsets.only(bottom: 16), 
        child: SizedBox(
          width: 600,
          child: e
        )
      )
    ).toList();

    return MaterialApp(
      title: 'Typographia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Typographia'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: columnChildren
              ),
            ),
          ),
        ),
      )
    );
  }
}