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

### Lobby ###

The main functionality of this lobby is to allow the player to access all 4 levels through the windows of the prison. After passing each level, they are granted a key with which they can open the 4 locks. After opening all of the locks, the player can then escape the prison.

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

The objective of this level is for the player's spaceship to reach the end of the space domain without fatal damage and kill a minimum of 5 UFOs in its path. The player can use the up/W, down/S, and right/D keys for movement and press SHIFT for a boost. The player takes damage upon collision with an asteroid or from being hit by a blast from the UFO. The player statistics in the top right corner displays a health bar and a count for the number of UFOs the player still has to defeat. When the player successfully reaches the end of the level, they can pick up their golden key!

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

## Platformer Level

**Class Content**

*Command Pattern* - The platformer relies on the player node which is completely built around the idea of the command pattern that we learned in class and got to implement in exercise 1. The player uses move, jump, crouch, idle, shoot, and more commands that are called in the _process logic and are essential for completing the level.

*Pushbox Camera in Lvl 2* - The camera in level 2 implements the idea of the push box that we learned about and used in some parts of exercise 2. When the player moves right, the camera moves along with him, but when moving left it does not move until a certain boundary has been touched at which point it moves at the same speed as the player. This is built upon the ideas learned in class as well when going over the many camera processes and variations.

*Path Planning* - The movement and planning process for the enemies in the platformer were based on what we learned in class about Game AI and understanding how, when, and where the enemy would go and what actions it would take. Though the platformer only had very simple enemies, it was still necessary for some of the special enemy types such as the pea shooter, thwomp, and circling rocks to have a planned path and correct execution. Using the class concepts was necessary to achieve that.

## Spaceship Level

### Student Information
*Name: Satyasree Sanegepalli*   
*Email: ssanegepalli@ucdavis.edu*   
*Github: ssaneg*

**Class Content**

