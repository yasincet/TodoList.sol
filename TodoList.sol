// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract TodoList {
    
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;
    // todo creation function.
     function create(string calldata _text) external{
        todos.push(Todo({
            text:_text,
            completed:false
        }));
    }
    // todo update function.
    function updateText(uint256 _index, string calldata _text) external {
        todos[_index].text = _text;

    }
    // todo access function.
    function get(uint256 _index) external view returns(string memory, bool) {
        Todo memory todo = todos[_index];
        return(todo.text, todo.completed);
    }
    // todo complated status changing
    function toggleComplated(uint256 _index) external {
        todos[_index].completed = !todos[_index].completed;
    }
}
