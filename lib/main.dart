import 'package:flutter/material.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cross-Platform To-Do List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const TodoScreen(),
    );
  }
}

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  // List to store the tasks
  final List<String> _tasks = [];
  
  // Controller to retrieve text from the input field
  final TextEditingController _textController = TextEditingController();

  // Function to add a task
  void _addTask() {
    if (_textController.text.isNotEmpty) {
      setState(() {
        _tasks.add(_textController.text);
        _textController.clear(); // Clear input after adding
      });
    }
  }

  // Function to remove a task
  void _removeTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Req 5: Single screen UI 
      appBar: AppBar(
        title: const Text('My To-Do List'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Req 3: List displaying all tasks 
          Expanded(
            child: _tasks.isEmpty
                ? const Center(
                    child: Text(
                      'No tasks yet. Add one below!',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  )
                : ListView.builder(
                    itemCount: _tasks.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: ListTile(
                          title: Text(_tasks[index]),
                          // Req 4: Ability to remove tasks 
                          trailing: IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () => _removeTask(index),
                          ),
                        ),
                      );
                    },
                  ),
          ),
          
          // Input Section
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: const Border(top: BorderSide(color: Colors.grey)),
            ),
            child: Row(
              children: [
                // Req 1: Text input for new tasks 
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: const InputDecoration(
                      hintText: 'Enter a new task...',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                // Req 2: Button to add tasks 
                ElevatedButton(
                  onPressed: _addTask,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                  ),
                  child: const Text('Add'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}