*Autoscroll Camera Movement with Partital PushBox* - The camera movement of the game is a combination of different features of the pushbox and controllers in Exercise 2. The camera is set to perform a [constant horizontal autoscroll](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/225a96834739d2f906e4af3a0d7a5ef6a8226745/shattered-dimensions/scripts/spaceship/camera.gd#L14) and the player (spaceship) is [pushed by the left edge of the pushbox](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/camera.gd#L17). The right edge is not restricted so the user must manually ensure they stay within the camera viewport at all times. The player is free to move vertically until they reach the bounds of the background and the [camera follows the player when they move vertically](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/spaceship.gd#L80). 

*Arrow Instantiation System* - The component system discussed in class is employed to create a self contained **fire scene**. This scene contains the [functionality for a set of arrows to be released from the holder and fired across the screen](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/fire.gd#L27). Upon the press of the space bar, the spaceship [instantiates a new set of arrows](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/spaceship.gd#L111) that are loaded onto the spaceship and fired at the incoming UFOs. Each arrow is released at a different time in line with the release animation. The most difficult part of this feature was to handle movement of the spaceship during the firing animation. I needed to ensure that I was [updating the position of the holder and arrows that were not yet fired](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/spaceship.gd#L125) if the spaceship moved. This meant that each arrow had to function individually, independent of the others. My familiarity with the projectile instantiation system from Exercise 3 was extremely helpful for building out this feature.

*Spaceship Movement and Statistics* - The movement of the spaceship is directly tied to specific keys for different functions. The **healthLevel variable** keeps track of the damage done to the spaceship based on collisions with different objects. The statistics in the top right corner consist of a health bar that is constantly updated and a kill count to show how many spaceships the player still has to defeat to win the level. The UFOs have their own health that is depleted by the arrows fired by the spaceship. The [kill count is updated](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/225a96834739d2f906e4af3a0d7a5ef6a8226745/shattered-dimensions/scripts/spaceship/enemy.gd#L19) upon defeat of a UFO. This implementation of this feature involves skills I developed with collision objects, signals, and health management in my boss battle from Exercise 1.

*Enemy Onscreen Detection* - The laser blast system of the enemies also employs the command pattern as each blast is treated as a self contained object. There are numerous enemies placed throughout the map of my level. I was able to set up an automated blast firing system that executes only during the time that an enemy is detected to be within the player's viewport. This system is set to fire with a specific delay between each blast, using concepts from the recharge delay of Stage 1 in Exercise 3. I was able to accomplish onscreen detection by [comparing the camera position to the enemy position](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/enemy.gd#L35). The UFOs also have [automated movement](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/enemy.gd#L23) to add to the difficulty of the level. 

*User Interface* - I was able to use the skills I developed with working on Exercise 1 to create animations for sprites, implement sound effects, and use tilemap layers to set up the background of this level. Some examples are explosions of rotating asteroids after collision, the firing sounds for the spaceship and UFOs, and the space background for the autoscroll. All of these aspects contribute significantly to the game feel and enhance the gaming experience for the user.

**Assets**

[Space Background](https://dinvstudio.itch.io/dynamic-space-background-lite-free): Personal and commercial purposes, but you not allowed to re-distribute or re-sell the asset or any part of it

[Spaceship](https://foozlecc.itch.io/void-main-ship): Creative Commons Zero, CC0

[Asteroids](https://opengameart.org/content/2d-asteroid-sprite): Creative Commons Attribution 3.0

[Explosion](https://opengameart.org/content/explosion-tilesets): Creative Commons Attribution 1.0

[Explosion Sound Effect](https://pixabay.com/sound-effects/explosion-sound-effect-1-free-on-gamesfxpackscom-241821/): Pixabay Content License

[UFOs](https://opengameart.org/content/ufo-spritesheet): Creative Commons Attribution 4.0

[Arrow Shoot Sound Effect](https://pixabay.com/sound-effects/shoot-1-81135/): Pixabay Content License

[Background Music](https://pixabay.com/sound-effects/space-72679/): Pixabay Content License

[Glowing Ball Powerup](https://lvgames.itch.io/free-glowing-ball-sprite-pixel-fx-rpg-maker-ready): Free for commercial use

[Powerup Sound Effect](https://pixabay.com/sound-effects/power-up-type-1-230548/): Pixabay Content License

[Laser Blast Sound Effect](https://pixabay.com/sound-effects/laser-gun-81720/): Pixabay Content License

[Kill Count](): 

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
The main menu of the game is a simple menu with a moving, space-themed background. Because the theme of the game is focused on escaping a space prison, this background worked well. The options given were:
- Start - begin the game (get transported to the Prison scene where the cutscene begins)
- Instructions - get an idea of what the game is about and how to go about playing it
- Credits - a rolling credits scene showing creator info and special thanks as well

![ScreenRecording2024-12-09at5 53 55PM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/83e65f5e-dee3-41df-ba64-43fe8372bb50)

The credits scene uses a script that continually shifts the y position of all the text up until the return button is reached.

![ScreenRecording2024-12-09at5 54 17PMonline-video-cutter com-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/4f2c0008-77e9-4cd8-96dd-8b241a5b3618)

**Player Mechanics**

![ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/ea7a6699-322f-4e91-9eaa-4423940ab023)

The player development was based on the needs for 2 out of the 4 mini-games, namely the platformer and run n gun games. The platformer mechanics were pretty simple as they only required operations like moving, jumping, and crouching. The run n gun mechanics were more complex as it involved shooting as well. The player uses an animated sprite and has all the animations for the different actions. In terms of the actual logic and scripts there were a couple different parts that needed to be created. The main logic focuses on using a process very similar to the player in exercise 1 so basically using a character node and having the player stem off of that. I also implemented the command pattern and implemented the commands such as moving, jumping, crouching, etc. For crouching I needed to change the hitbox of the player to be lower, and that was implemented in the script.

![ScreenRecording2024-12-09at6 16 49PM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/f4c745c4-17ff-476d-b423-a42ad58daf3b)

Because the player node was being used in both the Platformer level and also the Run n Gun level, I created divided sections to place variables and functions for both level types so that it would be well organized. For the platformer level, I created a respawn function that relocates the player position rather than reloading the entire script. For the Run n Gun the death process involved creating a death animation that would be instantiated on losing all lives.

Additional work was also done by other team members who needed very specific functionality with the player node so there are additional functions and variables as well.

## Prison Lobby

**Student Information**
*Name: Satyasree Sanegepalli*   
*Email: ssanegepalli@ucdavis.edu*   
*Github: ssaneg*

I was able to source the necessary assets for the prison lobby and implement the underlying logic. The prison setting of this main lobby allows the player access into all 4 dimensions to play the minigames necessary to escape. The assets chosen for this scene provide cohesion with the story of the initial cutscene and allow the player to move around and explore the different dimensions. Each window serves as a portal to a different minigame and is equipped with a collision object to detect the player's entrance. I have also implemented an automated [moving platform](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/8434e8191ef8215c6ded14c60ae8eafa1faf97ad/shattered-dimensions/scripts/platform.gd#L18) to allow the player to move from the ground floor to the top floor of the prison. After the play successfully beats a level, they are awarded a key with triggers the unlocking function of one lock on the prison wall. Once all keys are unlocked, the player has won the game.

The variables for level completion were made global by **Abhimanyu Warrier**.

**Assets**

[Lock Unlocking Sound](https://pixabay.com/sound-effects/item-pick-up-38258/): Pixabay Content License

[Prison](https://jestan.itch.io/prison): 
    - You may not distribute the contents of this .zip file in  whole or in part, unless as part of a game or similar product.
    - If you use this material in a game or other product, please give  attribution to Jestan in the credits.
    - You are free to use this in any commercial / non-commercial product(s).

[Locks](https://dantepixels.itch.io/key-items-16x16)
    - You can :
        - Use the assets for non-commercial AND commercial project.
        - Adapt and/or modify the assets to match your project.
        - Credit me with my Twitter: @pixelahead
    - You can NOT:
        - Distribute or sell those assets directly (even modified).
        - Claim the asset yours.

[Background Music](): 
    - sourced and attached by **Anunary Akhaury** 

<img src="https://github.com/user-attachments/assets/ecdf6eb4-ff5b-4a77-ba4a-7002e15b0a0a" width="700">

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
