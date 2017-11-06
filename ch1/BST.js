class Node {
  constructor(val) {
    this.value = val;
    this.left = null;
    this.right = null;
  }

  //ignore duplicate node values
  addNode(n) {
    if (n.value < this.value) {
      if (this.left === null) {
        this.left = n;
      } else {
        this.left.addNode(n);
      }
    } else if (n.value > this.value) {
      if (this.right === null) {
        this.right = n;
      } else {
        this.right.addNode(n);
      }
    }
  }

  visit_in_order() {
    if (this.left !== null) {
      this.left.visit_in_order();
    }
    console.log(this.value);
    if (this.right !== null) {
      this.right.visit_in_order();
    }
  }

  visit_preorder() {
    console.log(this.value);
    if (this.left !== null) {
      this.left.visit_preorder();
    }
    if (this.right !== null) {
      this.right.visit_preorder();
    }
  }
}

class Tree {
  constructor() {
    this.root = null;
  }

  addValue(n) {
    let node = new Node(n);
    if (this.root === null) {
      this.root = node;
    } else {
      this.root.addNode(node);
    }
  }

  traverse_in_order() {
    this.root.visit_in_order();
  }

  traverse_preorder() {
    this.root.visit_preorder();
  }

  preOrderTraversal(root) {
  console.log(root.data);
    if (root.left) {
      this.preOrderTraversal(root.left);
    }
    if (root.right) {
      this.preOrderTraversal(root.right);
    }
  }
  
}
var tree = new Tree();
tree.addValue(40);
tree.addValue(78);
tree.addValue(25);
tree.addValue(10);
tree.addValue(32);

// console.log(tree.traverse_in_order());
tree.traverse_preorder();
