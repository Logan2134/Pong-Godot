Pong Game - Godot 4
Overview
Welcome to the Pong Game built using Godot 4. This project is a modern take on the classic Pong game, designed to introduce new programmers and game developers to the basics of 2D game development in Godot. It features two-player paddle controls, ball physics, and collision mechanics, making it a fun starting point for understanding how to work with Godot's engine.

Features
Player vs. Player: Both players can control their paddles using keyboard input.
Physics-based ball movement: The ball bounces off walls and paddles with slight randomness added for varied gameplay.
Simple AI: (Optional) Play against the computer-controlled paddle in single-player mode.
No reset mechanics: The game plays continuously without forced resets after scoring.

Installation and Setup
Prerequisites
Download and install Godot 4 from Godot Engine website.

How to Run the Game
Clone the repository to your local machine:
git clone https://github.com/your-username/pong-game-godot.git

Open Godot 4 and click Import Project.
Browse to the folder where you cloned the repository and select project.godot.
Click the Play button at the top-right corner of the editor to run the game.

Controls
Player 1:
Move Up: W
Move Down: S

Player 2:
Move Up: Up Arrow
Move Down: Down Arrow

Optional: Switch to AI Mode
To enable an AI-controlled second player:
Go to the Godot editor.
Find the right paddle node and attach the AI paddle script, or replace the manual input script with the AI script.

How to Play
Objective: The goal is to prevent the ball from getting past your paddle while trying to score against your opponent by sending the ball past their paddle.
The ball will bounce off the walls and paddles. A slight randomness is added to make the game less predictable.
The first player to reach a predetermined score (default: 10) wins the game.

Project Structure
PongGame/: This folder contains all the scenes, scripts, and assets for the game.
Main.tscn: The main scene that combines all elements of the game.
Paddle.tscn: Scene for the paddles.
Ball.tscn: Scene for the ball with collision and movement.
Scripts/: All the game scripts for paddles, ball, and game logic.
Assets/: Any image, sound, or other resources used in the game.

Contribution
Contributions to this project are welcome! If you want to improve the game or add new features, please follow these steps:

Fork this repository.
Create a new branch:
git checkout -b feature-name
Make your changes and commit them:

git commit -m "Add some feature"
Push to the branch:

git push origin feature-name
Create a Pull Request explaining the changes you’ve made.

License
This project is licensed under the MIT License. See the LICENSE file for details.
