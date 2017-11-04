class Node {
  constructor(val) {
    this.value = val;
    this.left = null;
    this.right = null;
  }

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
}

class Tree {
  constructor(value) {
    this.root = value;
  }

  addValue(n) {
    let node = new Node(n);
    if (this.root === null) {
      this.root = node;
    } else {
      this.root.addNode(n);
    }
  }


}

let ast = new Node(4);
console.log(ast);
