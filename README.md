# TaskFlow – Project & Task Management System

## 1. Project Overview

TaskFlow is a Business Analysis portfolio project for a web-based Project and Task Management System.

The system is designed to help managers create projects, assign tasks to employees, track work progress, monitor deadlines, and generate performance reports.

This project focuses on Business Analysis activities, including requirement analysis, use case modeling, business process modeling, data modeling, wireframing, and test case design.

---

## 2. Project Objectives

The main objectives of TaskFlow are:

* Centralize project and task management.
* Help managers assign and track employee tasks.
* Improve deadline monitoring.
* Reduce manual reporting.
* Support employee performance evaluation.
* Improve collaboration between managers and employees.

---

## 3. Business Problem

Many small and medium-sized companies still manage tasks using Excel, email, Zalo, or Messenger.

This causes several problems:

* Managers cannot track task progress in real time.
* Employees may forget deadlines.
* Task assignment is unclear.
* Reports are created manually and take time.
* Employee performance is difficult to evaluate.
* Information is scattered across multiple platforms.

TaskFlow is proposed as a centralized system to solve these problems.

---

## 4. My Role

**Role:** Business Analyst

As a Business Analyst, I was responsible for:

* Analyzing business problems and project objectives.
* Defining project scope.
* Writing Functional Requirements and Non-Functional Requirements.
* Creating User Stories and Acceptance Criteria.
* Designing Use Case Diagrams and Use Case Descriptions.
* Modeling business processes using BPMN.
* Designing ERD for system data structure.
* Creating low-fidelity wireframes.
* Preparing test cases for key features.

---

## 5. Main Features

### Account Management

* Login
* Change password
* Forgot password

### Project Management

* Create project
* Update project
* View project list
* View project detail
* Archive project

### Task Management

* Create task
* Update task
* Track task progress
* Archive task
* Filter tasks by project, assignee, status, priority, and deadline

### My Tasks

* View assigned tasks
* Update task status
* Update task progress

### Notification

* New task notification
* Deadline warning
* Overdue task notification

### Reports Dashboard

* Project progress report
* Overdue task report
* Employee performance report

---

## 6. Project Deliverables

This repository includes the following Business Analysis artifacts:

| No. | Deliverable                 | Description                                                                                                            |
| --- | --------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| 1   | Business Analysis Document  | Main documentation including business problem, scope, requirements, use cases, BPMN, ERD, wireframes, and test summary |
| 2   | Functional Requirements     | List of system features and functions                                                                                  |
| 3   | Non-Functional Requirements | Performance, security, usability, availability, and reliability requirements                                           |
| 4   | User Stories                | Agile-style user stories with acceptance criteria                                                                      |
| 5   | Use Case Diagrams           | General and detailed use case diagrams                                                                                 |
| 6   | Use Case Descriptions       | Detailed descriptions for key use cases                                                                                |
| 7   | BPMN Diagrams               | Business process flows for core processes                                                                              |
| 8   | ERD                         | Entity Relationship Diagram for system data structure                                                                  |
| 9   | Wireframes                  | Low-fidelity wireframes for key screens                                                                                |
| 10  | Test Cases                  | Test cases covering positive and negative scenarios                                                                    |

---

## 7. Folder Structure

```text
TaskFlow/
│
├── 01_Documentation/
│   └── TaskFlow_Business_Analysis_Document.pdf
│
├── 02_Use_Case/
│   ├── Use_Case_General.png
│   ├── UC_01_Project_Management.png
│   ├── UC_02_Task_Management.png
│   ├── UC_03_Assigned_Task_Handling.png
│   └── UC_04_Reports.png
│
├── 03_BPMN/
│   ├── BPMN_Create_Task.png
│   └── BPMN_Handle_Assigned_Task.png
│
├── 04_ERD/
│   └── TaskFlow_ERD.png
│
├── 05_Wireframes/
│   ├── Login.png
│   ├── Dashboard.png
│   ├── Project_List.png
│   ├── Project_Detail.png
│   ├── Task_Management.png
│   ├── Create_Task_Popup.png
│   └── Reports_Dashboard.png
│
├── 06_Test_Cases/
│   └── TaskFlow_Test_Cases.xlsx
│
└── README.md
```

---

## 8. Key Business Rules

* A user must log in before accessing the system.
* A project can have many members.
* A project can have many tasks.
* A task must belong to one project.
* A task must have one assignee.
* A manager can view all tasks in projects they manage.
* An employee can only view tasks assigned to them.
* A task is considered overdue when the deadline is earlier than the current date and the task is not completed.
* Project progress is calculated based on completed tasks over total tasks.
* Employee performance is calculated based on assigned, completed, and overdue tasks.

---

## 9. ERD Summary

Main entities:

* Role
* User
* Project
* ProjectMember
* Task
* Notification

Main relationships:

* One Role has many Users.
* One User can create many Projects.
* One Project has many Tasks.
* One User can be assigned many Tasks.
* One Project has many Users through ProjectMember.
* One User can receive many Notifications.
* One Task can generate many Notifications.

---

## 10. Wireframe Screens

The project includes low-fidelity wireframes for:

* Login
* Dashboard
* Project List
* Project Detail
* Task Management
* Create Task Popup
* My Tasks
* Reports Dashboard

These wireframes focus on layout, user actions, and required information rather than final UI design.

---

## 11. Test Case Summary

The test case file includes 20 test cases covering the main features of TaskFlow.

Test cases include:

* Login
* Project Management
* Task Management
* My Tasks
* Reports

Summary:

| Type                | Number |
| ------------------- | ------ |
| Positive Test Cases | 13     |
| Negative Test Cases | 7      |
| Total Test Cases    | 20     |

---

## 12. Tools Used

* Microsoft Word
* Microsoft Excel
* Draw.io
* Figma / Wireframe tool
* GitHub

---

## 13. What I Learned

Through this project, I practiced the full Business Analysis workflow:

* Understanding business problems
* Defining scope
* Writing requirements
* Creating user stories
* Modeling use cases
* Designing business processes
* Understanding data relationships
* Creating wireframes
* Preparing test cases

This project helped me understand how a Business Analyst connects business needs with system design and testing activities.

---

## 14. Project Status

Status: Completed for Business Analysis portfolio.

Future improvements:

* Add Data Dictionary
* Add UAT Scenarios
* Improve wireframes into high-fidelity UI prototype
* Add SQL scripts for database creation
