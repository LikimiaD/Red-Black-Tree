# RBTree

## Overview

`RBTree` is a C++ implementation of the Red-Black Tree, a balanced binary search tree. It provides efficient operations to insert, remove, and find elements with guaranteed log(n) time complexity in the worst case. Each node in the tree is colored either red or black, and the tree maintains several balancing properties to ensure that the tree remains balanced.

## Class Structure

### Node

The `Node` structure represents a single node within the tree.

- **Members**:
  - `KeyType key`: The key of the node.
  - `ValueType value`: The value associated with the key.
  - `Node* left`: Pointer to the left child.
  - `Node* right`: Pointer to the right child.
  - `Node* parent`: Pointer to the parent node.
  - `bool color`: The color of the node (RED or BLACK).

- **Constructor**:
  - `Node(const KeyType& k, const ValueType& v)`: Initializes a new node with the given key and value.

### RBTree

- **Constructors and Destructor**:
  - `RBTree()`: Initializes an empty Red-Black Tree.
  - `RBTree(const RBTree& other)`: Copy constructor.
  - `RBTree(RBTree&& other) noexcept`: Move constructor.
  - `~RBTree()`: Destructor.

- **Assignment Operators**:
  - `RBTree& operator=(const RBTree& other)`: Copy assignment operator.
  - `RBTree& operator=(RBTree&& other) noexcept`: Move assignment operator.

- **Public Methods**:
  - `void insert(const KeyType& key, const ValueType& value)`: Inserts a new element.
  - `void remove(const KeyType& key)`: Removes an element by its key.
  - `bool contains(const KeyType& key) const`: Checks if a key exists in the tree.
  - `void clear()`: Clears the tree.
  - `int size() const`: Returns the number of elements in the tree.
  - `Node* find(const KeyType& key)`: Finds a node by its key.
  - `Node* minimum()`: Returns the node with the minimum key.
  - `Node* maximum()`: Returns the node with the maximum key.
  - `Node* minimum(Node* node)`: Finds the minimum node from the given node.
  - `Node* maximum(Node* node)`: Finds the maximum node from the given node.

## Project Structure

The project is organized as follows:

```
.
├── LICENSE
├── Makefile
├── README.md
├── compiler.lua
├── include
│   └── rb_tree.h
├── test
│   ├── main.cpp
│   └── rb_tree.cpp
└── xmake.lua
```

- `LICENSE`: The license file.
- `Makefile`: The makefile for building the project.
- `compiler.lua`: Compiler configuration for xmake.
- `include/rb_tree.h`: Header file for the `RBTree` class.
- `test/main.cpp` & `test/rb_tree.cpp`: Test files for the `RBTree` implementation.
- `xmake.lua`: xmake build configuration file.

## Building and Running

To build and run the project, use the following commands:

```bash
make
```

For more information on using xmake, refer to the [xmake documentation](https://github.com/xmake-io/xmake-docs).
