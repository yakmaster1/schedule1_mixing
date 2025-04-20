import 'package:schedule_calculator/drugs.dart';

class DrugAlgorithm {
  static void fingAllPaths(DrugTreeNode root, DrugTreeNode node, int max) {
    if(max <= 0) {
      return;
    }
    if(node == root && max != 5) {
      return;
    }
    final DrugEffectEnum drugEnum = node.value;
    final DrugEffect drugEffect = DrugEffects.getDrugEffectFromEnum(drugEnum);
    for (var route in drugEffect.drugRoutes) {
      final DrugTreeNode child = DrugTreeNode(
        parent: node,
        ingredient: route.ingredient,
        value: route.devolvesTo
      );
      node.addChild(child);
      if(!DrugEffects.starterDrugEffects.contains(route.devolvesTo)) {
        fingAllPaths(root, child, max-1);
      }
    }
  }

  static List<List<DrugTreeNode>> extractPaths(DrugTreeNode root) {
    final List<List<DrugTreeNode>> result = [];
    void dfs(DrugTreeNode node, List<DrugTreeNode> path) {
      path.add(node);
      if (node.children.isEmpty) {
        if (path.length > 1) {
          final cleanPath = path.map((e) => DrugTreeNode(
            value: e.value,
            ingredient: e.ingredient,
          )).toList().reversed.toList();
          result.add(cleanPath);
        }
      } else {
        for (var child in node.children) {
          dfs(child, List.from(path));
        }
      }
    }
    dfs(root, []);
    return result;
  }
}

class DrugTreeNode {
  final DrugTreeNode? parent;
  final DrugEffectEnum value;
  final Ingredient? ingredient;
  final List<DrugTreeNode> children = [];

  DrugTreeNode({
    this.parent,
    this.ingredient,
    required this.value
  });

  void addChild(DrugTreeNode child) {
    children.add(child);
  }
}