// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyStruct {
    struct Course {
        string courseName;
        string courseFaculty;
        uint courseId;
    }

    Course course;
    Course course1;

    function defineCourse() public {
        course = Course("Solidity Learning", "Mr XYZ", 3345);
        course1 = Course("C++", "Ms ABC", 111);
    }

    function getCourseId() public view returns (uint){
        return course1.courseId;
    }
}