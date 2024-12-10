# Shattered Dimensions #

## Summary ##
Shattered Dimensions is a prison escape game focused on a space explorer who has been trapped in a dimensional prison. In order for him to escape, he must venture through the 4 dimensional gates and retrieve the 4 keys which come from each separate dimension. Each dimension is a different type of level with a unique style including a platformer level, run and gun level, car level, and spaceship level. Once players beat each level to retrieve the special keys, they can escape the prison and win the game. Do you have what it takes to escape this dimensional prison? Enter the cosmos and find out.

## Project Resources

[Web-playable version of your game.](https://itch.io/)  
[Trailor](https://youtube.com)  
[Press Kit](https://dopresskit.com/)  
[Proposal: make your own copy of the linked doc.](https://docs.google.com/document/d/1qwWCpMwKJGOLQ-rRJt8G8zisCa2XHFhv6zSWars0eWM/edit?usp=sharing)  

## Gameplay Explanation ##

**In this section, explain how the game should be played. Treat this as a manual within a game. Explaining the button mappings and the most optimal gameplay strategy is encouraged.**

Shattered Dimensions is a 4 level game, and requires players to be skilled in various types of gaming styles. Once players begin the game, they will enter the Prison where there are 4 entrances to each of the different levels. The controls and play style of each level is explained below:

<img src="https://github.com/user-attachments/assets/ecdf6eb4-ff5b-4a77-ba4a-7002e15b0a0a" width="700">

### Platformer ###

The objective of the platformer is to move through the level and reach the end without hitting any of the obstacles and within the given life count per level within the platformer. The player will initially be taken to a difficulty selector screen where they can choose how many lives they want per level. To move the player, use the default WASD and ARROW KEYS with an additional input on the space key that executes jump as well. The keys will perform, move_left, move_right, jump, and crouch. Level specific controls/strategies are explained below.

Level 1:
This is a static screen level with no camera movement. Players will traverse from bottom left to top right going in a zig zag fashion. There are moving platforms, spikes, and special mechanics. The blue orb indicates a double jump: When the player is on the blue orb, they must click the jump input once again to have a second jump middair. The orange orb indicates that the platform below will ascend when the player is touching the orange orb. This can be used to reach platforms that are too high to jump to. Getting to the blue portal on the top right shifts the player to level 2.

Level 2:
This level is not static and has camera movement, but is essentially the same. The mechanics are the same with a green orb indicating descend rather than ascend. There are complex enemies like a pea shooter, and a Thwomp(mario) type of spike box. There are also obstacles like a arrow trap and also a crushing ceiling section. Moving to the right and reaching the final door takes players to Level 3.

Level 3:
Move to the top right and collect the key. You deserve it!

### Run and Gun ###

### Car Level ###

### Spaceship Level ###

The objective of this level is for the player's spaceship to reach the end of the space domain without fatal damage and kill a minimum of 5 UFOs in its path. The player can use the up, down, and right keys for movement and press D for a quick boost. The player takes damage upon collision with an asteroid or from being hit by a blast from the UFO. The player statistics in the top right corner displays a health bar and a count for the number of UFOs the player still has to defeat. When the player successfully reaches the end of the level, they can pick up their golden key!

**Add it here if you did work that should be factored into your grade but does not fit easily into the proscribed roles! Please include links to resources and descriptions of game-related material that does not fit into roles here.**

# External Code, Ideas, and Structure #

If your project contains code that: 1) your team did not write, and 2) does not fit cleanly into a role, please document it in this section. Please include the author of the code, where to find the code, and note which scripts, folders, or other files that comprise the external contribution. Additionally, include the license for the external code that permits you to use it. You do not need to include the license for code provided by the instruction team.

If you used tutorials or other intellectual guidance to create aspects of your project, include reference to that information as well.

# Main Roles #

Your goal is to relate the work of your role and sub-role in terms of the content of the course. Please look at the role sections below for specific instructions for each role.

Below is a template for you to highlight items of your work. These provide the evidence needed for your work to be evaluated. Try to have at least four such descriptions. They will be assessed on the quality of the underlying system and how they are linked to course content. 

*Short Description* - Long description of your work item that includes how it is relevant to topics discussed in class. [link to evidence in your repository](https://github.com/dr-jam/ECS189L/edit/project-description/ProjectDocumentTemplate.md)

Here is an example:  
*Procedural Terrain* - The game's background consists of procedurally generated terrain produced with Perlin noise. The game can modify this terrain at run-time via a call to its script methods. The intent is to allow the player to modify the terrain. This system is based on the component design pattern and the procedural content generation portions of the course. [The PCG terrain generation script](https://github.com/dr-jam/CameraControlExercise/blob/513b927e87fc686fe627bf7d4ff6ff841cf34e9f/Obscura/Assets/Scripts/TerrainGenerator.cs#L6).

You should replay any **bold text** with your relevant information. Liberally use the template when necessary and appropriate.

## Spaceship Level

**Class Content**

*Autoscroll Camera Movement with Partital PushBox* - The camera movement of the game is a combination of different features of 
the pushbox and controllers in Exercise 2. The camera is set to perform a constant horizontal autoscroll and the player 
(spaceship) is pushed by the left edge of the pushbox. The player is restricted from moving to the right past the dimensions of 
the screen to allow a view of the spaceship at all times. The player is free to move vertically until they reach the bounds of 
the background. 

*Arrow & Blast Instantiation Systems* - Upon the press of the space bar, the spaceship instantiates a new set of arrows that are loaded onto the spaceship and fired at the incoming UFOs. Each arrow is released at a different time in line with the animation of the fire and operates independently of the rest once all the arrows are released. The enemy UFOs have a similar system with blasts, where they automatically instantiate blasts with a constant delay once the UFO is within the camera viewport. These blasts are also equipped with animation and cause damage to the spaceship upon collision. These systems are based upon the projectile instantiation demonstrated in Exercise 3. 

*Spaceship Movement and Statistics* - The movement of the spaceship is directly dependent upon the pressing of the up, down, and right keys. Damage of the spaceship is handled by the healthLevel variable that is updated based on different collisions and the health is constantly displayed in the top right corner by the use of a health bar. The UFOs have their own health which is depleted by the arrows fired by the spaceship. The spaceship.gd script also keeps track of the number of UFOs defeated. My implementation of the spaceship demonstrates my learning from Exercise 1 with the character and boss.

## Platformer Level

My main role was the platformer level, a level based on games like _I wanna be the guy_ and _Super Meatboy_. Because we split our roles into levels rather than overarching systems, we all got to do a little bit of everything, which is what I will go into detail about below. Overall, the game consists of 2 main levels with the second more difficult than the first. Below I will explain all the systems necessary to making the game.

**Player Movement/Physics**
Player movement was pretty simple and required only 4 main controls which were move_left, move_right, crouch, and jump. The main goal of the game is based on accurately timed jumps to get over/under obstacles and reach difficult, moving platforms. There are level boundaries set up along the edges of each level to ensure that if a player hits those, they lose a a life and respawn at the level default. <insert level 1 gif>

In terms of the player camera, I gave level 1 a static camera that displays the entire level because of the fact that it is built in a zig-zag motion and players would want to reach from the bottom left to the top right. Level 2 has a slightly more complex camera where there is a push-box implementation similar to exercise 2. I made it so the player can push on the right-side around halfway into the screen but on the left, there would be some space before the camera moves back left. This was to ensure certain areas like the downward descent in Level 2 were fully visible on the screen without any camera movement necessary since many of the obstacles were not easily seen without this system.
<insert level 2 camera gif>

**Enemies/Obstacles**
There are many obstacles with various use-cases all around the levels. I made a universal KillZone class that already implemented the death response when a player enters the obstacle and so I was able to use that for every enemy. This ensured that there was no need for an additional script on each obstacle, rather they all called KillZone.

_Basic Spike_
The basic spike is a core obstacle that is scattered throughout the floor pieces of both levels. I used the spikes in many sizes using the scale attribute and used a collision polygon to get the hitbox exactly in a triangular shape.

_Saw Blade/Spike Ball_
The saw blade and spike ball are similarly present in both levels. I added a script that would constantly rotate the saw blade at a certain pace so that it would replicate a real saw blade motion. Here I only needed to use a collision shape, namely a circle since the rotation would anyway prevent there ever from being a slip through a small point in the blade. For the spike ball, I had a similar script but with a much slower rotation, necessating a very accurate collision polygon.

_SpikeBlock_
I made this obstacle specifically for level 2 as a moving block with 2 spikes attached on the left and right. It was animated to move left and right on a given surface.

_Descent Zone (2 new enemies)_
For the descent zone in level 2, I added 2 special enemies, specifically a Thwomp and a pea shooter. The Thwomp was inspired by the Mario world and worked in a similar fashion where it was animated to come down, wait a little bit, and slownly come up, before waiting and repeating. The pea shooter was located in a space in the wall and made to shoot a green ball at a regular interval. I used an animation to achieve this where the ball would shoot to the other side, wait, and then repeat the animation. This made it so that players would need to crouch to avoid the pea.

_Raising Spike Factory_
The raising spike factory used the Factory Pattern concept to create a class that constantly spawns spike blocks in an upward or downward direction. I also added an export variable to determine speed so I could create different spike blocks at different speeds.

_Arrow Trap/Crusher_
The arrow trap is a hanging trap that shoots a group of "arrows" down to the ground at a set interval. This works similar to many of the other animated enemies as it shoots down, waits, and repeats the process. All arrows are equipped with spikes on the end to make it easier to develop. The crusher is similar to the arrow trap except it slowly comes down and goes back up. I created it after being inspired again by many platforming games where the player would need to find a divot in the ground to not get crushed. I added blue jump orbs in each divot so the player could get up and reach the next one in time without being crushed.

**Special Items/Platforms**

**Animations**

**Audio**

**Assets**

**Related Class Content**

*Command Pattern* - The platformer relies on the player node which is completely built around the idea of the command pattern that we learned in class and got to implement in exercise 1. The player uses move, jump, crouch, idle, shoot, and more commands that are called in the _process logic and are essential for completing the level.

*Pushbox Camera in Lvl 2* - The camera in level 2 implements the idea of the push box that we learned about and used in some parts of exercise 2. When the player moves right, the camera moves along with him, but when moving left it does not move until a certain boundary has been touched at which point it moves at the same speed as the player. This is built upon the ideas learned in class as well when going over the many camera processes and variations.

*Path Planning* - The movement and planning process for the enemies in the platformer were based on what we learned in class about Game AI and understanding how, when, and where the enemy would go and what actions it would take. Though the platformer only had very simple enemies, it was still necessary for some of the special enemy types such as the pea shooter, thwomp, and circling rocks to have a planned path and correct execution. Using the class concepts was necessary to achieve that.

## User Interface and Input

**Describe your user interface and how it relates to gameplay. This can be done via the template.**
**Describe the default input configuration.**

**Add an entry for each platform or input style your project supports.**

## Movement/Physics

**Describe the basics of movement and physics in your game. Is it the standard physics model? What did you change or modify? Did you make your movement scripts that do not use the physics system?**

## Animation and Visuals

**List your assets, including their sources and licenses.**

### Prison

### Spaceship Level


**Describe how your work intersects with game feel, graphic design, and world-building. Include your visual style guide if one exists.**

## Game Logic

**Document the game states and game data you managed and the design patterns you used to complete your task.**

# Sub-Roles

## Player Mechanics/UI - ABHI
**UI**
The [main menu](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/cfaf076168504e1c8e5793a9c240a6b728543a44/shattered-dimensions/scripts/menu_screens/game_menu.gd#L1) of the game is a simple menu with a moving, space-themed background. Because the theme of the game is focused on escaping a space prison, this background worked well. The options given were:
- Start - begin the game (get transported to the Prison scene where the cutscene begins)
- [Instructions](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/cfaf076168504e1c8e5793a9c240a6b728543a44/shattered-dimensions/scripts/menu_screens/instructions.gd#L1) - get an idea of what the game is about and how to go about playing it
- Credits - a rolling credits scene showing creator info and special thanks as well

![ScreenRecording2024-12-09at5 53 55PM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/83e65f5e-dee3-41df-ba64-43fe8372bb50)

The [credits scene uses a script](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/cfaf076168504e1c8e5793a9c240a6b728543a44/shattered-dimensions/scripts/menu_screens/credits_label.gd#L4) that continually shifts the y position of all the text up until the return button is reached.

![ScreenRecording2024-12-09at5 54 17PMonline-video-cutter com-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/4f2c0008-77e9-4cd8-96dd-8b241a5b3618)

**Player Mechanics**

![ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/ea7a6699-322f-4e91-9eaa-4423940ab023)

The player development was based on the needs for 2 out of the 4 mini-games, namely the platformer and run n gun games. The platformer mechanics were pretty simple as they only required operations like moving, jumping, and crouching. The run n gun mechanics were more complex as it involved shooting as well. The player uses an animated sprite and has all the animations for the different actions. In terms of the actual logic and scripts there were a couple different parts that needed to be created. The main logic focuses on using a process very similar to the player in exercise 1 so basically using a character node and having the player stem off of that. I also implemented the [command pattern](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/cfaf076168504e1c8e5793a9c240a6b728543a44/shattered-dimensions/scripts/commands/command.gd#L1) and implemented the commands such as moving, jumping, crouching, etc. For crouching I needed to [change the hitbox of the player](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/cfaf076168504e1c8e5793a9c240a6b728543a44/shattered-dimensions/scripts/player/player.gd#L272) to be lower, and that was implemented in the script.

![ScreenRecording2024-12-09at6 16 49PM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/f4c745c4-17ff-476d-b423-a42ad58daf3b)

Because the player node was being used in both the Platformer level and also the Run n Gun level, I created [divided sections](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/cfaf076168504e1c8e5793a9c240a6b728543a44/shattered-dimensions/scripts/player/player.gd#L10) to place variables and functions for both level types so that it would be well organized. For the platformer level, I created a [respawn function](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/cfaf076168504e1c8e5793a9c240a6b728543a44/shattered-dimensions/scripts/player/player.gd#L154) that relocates the player position rather than reloading the entire script. For the Run n Gun the death process involved creating a death animation that would be instantiated on losing all lives.

Additional work was also done by other team members who needed very specific functionality with the player node so there are additional functions and variables as well.



## Gameplay Testing

**Add a link to the full results of your gameplay tests.**

**Summarize the key findings from your gameplay tests.**

## Narrative Design

**Document how the narrative is present in the game via assets, gameplay systems, and gameplay.** 

## Press Kit and Trailer

**Include links to your presskit materials and trailer.**

**Describe how you showcased your work. How did you choose what to show in the trailer? Why did you choose your screenshots?**

## Game Feel and Polish

**Document what you added to and how you tweaked your game to improve its game feel.**
