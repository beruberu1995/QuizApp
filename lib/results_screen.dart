import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({Key? key, required this.selectedAnswers}) : super(key: key);

  final List<String> selectedAnswers;

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text(
          'Results',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Your Selected Answers:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.separated(
                  itemCount: widget.selectedAnswers.length,
                  itemBuilder: (context, index) {
                    return CupertinoListTile(
                      index: index + 1,
                      answer: widget.selectedAnswers[index],
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(
                    color: CupertinoColors.systemGrey4,
                    thickness: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CupertinoListTile extends StatelessWidget {
  final int index;
  final String answer;

  const CupertinoListTile({Key? key, required this.index, required this.answer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 240, 178, 254),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 246, 97, 196),
            foregroundColor: CupertinoColors.white,
            child: Text(
              index.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              answer,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
