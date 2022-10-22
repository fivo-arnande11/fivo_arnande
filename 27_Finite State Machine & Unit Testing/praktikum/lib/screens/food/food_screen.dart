import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'food_view_model.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      // Provider.of<MenuViewModel>(context, listen: false).getAllMenus();
      var foodViewModel = Provider.of<FoodViewModel>(context, listen: false);
      await foodViewModel.getAllFoods();
    });
  }

  @override
  Widget build(BuildContext context) {
    final foodViewModel = Provider.of<FoodViewModel>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Foods'),
          centerTitle: true,
        ),
        body: body(foodViewModel));
  }

  Widget listView(FoodViewModel foodViewModel) {
    return ListView.builder(
        itemCount: foodViewModel.foods.length,
        itemBuilder: (context, index) {
          final food = foodViewModel.foods[index];
          return ListTile(
            title: Text(food.id.toString()),
            subtitle: Text(food.name),
          );
        });
  }

  Widget body(FoodViewModel foodViewModel) {
    final isLoading = foodViewModel.state == FoodViewState.loading;
    final isError = foodViewModel.state == FoodViewState.error;
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (isError) {
      return const Center(
        child: Text('Error Loaded'),
      );
    }

    return listView(foodViewModel);
  }
}
