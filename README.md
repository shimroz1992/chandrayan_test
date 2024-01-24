# README
# Chandrayaan 3 Lunar Craft Control

## Problem Statement

As a Software Craftsperson at Incubyte, you are tasked with developing a program that translates commands sent from Earth into instructions understood by the Chandrayaan 3 lunar spacecraft. The spacecraft navigates through the galaxy using galactic coordinates (x, y, z), where x represents east or west, y represents north or south, and z represents the distance above or below the galactic plane.

## Requirements

You will be given the initial starting point (x, y, z) of the spacecraft and the direction it is facing (N, S, E, W, Up, Down). The spacecraft receives a character array of commands, and you are required to implement the following functionalities:

1. **Move the spacecraft forward/backward (f, b):** The spacecraft moves one step forward or backward based on its current direction.
2. **Turn the spacecraft left/right (l, r):** The spacecraft rotates 90 degrees to the left or right, changing its facing direction.
3. **Turn the spacecraft up/down (u, d):** The spacecraft changes its angle, rotating upwards or downwards.

**Note:**
- The spacecraft’s initial direction (N, S, E, W, Up, Down) represents the reference frame for movement and rotation.
- The spacecraft cannot move or rotate diagonally; it can only move in the direction it is currently facing.
- Assume that the spacecraft’s movement and rotations are rigid, and it cannot move beyond the galactic boundaries.

## Example

Given the starting point (0, 0, 0) following (x, y, z) and initial direction N, the following commands should result in the indicated final position and direction:

Commands: ["f", "r", "u", "b", "l"]

Starting Position: (0, 0, 0)

Initial Direction: N

1. "f" - (0, 1, 0) - N
2. "r" - (0, 1, 0) - E
3. "u" - (0, 1, 0) - U
4. "b" - (0, 1, -1) - U
5. "l" - (0, 1, -1) - N

Final Position: (0, 1, -1)

Final Direction: N

Your task is to design the program that enables Chandrayaan 3 to execute these commands accurately and efficiently in the vast expanse of the galaxy.
## set up the project
### Clone the repository:  
`git clone https://github.com/shimroz1992/chandrayan_test.git`  
### Change into the project directory:  
`cd chandrayan_test`  
### Install Dependencies:  
`bundle install`  
`rails db:create`  

`rails db:migrate`  
### Run the Server:  
`rails server`  
or  
`rails s`

## Add RSpec to the Gemfile:  
Open your project's Gemfile and add the rspec-rails gem to the :development, :test group.
`gem 'rspec-rails'`   
`bundle install`
### Initialize RSpec:  
`rails generate rspec:install`
### Run RSpec:  

You can now run RSpec to execute your tests.  

`rspec`  
or  

`rspec spec/models`  

## Conclusion

Thank you for exploring the Chandrayaan 3 Lunar Craft Control project! Feel free to contribute, provide feedback, or delve deeper into the vast expanse of space exploration in software development. Happy coding🚀...







