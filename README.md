# Binary Search Trees

Assignment created for The Odin Project.

[Link](https://www.theodinproject.com/courses/ruby-programming/lessons/data-structures-and-algorithms?ref=lnav) to the original project.

## Objective

Build a balanced binary search tree using data from a random array of integers.

The Tree class contains a selection of relevant methods including #insert, #delete and #find, and a variety of different traversal methods.

## Visual Example of Output

```
"Balanced?   => true"
"Depth       => 4"
"Level order => [70, 25, 86, 17, 59, 78, 96, 20, 46, 66, 74, 80, 93, 100]"
"Preorder    => [70, 25, 17, 20, 59, 46, 66, 86, 78, 74, 80, 96, 93, 100]"
"Postorder   => [20, 17, 59, 46, 66, 25, 86, 78, 74, 80, 96, 93, 100, 70]"
"Inorder     => [17, 20, 25, 46, 59, 66, 70, 74, 78, 80, 86, 93, 96, 100]"

│           ┌── 100
│       ┌── 96
│       │   └── 93
│   ┌── 86
│   │   │   ┌── 80
│   │   └── 78
│   │       └── 74
└── 70
    │       ┌── 66
    │   ┌── 59
    │   │   └── 46
    └── 25
        │   ┌── 20
        └── 17

"Unbalancing tree"
"Balanced => false"

│                   ┌── 197
│               ┌── 145
│               │   └── 125
│               │       │   ┌── 114
│               │       └── 111
│           ┌── 100
│       ┌── 96
│       │   └── 93
│   ┌── 86
│   │   │   ┌── 80
│   │   └── 78
│   │       └── 74
└── 70
    │       ┌── 66
    │   ┌── 59
    │   │   └── 46
    └── 25
        │   ┌── 20
        └── 17

"Balanced?   => true"
"Depth       => 5"
"Level order => [80, 59, 111, 20, 70, 93, 125, 17, 25, 66, 74, 86, 96, 114, 145, 46, 78, 100, 197]"
"Preorder    => [80, 59, 20, 17, 25, 46, 70, 66, 74, 78, 111, 93, 86, 96, 100, 125, 114, 145, 197]"
"Postorder   => [17, 25, 46, 20, 70, 66, 74, 78, 59, 111, 93, 86, 96, 100, 125, 114, 145, 197, 80]"
"Inorder     => [17, 20, 25, 46, 59, 66, 70, 74, 78, 80, 86, 93, 96, 100, 111, 114, 125, 145, 197]"

│               ┌── 197
│           ┌── 145
│       ┌── 125
│       │   └── 114
│   ┌── 111
│   │   │       ┌── 100
│   │   │   ┌── 96
│   │   └── 93
│   │       └── 86
└── 80
    │           ┌── 78
    │       ┌── 74
    │   ┌── 70
    │   │   └── 66
    └── 59
        │       ┌── 46
        │   ┌── 25
        └── 20
            └── 17
```