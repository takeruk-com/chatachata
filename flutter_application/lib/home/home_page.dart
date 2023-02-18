import 'package:flutter/material.dart';
import 'package:flutter_application/notification/notification_page.dart';
import 'package:flutter_application/setting/setting_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _textEditingController =
      TextEditingController(text: "");
  bool _searchBoolean = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: TextField(
              cursorColor: Colors.white,
              onTap: () {
                setState(() {
                  _searchBoolean = true;
                });
              },
              controller: _textEditingController,
              decoration: InputDecoration(
                hintText: "マイトピックを検索",
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.white70,
                ),
                suffixIcon: Visibility(
                  visible: _searchBoolean,
                  child: IconButton(
                    onPressed: () {
                      _textEditingController.clear();
                    },
                    icon: const Icon(
                      Icons.clear,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                filled: true,
                contentPadding: const EdgeInsets.all(0.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          actions: [
            Visibility(
              visible: !_searchBoolean,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationPage()),
                  );
                },
                icon: const Icon(Icons.notifications),
                splashColor: Colors.transparent,
                splashRadius: 20,
              ),
            ),
            Visibility(
              visible: !_searchBoolean,
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingPage()),
                    );
                  },
                  icon: const Icon(Icons.settings),
                  splashColor: Colors.transparent,
                  splashRadius: 20,
                ),
              ),
            ),
            Visibility(
              visible: _searchBoolean,
              child: Padding(
                padding: const EdgeInsets.only(right: 8, left: 8),
                child: TextButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    _searchBoolean = false;
                  },
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  child: const Text(
                    "キャンセル",
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ),
            ),
          ],
          titleSpacing: 0,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: !_searchBoolean
            ? const Center(child: Text('Index 0: Home'))
            : const Center(child: Text('マイトピックを検索')));
  }
}
