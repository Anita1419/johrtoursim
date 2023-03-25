import 'package:flutter/material.dart';
class IntrinsicHeigthh extends StatelessWidget {
  const IntrinsicHeigthh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Text("Intrinsic Height"),
        ),
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
      ),
      body: Card(
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 2,
                    child: Image.network("https://images.unsplash.com/photo-1646019577007-fa720d81b890?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80"
                    ,fit: BoxFit.fill,
                    ),

                ),
                const SizedBox(width: 12,),
                Expanded(
                    flex: 3,
                    child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typeslply same for the intrinsic width",
                  style: const TextStyle(fontSize: 24),
                )
                )
              ],
            ),
          ),
        ),

    );
  }
}
