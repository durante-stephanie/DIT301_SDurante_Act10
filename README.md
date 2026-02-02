# Cross-Platform To-Do List App

## Project Overview
This project is a simple cross-platform mobile application built using **Flutter**. It allows users to manage a to-do list from a single screen. The primary goal of this lab is to demonstrate how a single codebase can run efficiently on multiple platforms (Android/iOS) using a cross-platform framework.

## Native vs. Cross-Platform Development

| Feature | Native Development | Cross-Platform Development |
| :--- | :--- | :--- |
| **Codebase** | Requires separate codebases (e.g., Kotlin for Android, Swift for iOS). | Uses a **single shared codebase** for all platforms. |
| **Development Speed** | Slower, as code must be written twice. | **Faster**, as logic and UI are shared. |
| **Maintenance** | Higher cost; bugs must be fixed on each platform separately. | **Lower cost**; changes apply everywhere instantly. |
| **Performance** | Highest possible performance (direct access to device API). | Near-native performance (Flutter renders its own UI). |

## App Features
This application meets the following minimum functional requirements:
1.  **Text Input:** Users can type in a new task.
2.  **Add Task:** A button to add the entered task to the list.
3.  **Task List:** Displays all current to-do items dynamically.
4.  **Delete Task:** Users can remove a task by tapping the trash icon.
5.  **Single Screen UI:** All functionality is contained within one clean, user-friendly screen.

## Screenshots

| Adding a Task | Task List | Deleting a Task |
| :---: | :---: | :---: |
| ![Add Task](screenshots/add_task.png) | ![Task List](screenshots/task_list.png) | ![Delete Task](screenshots/delete_task.png) |
