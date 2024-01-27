// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract TodoList {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) external {
        todos.push(Todo({text: _text, completed: false}));
    }

    function updateText() external {}

    function get() external view {}
}
