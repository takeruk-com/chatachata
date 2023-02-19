import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _textEditingController =
      TextEditingController(text: "");
  bool _searchBoolean = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: TextField(
                onTap: () {
                  setState(() {
                    _searchBoolean = true;
                  });
                },
                controller: _textEditingController,
                decoration: InputDecoration(
                  hintText: "トピックを検索",
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                  suffixIcon: Visibility(
                    visible: _searchBoolean,
                    child: IconButton(
                      onPressed: () {
                        _textEditingController.clear();
                      },
                      icon: const Icon(
                        Icons.clear,
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
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.sort),
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
                    child: Text(
                      "キャンセル",
                      style: Theme.of(context).brightness == Brightness.dark
                          ? const TextStyle(color: Colors.white70)
                          : const TextStyle(color: Colors.black54),
                    ),
                  ),
                ),
              ),
            ],
            expandedHeight: 60,
            floating: true,
            titleSpacing: 0,
            elevation: 0,
          ),
          SliverToBoxAdapter(
            child: !_searchBoolean
                ? const Center(child: Text('Index 1: Search'))
                : const Center(child: Text('トピックを検索')),
          ),
        ],
      ),
    );
  }
}
