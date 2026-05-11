class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      SingleChildScrollView(
        controller: controller,
        child: Column(
          children: List.generate(
            100,
            (index) => Container(
              height: 50,
              color: index % 2 == 0 ? Colors.blue : Colors.green,
              child: Center(child: Text('Item $index')),
            ),
          ),
        ),
      ),
    );
  }
}