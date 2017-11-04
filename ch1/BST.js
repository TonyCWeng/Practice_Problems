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
}
let tree = new Tree();
tree.addValue(5);
tree.addValue(17);
tree.addValue(16);
tree.addValue(4);
tree.addValue(5);
tree.addValue(6);

console.log(tree.traverse_in_order());
