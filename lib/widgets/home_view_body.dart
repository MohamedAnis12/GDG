import 'package:flutter/material.dart';
import 'package:gdg/Widgets/Custom_text_field.dart';
import 'package:gdg/model/task_model.dart';
import 'package:gdg/viewModel/task_view_model.dart';
import 'package:gdg/widgets/Custom_button.dart';
import 'package:provider/provider.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextField(controller: _textController),
          CustomButton(textController: _textController, formKey: _formKey),
          const SizedBox(height: 16),
          Expanded(
            child: Consumer<TaskViewModel>(
              builder: (context, viewModel, child) {
                return ListView.builder(
                  itemCount: viewModel.tasks.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListTile(
                          title: Text(viewModel.tasks[index].task),
                          trailing: IconButton(
                            onPressed: () {
                              Provider.of<TaskViewModel>(
                                context,
                                listen: false,
                              ).deleteTask(index);
                            },
                            icon: Icon(Icons.delete),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
