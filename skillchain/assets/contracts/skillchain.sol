// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EmployeeData {
    struct Employee {
        string id;
        string name;
        string entryDate;
        string[] roles;
        string[] roleStartDates;
        string resignedDate;
    }

    mapping(string => Employee) employees;

    function addEmployee(
        string memory id,
        string memory name,
        string memory entryDate,
        string memory firstRole,
        string memory firstRoleStartDate,
        string memory resignedDate
    ) public {
        Employee storage employee = employees[id];
        employee.id = id;
        employee.name = name;
        employee.entryDate = entryDate;
        employee.roles.push(firstRole);
        employee.roleStartDates.push(firstRoleStartDate);
        employee.resignedDate = resignedDate;
    }

    function updateRole(
        string memory id,
        string memory newRole,
        string memory newRoleStartDate
    ) public {
        Employee storage employee = employees[id];
        require(bytes(employee.id).length > 0, "Employee does not exist");
        employee.roles.push(newRole);
        employee.roleStartDates.push(newRoleStartDate);
    }

    function getEmployee(
        string memory id
    ) public view returns (Employee memory) {
        return employees[id];
    }
}
