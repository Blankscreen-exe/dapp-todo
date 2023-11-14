pragma solidity ^0.5.0;

contract TodoList{
    uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    // acts as a database for key-value pairs
    mapping (uint => Task) public tasks;

    constructor() public {
        createTask("DOOP");
    }

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}