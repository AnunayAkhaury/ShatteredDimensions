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

The objective of the car level is to drive to the endpoint in order to obtain the key while escaping all obstacles along the way and killing enough enemies in order to retrieve weapons that will allow you to unlock the key. The scene starts off with a car chase, followed by a mini police battle. The car then has to continue driving, ensuring not to drive over spikes, kill enough enemies, and protect your health by getting the health power ups and/or the fuel power ups to help them survive. There are basic move right and left commands to the car, which are controlled by A,D or the arrows. The player can shoot by using click, and if they earned a power up bullet, they can use shift to toggle between a normal bullet and the power up. The player takes damage from bullets being shot by enemies, from crashing with a car, or driving over spikes. The player health bar, remaining lives, kill count, and bullet power up enabled information are shown at the the top right and left corners of the screen.

### Spaceship Level ###

The objective of this level is for the player's spaceship to reach the end of the space domain without fatal damage and kill a minimum of 5 UFOs in its path. The player can use the up/W, down/S, and right/D keys for movement and press SHIFT for a boost. The player takes damage upon collision with an asteroid or from being hit by a blast from the UFO. The player statistics in the top right corner displays a health bar and a count for the number of UFOs the player still has to defeat. When the player successfully reaches the end of the level, they can pick up their golden key!

**Add it here if you did work that should be factored into your grade but does not fit easily into the proscribed roles! Please include links to resources and descriptions of game-related material that does not fit into roles here.**

# External Code, Ideas, and Structure #

If your project contains code that: 1) your team did not write, and 2) does not fit cleanly into a role, please document it in this section. Please include the author of the code, where to find the code, and note which scripts, folders, or other files that comprise the external contribution. Additionally, include the license for the external code that permits you to use it. You do not need to include the license for code provided by the instruction team.

If you used tutorials or other intellectual guidance to create aspects of your project, include reference to that information as well.

- [Guidance for car physics](https://www.youtube.com/watch?v=nPX9MrnvNLo)

# Main Roles #

Your goal is to relate the work of your role and sub-role in terms of the content of the course. Please look at the role sections below for specific instructions for each role.

Below is a template for you to highlight items of your work. These provide the evidence needed for your work to be evaluated. Try to have at least four such descriptions. They will be assessed on the quality of the underlying system and how they are linked to course content. 

*Short Description* - Long description of your work item that includes how it is relevant to topics discussed in class. [link to evidence in your repository](https://github.com/dr-jam/ECS189L/edit/project-description/ProjectDocumentTemplate.md)

Here is an example:  
*Procedural Terrain* - The game's background consists of procedurally generated terrain produced with Perlin noise. The game can modify this terrain at run-time via a call to its script methods. The intent is to allow the player to modify the terrain. This system is based on the component design pattern and the procedural content generation portions of the course. [The PCG terrain generation script](https://github.com/dr-jam/CameraControlExercise/blob/513b927e87fc686fe627bf7d4ff6ff841cf34e9f/Obscura/Assets/Scripts/TerrainGenerator.cs#L6).

You should replay any **bold text** with your relevant information. Liberally use the template when necessary and appropriate.
## Team Info

[Abhimanyu Warrier](avwarrier@ucdavis.edu)  -  Platformer Level + UI/Player Mechanics

[Satya Sanegapalli](ssanegapalli@ucdavis.edu)  -  Spaceship Level + Prison Lobby

[Anunay Akhaury](?@ucdavis.edu)  -  RunGun Level + SubRole: (Cinematics, Powerups, Player/Enemy Gun Logic)

[SriLakshmi Panda](slpanda@ucdavis.edu)  -  Car Level (Physics) + Press Kit/Trailer

[Janani Asokumar](?@ucdavis.edu)  -  Car Level + Initial Cutscene


## Team Assets

All assets are detailed below:

[Space Background](https://dinvstudio.itch.io/dynamic-space-background-lite-free): by DinVStudio, license below
    <br>- Personal and commercial purposes, but you not allowed to re-distribute or re-sell the asset or any part of it

[Spaceship](https://foozlecc.itch.io/void-main-ship): by Foozle licensed under Creative Commons Zero, CC0

[Asteroids](https://opengameart.org/content/2d-asteroid-sprite): by nightzero licensed under Creative Commons Attribution 3.0

[Explosion](https://opengameart.org/content/explosion-tilesets): by elnineo licensed under Creative Commons Attribution 1.0

[Explosion Sound Effect](https://pixabay.com/sound-effects/explosion-sound-effect-1-free-on-gamesfxpackscom-241821/): by BLANK licensed under Pixabay Content License

[UFOs](https://opengameart.org/content/ufo-spritesheet): by badmug licensed under Creative Commons Attribution 4.0

[Arrow Shoot Sound Effect](https://pixabay.com/sound-effects/shoot-1-81135/): by Leszek_Szary licensed under Pixabay Content License

[Background Music](https://pixabay.com/sound-effects/space-72679/): by AstronautChild licensed under Pixabay Content License

[Glowing Ball Powerup](https://lvgames.itch.io/free-glowing-ball-sprite-pixel-fx-rpg-maker-ready): by LVGames licensed under Free for commercial use

[Powerup Sound Effect](https://pixabay.com/sound-effects/power-up-type-1-230548/): by RibhavAgrawal licensed under Pixabay Content License

[Laser Blast Sound Effect](https://pixabay.com/sound-effects/laser-gun-81720/): by sunnyflower licensed under Pixabay Content License

[Lock Unlocking Sound](https://pixabay.com/sound-effects/item-pick-up-38258/): by Mr.\_Fritz\_ licensed under Pixabay Content License

[Prison](https://jestan.itch.io/prison): by Jestan, license below 
    <br>- You may not distribute the contents of this .zip file in  whole or in part, unless as part of a game or similar product.
    <br>- If you use this material in a game or other product, please give  attribution to Jestan in the credits.
    <br>- You are free to use this in any commercial / non-commercial product(s).

[Locks](https://dantepixels.itch.io/key-items-16x16): by DantePixels, license below 
    <br>- You can :
        <br>&nbsp; &nbsp;- Use the assets for non-commercial AND commercial project.
        <br>&nbsp; &nbsp;- Adapt and/or modify the assets to match your project.
        <br>&nbsp; &nbsp;- Credit me with my Twitter: @pixelahead
    <br>- You can NOT:
        <br>&nbsp; &nbsp;- Distribute or sell those assets directly (even modified).
        <br>&nbsp; &nbsp;- Claim the asset yours.

[Prison Background Music](https://pixabay.com/sound-effects/a-dungeon-ambience-loop-79423/): by Grubzyy licensed under Pixabay Content License


## Platformer Level

### **Student Information**  
**Name**: Abhimanyu Warrier  
**Email**: avwarrier@ucdavis.edu  
**Github**: [avwarrier](https://github.com/avwarrier)  

---

The Platformer is a level based on games like _I wanna be the guy_ and _Super Meatboy_. Because we split our roles into levels rather than overarching systems, we all got to do a little bit of everything, which is what I will go into detail about below. Overall, the game consists of 2 main levels with the second more difficult than the first. Below I will explain all the systems necessary to making the game.

### Player Movement/Physics

Player movement was pretty simple and required only 4 main controls which were move_left, move_right, crouch, and jump. The main goal of the game is based on accurately timed jumps to get over/under obstacles and reach difficult, moving platforms. There are level boundaries set up along the edges of each level to ensure that if a player hits those, they lose a a life and respawn at the level default.

- In terms of the player camera, I gave level 1 a static camera that displays the entire level because of the fact that it is built in a zig-zag motion and players would want to reach from the bottom left to the top right.

![ScreenRecording2024-12-10at11 17 55AM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/d39a3627-d6b8-47aa-9702-b8354827252e)

- Level 2 has a slightly more complex camera where there is a [push-box implementation](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/8f287235bf6d66aab84fe6dfa2245ddb308faa30/shattered-dimensions/scripts/platformer/level2/camera2.gd#L1) similar to exercise 2. I made it so the player can push on the right-side around halfway into the screen but on the left, there would be some space before the camera moves back left. This was to ensure certain areas like the downward descent in Level 2 were fully visible on the screen without any camera movement necessary since many of the obstacles were not easily seen without this system.

![ScreenRecording2024-12-10at11 21 45AM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/362881a2-710a-482a-beaf-637d20dcba1e)

_Checkpoints_

- There is also a checkpoint system in Level 2 that gives players a chance to respawn at the last checkpoint without having to return to the beginning. 
- I created a scene for these checkpoints and used an [export variable in the script](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/8f287235bf6d66aab84fe6dfa2245ddb308faa30/shattered-dimensions/scripts/platformer/level2/checkpoint.gd#L3) that would allow me to mark different checkpoint numbers.
- The player script would keep track of the [current checkpoint](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/8f287235bf6d66aab84fe6dfa2245ddb308faa30/shattered-dimensions/scripts/player/player.gd#L15) each time it was activated and I created an array in the script that had [coordinates pertaining to each checkpoint](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/8f287235bf6d66aab84fe6dfa2245ddb308faa30/shattered-dimensions/scripts/player/player.gd#L16) to be used in the respawn function.

_Next World Door_

- The next world door is a small laser-looking node that detects player entry and shifts the player to the next level after [playing the fading animation](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/8f287235bf6d66aab84fe6dfa2245ddb308faa30/shattered-dimensions/scripts/platformer/next_world_door.gd#L13) between the levels.
- When the next level is instantiated, the door will [play the animation in reverse](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/8f287235bf6d66aab84fe6dfa2245ddb308faa30/shattered-dimensions/scripts/platformer/next_world_door.gd#L16) to create a fade-in effect as well.
- The player node contains information about [which level](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/8f287235bf6d66aab84fe6dfa2245ddb308faa30/shattered-dimensions/scripts/player/player.gd#L12) the player is on in the script and the next world door uses this to check which scene it should call.


### Enemies/Obstacles

There are many obstacles with various use-cases all around the levels. I made a universal [KillZone class](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/8f287235bf6d66aab84fe6dfa2245ddb308faa30/shattered-dimensions/scripts/platformer/killzone.gd#L3) that already implemented the death response when a player enters the obstacle and so I was able to use that for every enemy. This ensured that there was no need for an additional script on each obstacle, rather they all called KillZone.

_Basic Spike, Saw Blade, Spike Ball_

- The basic spike is a core obstacle that is scattered throughout the floor pieces of both levels. I used the spikes in many sizes using the scale attribute and used a collision polygon to get the hitbox exactly in a triangular shape.
- The saw blade and spike ball are similarly present in both levels. I added a script that would [constantly rotate the saw blade](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/8f287235bf6d66aab84fe6dfa2245ddb308faa30/shattered-dimensions/scripts/platformer/traps/saw.gd#L5) at a certain pace using (rotation += constant * delta) so that it would replicate a real saw blade motion. Here I only needed to use a collision shape, namely a circle since the rotation would anyway prevent there ever from being a slip through a small point in the blade.
- For the spike ball, I had a [similar script](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/8f287235bf6d66aab84fe6dfa2245ddb308faa30/shattered-dimensions/scripts/platformer/traps/spike_ball.gd#L4) but with a much slower rotation, necessating a very accurate collision polygon.

![ScreenRecording2024-12-10at11 42 19AM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/b2680a81-9f5b-4f09-b555-dc6c3d01b9cb)


_SpikeBlock/Factory_

- I made this obstacle specifically for level 2 as a moving block with 2 spikes attached on the left and right. It was animated to move left and right on a given surface.
- The raising spike factory used the [Factory Pattern](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/12c81d35dd38c35933e762211abd42acec03bbf2/shattered-dimensions/scripts/platformer/traps/raising_spike_factory.gd#L12) concept to create a class that constantly spawns [spike blocks](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/12c81d35dd38c35933e762211abd42acec03bbf2/shattered-dimensions/scripts/platformer/traps/raising_spike.gd#L11) in an upward or downward direction. I also added an export variable to determine speed so I could create different spike blocks at different speeds.

![ScreenRecording2024-12-10at11 27 54AM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/c695c2cf-a256-4f17-a53b-a1d0dd48d1b3)


_Descent Zone (2 new enemies)_

- For the descent zone in level 2, I added 2 special enemies, specifically a Thwomp and a pea shooter. The Thwomp was inspired by the Mario world and worked in a similar fashion where it was animated to come down, wait a little bit, and slownly come up, before waiting and repeating.
- The pea shooter was located in a space in the wall and made to shoot a [rotating green ball](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/12c81d35dd38c35933e762211abd42acec03bbf2/shattered-dimensions/scripts/platformer/traps/pea.gd#L3) at a regular interval. I used an animation to achieve this where the ball would shoot to the other side, wait, and then repeat the animation. This made it so that players would need to crouch to avoid the pea.

![ScreenRecording2024-12-10at11 27 07AM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/a0227051-e4c5-4b9f-bdd6-b97d0b45a133)


_Arrow Trap/Crusher_

- The arrow trap is a hanging trap that shoots a group of "arrows" down to the ground at a set interval. This works similar to many of the other animated enemies as it shoots down, waits, and repeats the process. All arrows are equipped with spikes on the end to make it easier to develop.

![ScreenRecording2024-12-10at11 31 10AM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/a79d6b80-aba9-4e4f-a931-e9513ee7b164)

- The crusher is similar to the arrow trap except it slowly comes down and goes back up. I created it after being inspired again by many platforming games where the player would need to find a divot in the ground to not get crushed. I added blue jump orbs in each divot so the player could get up and reach the next one in time without being crushed.

![ScreenRecording2024-12-10at11 31 42AM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/79199255-4467-4a82-91ea-f0dc3ce80cb3)

### Special Items/Platforms

I also added special mechanics and platforms to make the game more challenging/interesting.

_Moving Platform_
- The moving platform is simple and just moves up and down or side to side based on a preset animation.
- I made a couple different varieties of the platform with different looks based on level.

![ScreenRecording2024-12-10at12 05 32PM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/f70ca0a9-938e-4d2d-bd27-ab2fc9db823e)


_Blue orb Bouncer (Double Jump)_
- The blue orb allows players to press the jump input again for a double jump.
- I used a sprite with an area_body_2d and collision shape to achieve this.
- The jump is tracked in using the [bouncer script](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/12c81d35dd38c35933e762211abd42acec03bbf2/shattered-dimensions/scripts/platformer/supports/bouncer.gd#L7) which has signals for body entered and exited.
- These signals change the result of the variable player.double_jump which then allows the [jump checking conditional](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/12c81d35dd38c35933e762211abd42acec03bbf2/shattered-dimensions/scripts/player/player.gd#L140) to evaluate to true and allow for a second jump.

![ScreenRecording2024-12-10at12 06 32PM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/bf84e1d5-e80c-498f-ba61-d5328c46cc99)


_Orange/Green orb (ascend/descend)_
- The orange orb allows the player's current platform to start ascending until a given point.
- This was achieved through an animation called by the [mover_platform script](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/12c81d35dd38c35933e762211abd42acec03bbf2/shattered-dimensions/scripts/platformer/supports/mover_platform.gd#L1) based on the signals set to either entering or exiting the orb.
- The green orb allows players to have their platform descend, so very similar to ascend.
- It makes use of the same type of animation just switching the play-backwards and forwards.

![ScreenRecording2024-12-10at12 07 27PM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/e123d699-0dd6-4376-a0b1-e1e70efc0a23)


_Trampoline_
- The trampoline is an animated sprite that allows players to have a much higher jump when springing off this component.
- To check if the player was on the trampoline, I added an area2d just above it to make sure the player was touching the "ground".
- I added a script with the [area-entered signal](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/12c81d35dd38c35933e762211abd42acec03bbf2/shattered-dimensions/scripts/platformer/traps/trampoline.gd#L5) that changed the "on_trampoline" variable in the player to allow for the changed jumping mechanic.
- I then added a [conditional in the player script](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/12c81d35dd38c35933e762211abd42acec03bbf2/shattered-dimensions/scripts/player/player.gd#L141) to check whether or not the player was on the trampoline and if so, change the jump velocity to be much more negative to achieve a much higher jump.

![ScreenRecording2024-12-10at11 29 22AM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/92477476-e419-4c35-813f-dc5649fe7cda)


### Animations

- Animations were used very commonly throughout the level. I used animations for a majority of the enemies in terms of their path and how they would either bounce or reset.
- Used a fade to black animation whenever moving through levels as well as for the victory and game over screens.
- Player was developed using an animated sprite.


### Audio

I used AudioStreamPlayers in all the relevant levels for playing audio

- Overall, I used an  8-bit theme with different songs for each level and screen.
- For the victory screen I used a very upbeat song to have a victorious effect.
- Importing the audios with looping enabled was necessary to get the audio to loop properly.


### Related Class Content

*Command Pattern* - The platformer relies on the player node which is completely built around the idea of the command pattern that we learned in class and got to implement in exercise 1. The player uses move, jump, crouch, idle, shoot, and more commands that are called in the _process logic and are essential for completing the level.

*Pushbox Camera in Lvl 2* - The camera in level 2 implements the idea of the push box that we learned about and used in some parts of exercise 2. When the player moves right, the camera moves along with him, but when moving left it does not move until a certain boundary has been touched at which point it moves at the same speed as the player. This is built upon the ideas learned in class as well when going over the many camera processes and variations.

*Path Planning* - The movement and planning process for the enemies in the platformer were based on what we learned in class about Game AI and understanding how, when, and where the enemy would go and what actions it would take. Though the platformer only had very simple enemies, it was still necessary for some of the special enemy types such as the pea shooter, thwomp, and circling rocks to have a planned path and correct execution. Using the class concepts was necessary to achieve that.

*Factory Pattern* - The Raising Spike Factory is based on the factory pattern we learned in exercise 3. I used a very similar process with a spawn function that instantiated the packed scene which stored the raising spike block and waited a set amount of time before instantiating the next one so it would constantly spawn at a fixed rate. This was similar to the time schedule we needed to implement for the testing part of the final stage in exercise 3.

## Run and Gun Level  

### **Student Information**  
**Name**: Anunay Akhaury  
**Email**: aakhaury@ucdavis.edu  
**Github**: [AnunayAkhaury](https://github.com/AnunayAkhaury)  

---

## **Level Overview**  

The **Run and Gun Level** in *Shattered Dimensions* combines fast-paced platforming and combat mechanics. The level is split into two distinct stages: a **skyline stage** and a **boss stage** set in a futuristic city. Players must navigate platforms, defeat enemies, and survive challenges to complete the level.  

### **Stage 1: Skyline**  
The player starts high above a futuristic city, jumping across rooftops and floating platforms while engaging enemies. Enemies fire projectiles, requiring careful movement and shooting. Power-ups like **health refills** and **weapon upgrades** are scattered throughout the stage to assist progression.  

### **Stage 2: City and Boss Battle**  
After completing the skyline, the player descends into the city for the final **boss fight**. This stage introduces two new enemy types and additional challenges.  
The level culminates in a **boss fight** against a mechanic with multiple attack phases. The player must dodge lasers, avoid drones, and time their shots to defeat the boss.  

---

## **Player/Gun Movement/Physics**  

The **Run and Gun Level** introduces shooting mechanics alongside core platforming controls, allowing the player to shoot while running, jumping, or standing still. This functionality enhances movement dynamics and integrates combat seamlessly.  

### **Player Movement**  
The player retains the standard platforming controls with an incresed jump height.
Shooting is integrated seamlessly with movement, and the player can shoot:  

- **Airborne**: Shoot mid-air without compromising control.  
- **Running**: Shoot while moving for fluid combat.  
- **Idle**: Shoot while standing still for precise aiming.  

These mechanics are implemented using the **command pattern**, ensuring modularity and clean integration with the existing movement system.  

### **Shooting Mechanics**  
Shooting is executed from a **muzzle point** attached to the player sprite. Bullets have their own logic, including:  

- **Cooldown Timer**:  
   The Timer node checks the firing rate and prevents the player from shooting until the cooldown period expires. This balances combat and prevents overuse of the shooting mechanic.
- **Speed and Damage**: Configurable through exported variables for flexibility.  
- **Bullet Lifespan**:  
   - **Collision with Enemies**: Triggers damage logic.  
   - **Collision with Tilemap**: Simulates environmental interaction.  
   - **Timeout**: Bullets expire after **5 seconds** to optimize performance.  
- **Death Effects**: A visual effect plays when bullets collide or expire, enhancing feedback and polish.  

### **Physics Adjustments**  
The primary physics changes involve integrating shooting with the existing movement system:  

1. A **muzzle point** spawns bullets aligned with the player’s facing direction.  
2. Bullet trajectory and velocity adapt dynamically to the player’s position.  
3. Shooting functionality integrates smoothly without disrupting movement physics.  

These enhancements ensure fluid, responsive controls where platforming and combat work together seamlessly.  

---

### Enemies/Obstacles

All enemies in the **Run and Gun Level** derive from a **base `Character` class**, which is extended by a **base enemy class**. This allows for shared behaviors across enemies while enabling specific features for each type.  

#### General Enemy Features

- **Collision Layers**:  
  Enemies are assigned their own collision layer to prevent them from interacting with each other, ensuring only player-enemy interactions result in damage.

- **Damage Through Collision**:  
   Enemies can deal damage to the player through **physical collision**. This is handled using an `Area2D` trigger on both the player and enemy, which communicates with the **HealthManager** script to reduce health accordingly.

- **Patrol Behavior**:  
  Enemies can patrol between two designated points using `Marker2D` nodes. This behavior is implemented through the **Command Pattern**, making it reusable for all enemies.  

- **Hit Flash Effect**:  
  A red flash effect is displayed on the enemy sprite when they take damage, providing clear visual feedback.

- **Death Effect**:  
  Enemies have a unique death effect, such as explosions or particle effects, which play when their health reaches zero.

- **Sound Effects**:  
  Enemies play specific sound effects when performing actions, such as shooting, getting hit, or dying, adding to the game’s polish.

---

#### Individual Enemy Types

1. **MechBot**  
   - **Description**: The most basic enemy type that patrols between two points.  
   - **Behavior**: Acts as a moving obstacle.  

2. **Soldier**  
   - **Description**: A ground enemy capable of patrolling or shooting.  
   - **Behavior**:  
     - Patrols its designated area when not attacking.  
     - Periodically fires bullets at the player using the same bullet logic as the player.  
   - **Special Features**: Unique bullet animations and impact effects.  

3. **Scout**  
   - **Description**: A flying enemy that actively follows the player.  
   - **Behavior**:  
     - Tracks the player within a defined range and fires projectiles at intervals.  
     - Stops following if the player exits its "leash range."  
   - **Special Features**: Shooting animations and a custom projectile system.  

4. **Sentinel**  
   - **Description**: A ground-based enemy with patrol behavior and an **Area of Effect (AoE)** attack.  
   - **Behavior**:  
     - Patrols a region while maintaining a larger hitbox for its AoE attacks.  
     - Deals damage to the player if they enter its attack range.

---

#### Key Features

- **Patrol Logic**:  
  All enemies can utilize patrol behavior to move between two points autonomously, using the **Command Pattern** for modular control.

- **Shooting Mechanics**:  
  Enemies like the **Soldier** and **Scout** fire bullets at intervals. The bullet logic is modular and includes:  
  - Speed, lifespan, and collision interactions.  
  - Impact animations and sound effects for visual feedback.

- **Hit Flash and Death Effects**:  
  A red flash effect plays when enemies take damage. Upon death, each enemy triggers a unique effect such as an explosion or disintegration animation.

- **Sound Effects**:  
  Each enemy includes custom sound effects for key actions like shooting, being hit, and dying. This enhances immersion and game polish.

---

### Boss Fight: The MechBoss Encounter

The **Boss Fight** in the Run and Gun Level introduces a challenging, multi-phase enemy encounter that tests the player's combat and movement skills. The boss has unique attack patterns, a rage mode, and summons additional enemies during the fight.

---

#### Boss Encounter Initialization

- The boss fight begins when the player **enters the boss arena**, triggering a brief **cutscene** to introduce the boss.  
- Once the cutscene ends, the boss becomes active and starts its attack cycle.  

---

#### Boss Behavior (Command Pattern)

The boss’s behavior is implemented using the **Command Pattern**, allowing for modular and reusable actions. Each action—tracking, attacking, summoning, or transitioning phases—is encapsulated as a command.

1. **Player Tracking**  
   - The boss follows the player across the arena, mimicking their jumps and movements.  
   - Implemented as a **MoveCommand** that tracks the player’s position.

2. **Projectile Attack**  
   - At set intervals, the boss performs a **projectile attack**, firing bullets periodically.  
   - **Invulnerability**: During this attack, the boss cannot take damage.  
   - Managed using a **ShootCommand**, with bullet logic handled separately.

3. **Melee Combo Attack**  
   - If the boss gets close to the player, it triggers a **melee combo attack** with a large hitbox.  
   - **Invulnerability**: The boss cannot be damaged during the melee combo.  
   - Managed with a **MeleeAttackCommand**.

4. **Enemy Summons**  
   - The boss periodically summons **Sentinels** and **Scouts** to assist in combat.  
   - Summons are executed using a **SummonCommand** to spawn enemies dynamically.

---

#### Rage Mode (33% Health Threshold)

- When the boss's health drops to **33%**, it enters **Rage Mode**:  
  - **Increased Speed**: The boss moves and follows the player at **double speed**.  
  - **Faster Projectile Attacks**: The frequency of projectile attacks increases significantly.  
- The **Super Power-Up Shot** spawns during this phase, allowing the player to deal more damage.

---

#### Health and Power-Ups

- Health power-ups spawn automatically at **100%, 75%, 50%, and 25%** boss health.  
- Power-ups allow the player to recover health and maintain combat readiness during the fight.

---

#### Boss Sound Effects and Animations

- The boss features custom **sound effects** for:  
  - Attack actions (projectile and melee).  
  - Entering rage mode.  
  - Taking damage.  
  - Dying.

- **Death Animation**: Upon defeat, the boss plays a unique death animation, and the **Golden Key** spawns for the player to collect.

---

#### Summary of Phases

| Phase               | Behavior                             | Command Implementation       | Notes                                      |
|---------------------|--------------------------------------|------------------------------|-------------------------------------------|
| **Initial Phase**   | Player tracking, projectile attack   | MoveCommand, ShootCommand    | Invulnerable during projectile attacks.    |
| **Melee Phase**     | Melee combo attack at close range    | MeleeAttackCommand           | Large hitbox; invulnerable during combo.   |
| **Summon Phase**    | Summons Sentinels and Scouts         | SummonCommand                | Enemies assist the boss.                  |
| **Rage Mode**       | Triggered at 33% health              | MoveCommand, ShootCommand    | Double speed, faster projectile attacks.   |

---

### Command Pattern Usage

The **Command Pattern** is used throughout the boss implementation to modularize its behavior:  
- **MoveCommand**: Handles player tracking.  
- **ShootCommand**: Manages periodic projectile firing.  
- **MeleeAttackCommand**: Triggers the melee combo attack.  
- **SummonCommand**: Spawns additional enemies during combat.  

Using the **Command Pattern** ensures the boss logic is clean, modular, and reusable. Each behavior can be easily modified or extended without impacting the rest of the boss fight system.

---

This multi-phase boss fight challenges the player to manage movement, dodging, and combat strategies. Successfully defeating the boss rewards the player with the **Golden Key** and progression to the next challenge.

### Power-Ups

The **Power-Ups** in the Run and Gun Level enhance player abilities and are implemented using **Area2D signals** and unique **collision layers** to detect pickups. Each power-up provides a specific boost to the player, improving combat effectiveness or survivability.

---

#### Health Power-Up

- **Effect**: Increases the player’s health bar by one unit upon collection.  
- **Implementation**:  
   - The health power-up uses an **Area2D** node with a collision shape.  
   - Upon entering the area, the player’s health value is incremented.  
   - A **signal** is emitted to update the health bar UI, ensuring immediate visual feedback.  

---

#### Rapid Fire Power-Up

- **Effect**: Removes the shooting cooldown, allowing the player to shoot continuously without delay.  
- **Duration**: Lasts for a limited time before reverting to normal shooting mechanics.  
- **Implementation**:  
   - On pickup, the player’s shooting cooldown is temporarily set to zero.  
   - A **timer** node tracks the duration of the power-up.  
   - Once the timer expires, the cooldown value is restored to its default setting.

---

#### Spiral Shot Power-Up

- **Effect**: Changes the player’s bullet type to a larger, spiral-pattern projectile that:  
   - Travels faster.  
   - Deals increased damage.  
- **Duration**: Limited time before returning to the default bullet.  
- **Implementation**:  
   - The power-up temporarily replaces the player’s bullet instance with a spiral bullet.  
   - A **timer** node reverts the bullet type to default after the effect ends.  
   - The spiral bullet uses its own animation and collision logic to simulate the unique behavior.

---

### Health Management

The **Health Management System** ensures that both player and enemy health is consistently tracked and updated throughout the game.

---

#### Player Health System

- **Health Tracking**:  
   Player health is managed globally, ensuring updates are consistent across levels. A dynamic health bar UI reflects the current health status.

- **Damage Handling**:  
   When the player takes damage through an **Area2D hitbox trigger**, health is reduced, and the UI updates. To prevent instant death from rapid hits, the player experiences **knockback** and gains **0.5 seconds of invulnerability** after taking damage.

- **Death and Scene Reload**:  
   If the player’s health reaches zero, a death animation is triggered, and the current scene reloads to reset gameplay.

- **Health Cap**:  
   The player’s maximum health is capped at **5 hearts**.

---

#### Enemy Health System

- **Base Logic**:  
   All enemies derive their health systems from a **base enemy class**, which ensures consistent damage handling and health tracking.

- **Damage and Defeat**:  
   Enemies take damage through their **hitboxes** when hit by player bullets or attacks. Upon defeat, enemies play a **hit flash effect** and a **death animation** for visual feedback.

- **Invulnerability**:  
   Enemies do not gain invulnerability, making them susceptible to consecutive hits, unlike the player. But is managed through the player shot cooldown

---


## Spaceship Level

### Student Information
*Name: Satyasree Sanegepalli*   
*Email: ssanegepalli@ucdavis.edu*   
*Github: ssaneg*

Below I have described the main features and functionality of my level, along with their relation to class concepts, lectures, and exercises. 

**Autoscroll Camera Movement with Partial PushBox**

- The camera movement of the game is a combination of different features of the pushbox and controllers in Exercise 2. 

- The camera is set to perform a [constant horizontal autoscroll](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/225a96834739d2f906e4af3a0d7a5ef6a8226745/shattered-dimensions/scripts/spaceship/camera.gd#L14) and the player (spaceship) is [pushed by the left edge of the pushbox](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/camera.gd#L17). 

- The right edge is not restricted so the user must manually ensure they stay within the camera viewport at all times. 

- The player is free to move vertically until they reach the bounds of the background and the [camera follows the player when they move vertically](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/spaceship.gd#L80). 

*Add video of auto scroll*

**Arrow Instantiation System**

- The component system discussed in class is employed to create a self contained **fire scene**. This scene contains the [functionality for a set of arrows to be released from the holder and fired across the screen](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/fire.gd#L27). 

- Upon the press of the space bar, the spaceship [instantiates a new set of arrows](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/spaceship.gd#L111) that are loaded onto the spaceship and fired at the incoming UFOs. Each arrow is released at a different time in line with the release animation. 

- The most difficult part of this feature was to handle movement of the spaceship during the firing animation. I needed to ensure that I was [updating the position of the holder and arrows that were not yet fired](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/spaceship.gd#L125) if the spaceship moved. This meant that each arrow had to function individually, independent of the others.

- The logic of the spaceship sets a delay after every set of arrows is fired. This way, the spaceship can only fire one set of arrows at a time.

- My familiarity with the projectile instantiation system and recharge delay from Exercise 3 was extremely helpful for building out this feature.

![firearrows1](https://github.com/user-attachments/assets/393a76bb-4a8b-4681-9177-8117e01085b7)

![firing2](https://github.com/user-attachments/assets/9e6b6203-3fe8-4da3-9c0a-a2b652b45dc4)

**Spaceship Movement and Statistics** 

- The movement of the spaceship is directly tied to the up/W, down/S, and right/D keys.

- Pressing the SHIFT key triggers an animation and boosts the spaceship to the right.
  
![boost](https://github.com/user-attachments/assets/b472f615-cdcb-41db-a555-aabd6a9de86d)

- The **healthLevel variable** keeps track of the damage done to the spaceship based on collisions with different objects. 

- The statistics in the top right corner consist of a health bar that is constantly updated and a kill count to show how many spaceships the player still has to defeat to win the level.

<img width="200" alt="Player Stats" src="https://github.com/user-attachments/assets/6f11d71d-35d1-4063-8f9c-cc379487ead6" />

- The UFOs have their own health that is depleted by the arrows fired by the spaceship. The [kill count is updated](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/225a96834739d2f906e4af3a0d7a5ef6a8226745/shattered-dimensions/scripts/spaceship/enemy.gd#L19) upon defeat of a UFO.

- The spaceship is configured to bounce back after collision with an asteroid, creating a cooldown period during which user input is unbinded.
  
![IMG_4802](https://github.com/user-attachments/assets/6fbc0767-7182-420b-be6b-3a80d7239adc)

- My implementation of this feature involves skills I developed with collision objects, signals, and health management in my boss battle from Exercise 1.

**Enemy Onscreen Detection and Blast Firing System** 

- The laser blast system of the enemies also employs the command pattern as each blast is treated as a self contained object. There are numerous enemies placed throughout the map of my level. 

- I was able to set up an **automated blast firing system** that executes only during the time that an enemy is detected to be within the player's viewport. This system is set to fire with a specific delay between each blast, using concepts from the recharge delay of Stage 1 in Exercise 3. 

- I was able to accomplish **onscreen detection** by [comparing the camera position to the enemy position](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/enemy.gd#L35). 

- The UFOs also have [automated movement](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/enemy.gd#L23) to add to the difficulty of the level. 

![UFOs](https://github.com/user-attachments/assets/040ac0ab-90fa-4d5c-9ae6-5e2d3076bb0d)

**Losing & Level Menu**

- I created a scene with buttons where the user can choose to restart the level or return to the lobby.

- This scene pops up as an overlay in **two cases**:

    1. The player's health reaches 0 before they reach the end of the level.
    2. The player reaches the end of the level but they have not defeated at least 3 UFOs.

![overlaymenu](https://github.com/user-attachments/assets/85bc0673-d287-44fe-92aa-156e70110a4c)

**Winning & Key**

- The key scene is instantiated upon the player reaching the end of the level and defeating at least 3 UFOs.

- The key is equipped with a collision object that detects the spaceship and returns the player to the prison.

*Add picture of key*

**Design**

I was able to use the skills I developed with working on Exercise 1 to design my level.

- *Background*
    
    - I was able to make use of the **ParallaxBackground** node in Godot to create two layers for the background, the space and the stars. The stars move slightly faster than the space colors giving the level an immersive effect.

- *Sound*

    - I was able to implement sound for the following actions
        
        - asteroid explosion sound effect
        - arrow shooting sound effects
        - background music that continually loops
        - powerup pickup sound effect
        - laser blast sound effect
          
- *Animations*

    - **Rotating Asteroids**: I was able to manually create an animation for asteroid rotation by creating frames with incremental values for the rotation property of the sprite.
    - **Asteroid Explosion**: sourced from spritesheet
    - **Spaceship Shooting Arrows**: sourced from spritesheet
    - **Laser Blast**: sourced from spritesheet
    - **UFO Movement**: sourced from spritesheet
    - **Powerup**: sourced from spritesheet

## Car Level

### **Student Information**  
**Name**: Sri Lakshmi Panda  
**Email**: slpanda@ucdavis.edu  
**Github**: [srilakshmipanda](https://github.com/srilakshmipanda)  

---

The Car level is similar to games like hill-climb racing but also brings together many other different features, such as shooting and car chases. The general objective of the game is to reach the end of the game while killing enemies along the way and dodging all obstacles. The game includes specific sequences, such as a car chase and a small police encounter. In addition, there are spikes, cages, and general enemies along the way. The player needs to kill some amount of enemies in order to unlock the missile, which is required in order to escape some obstacles such as the cage.

### Car Movement/Physics

_Physics_

- The car physics was implemented using RigidBody2D nodes and a PinJoint node which would serve as the axle for the wheels of the car. This allows me to rotate the wheel along their center without having to add any sort of animation. 
- Initially, the car was really light and the car would flip on the hills due to high momentum and velocity. It took some trial and error to find a good level of gravity force, mass of the car, to ensure that the car is not lifted off the ground
- In order to ensure that the car cannot accerlate infinitely, I had to implement a max_speed for the car. I had to play around with this as well to find a good value that will allow the car to go through our terrain without difficulty

_User input_

- The car has basic right and left movements implemented which are controlled with user input (arrows or "A","D").
- The [move functions are implemented by controlling the wheel's angular velocity](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/1d74ff599a6d1ab6a16e34445755d3c52e471302/shattered-dimensions/scripts/car/vehicles/player_car.gd#L66-L73) which would automatically make the car move right and left according to the direction of the angular velocity (since it is bound by the pin joint)

_Generalized Car Implementation_

- The game includes the player's car as well as a SWAT van, thus I made a vehicle class to generalize the code needed for a vehicle
- The vehicle class [contains general properties](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/f3139c4b43e77c428a699bf81419676e22c3144e/shattered-dimensions/scripts/car/vehicles/vehicle.gd#L1-L12) needed for the car, such as the wheels which are bound to the car, max speed, and speed at which torque is applied
- The player car and swat van both extend the vehicle class thus the implementation for how they are moved are the same

_Collision & Detection Boxes_

- The car has a collision box under the Rigid2DNode which will apply general collision with the swat van, spikes, cage, and general terrain
- The car has an Area2D node which acts as a detection box. Using the [area_entered signal](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/f3139c4b43e77c428a699bf81419676e22c3144e/shattered-dimensions/scripts/car/detection_boxes/player_detection_box.gd#L8), we are able to recognize the following:
    - [Bullets](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/f3139c4b43e77c428a699bf81419676e22c3144e/shattered-dimensions/scripts/car/detection_boxes/player_detection_box.gd#L11) - upon which the player's health is decreased
    - [Boost ups](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/f3139c4b43e77c428a699bf81419676e22c3144e/shattered-dimensions/scripts/car/detection_boxes/player_detection_box.gd#L22-L30) - fuel, and health, and player's health or car speed is updated accordingly
    - [Traps / spikes](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/f3139c4b43e77c428a699bf81419676e22c3144e/shattered-dimensions/scripts/car/detection_boxes/player_detection_box.gd#L42-L52) - player dies
    - [Key](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/f3139c4b43e77c428a699bf81419676e22c3144e/shattered-dimensions/scripts/car/detection_boxes/player_detection_box.gd#L35-L40) - the player wins if the key is collected and the game returns to the lobby

_Camera_

- The [camera in this level](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/f3139c4b43e77c428a699bf81419676e22c3144e/shattered-dimensions/scripts/car/camera.gd#L14) is simple and consistently just follows the car at a certain offset.
- However, for the initial car chase, the camera is offset to the left of the car in order to ensure that the SWAT van and the car are both in the frame. 
- After the player beats the swat van in the car chase, the camera is programmed to slowly pan to the the right of the car. For the rest of the game, the camera is offset to the right of the player car such that the player car is on the left end of the frame and it allows them to see a larger portion of the coming terrain/path.


![car_physics](https://github.com/user-attachments/assets/83b8bc02-b3d6-43dc-8a21-729b448c85a4)


### Shooting

_Shooting Mechanics_ 

- Shooting implementation was done using factory pattern. Items that can be shot are classified as ammo, and there are two things that can be shooted, a bullet and missile, both which extend the ammo class. 
    - The bullet is implemented so that any character in the game is able to shoot using its implementation by specifiying needed parameters. 
    - The missile, theoretically can be used by any character, but only the car player has the ability to shoot the missile in our game
- Each character that has the ability to shoot calls its [shoot function](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/7fcffe53c371a297c7e065398e32587d0a8674d3/shattered-dimensions/scripts/car/vehicles/player_car.gd#L108-L117) which instantiates the bullet and adds it to the scene tree based on the specified parameters
- Player shooting - user inputs
    - The player is able to control shooting with the user inputs "P" or a mouse click. 
    - The aim guide is drawn wherever the cursor is on the screen to help the users visualize where the bullet will travel to
    - The player has limited missiles which they earn, and they can choose when to shoot them by using "Shift" to toggle the enabling/disabling of the missile. The information of whether the missile is enabled or not is displayed on the top left corner of the screen. The actual shooting of the missile works the same as specified above
- Enemies shooting
    - The enemies are designed to constantly shoot with a specified time interval
    - The damage value of the bullets originating from enemies are smaller than the damage value of the bullets originating from the player in order to ensure that the game is beatable

_Ammo Implementation_

- The [ammo class](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/f3139c4b43e77c428a699bf81419676e22c3144e/shattered-dimensions/scripts/car/shooting/ammo.gd#L4-L9)
    - Consists of a damage value, the start position, the target position, speed, and the origin of the bullet (aka which character of the game is initiating the shooting of this bullet) all of which can be specified according to requirmentes
    - Using the target pos and starting pos, the _direction in which the ammo should travel is calculated, and the ammo is shot at the specified speed in that direction
- Bullet and missile lifespan is either until it hits a character, or until it exits the screen upon which it is freed from the scene tree
- [Bullet class](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/f3139c4b43e77c428a699bf81419676e22c3144e/shattered-dimensions/scripts/car/shooting/bullet.gd#L1-L12)
    - Animation and sprite is a small red/orange/yellow bullet with movement animation
                
    ![gbullet](https://github.com/user-attachments/assets/79cae636-7462-40f3-997e-f39493bdc3f0)


- [Missile class](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/7fcffe53c371a297c7e065398e32587d0a8674d3/shattered-dimensions/scripts/car/shooting/missile.gd#L1)
    - Bullet origin is set to car_player upon instantiation
    - Damage value of the bullet is set to 100, so it kills an enemy in one shot
    - Animation and sprite is a large fireball
    - A missile is not a default and needs to be earned. For every 4 enemies which the player kills, they earn 1 missile. The missile is powerful and will defeat anyone/anything with one hit. The missiles should be saved to blow up obstacles otherwise the level will not be winnable

    ![gmissile](https://github.com/user-attachments/assets/8bfba664-b052-47bb-bad3-56bc007d3a21)


### Enemies / Obstacles

In general, there are two sequences of special enemies in the beginning, the SWAT van and the police, then throughout the course there are regular enemies on platforms that are shooting at you. There are also various obstacles along the way such as spikes and cages that make the course more difficult. We keep track of a kill count which is displayed on the top left corner. In general, I implemented everything except the police and the regular enemies on the platforms, and my partner implemented the two listed.

_SWAT Van_

- The game starts off with a car chase to setup the scene of the level of the player trying to escape, and the player needs to kill the van before a certain checkpoint in order to defeat it
- The swat van is [slightly faster than the car](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/7fcffe53c371a297c7e065398e32587d0a8674d3/shattered-dimensions/scripts/car/vehicles/swat_van.gd#L48-L49) to make it more difficult and to ensure that the car needs to kill the van before it catches up to the van
- The van has a simple health bar above it to assist the player
- If the swat van catches up to the car (aka crashes into the creator) and the player gets caught, a small cutscene is triggered showing the player getting arrested
- The crash / catch up is [detected using Area2D nodes](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/7fcffe53c371a297c7e065398e32587d0a8674d3/shattered-dimensions/scripts/car/detection_boxes/crash_box.gd#L6-L15) using the area_entered signal
  
![gswat](https://github.com/user-attachments/assets/8f642b9e-615b-4133-948a-5e591bb99a5e)

_Spikes_

- Throughout the course, there are spike traps the slowly move up and down and then dissappear into the floor/ceiling. There is a small time interval given where the spikes go down and it is safe for the car to drive through
- If the car drives over the spikes / touches the spikes, the player loses a life and respawns
- To achieve precision, I used a collision polygon 2d to get the exact shape of the spikes were
- The slow movement and scattered animation of one moving after another was achieved by giving 2 spikes a faster animation and 2 spikes slower. 
  
![gspike](https://github.com/user-attachments/assets/aa57f45f-eb74-4f73-b2e1-af5de98cefd9)

_Cages_

- The cages are implemented using a simple sprite and collision shape, and they prevent the car from going forwards
- The cages can be removed only by blowing it up using a missile, which requires a minimum kill
- The cage has an area2d node which detects a missile entering. Upon getting [hit by a missile, an explosion animation is played and the cage is removed](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/7fcffe53c371a297c7e065398e32587d0a8674d3/shattered-dimensions/scripts/car/game_elements/cage.gd#L13-L37)

![gcage](https://github.com/user-attachments/assets/d2fd44eb-3d6f-4969-98d4-8f6041077173)

### Other (Boost ups, health bar, lives, extra scene, Collecting Key)

_Boost Ups_

- There are [two boost ups](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/7fcffe53c371a297c7e065398e32587d0a8674d3/shattered-dimensions/scripts/car/detection_boxes/player_detection_box.gd#L22-L31) in the game, health and fuel
- A health power up, which increases the health bar by 25
- A fuel power up, which speeds up the car for some fixed amount of time regardless of whether the car is going faster than the max_speed or not
  
![gboost](https://github.com/user-attachments/assets/0e792f2a-925c-41fb-b3be-c571bd778ee0)

_Health Bar & Lives_

- The health of the player is displayed using a progress bar (a percentage is also shown) on the top right corner. This indicates the amount of health they have left before they lose another life.
- When the health decreases to 0, the player loses a life and the player respawns from the beginning of the game. There are no checkpoints in this level as that would make it super easy to beat the game.
- The player has a total of 5 lives before they lose the game, and the number of lives the player has is displayed on the top right corner of the screen using heart icons. [Upon losing a life, a life icon disappears](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/7fcffe53c371a297c7e065398e32587d0a8674d3/shattered-dimensions/scripts/car/game_elements/lives_visibility.gd#L13-L15).
  
![ghealth](https://github.com/user-attachments/assets/900573a0-95c0-4361-87a6-bdcd36ea0681)

_Collecting Key_

- If the player reaches the end of the game where the key is, there is a [checkpoint](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/7fcffe53c371a297c7e065398e32587d0a8674d3/shattered-dimensions/scripts/car/detection_boxes/player_detection_box.gd#L32-L40) at which the user's input and car's movement is disabled. The key is inside a cage, and the player needs to blow up the cage using a missile if they have one, upon which the user's input and car movement is enabled again and they can collect the key
- If the player reaches the end and [they do not have the missile](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/7fcffe53c371a297c7e065398e32587d0a8674d3/shattered-dimensions/scripts/car/game_elements/cage.gd#L29-L38), they are informed that they don't have the weapons needed to win the game and the game restarts and they need to try to reach the end while earning enough missiles.

![gkey](https://github.com/user-attachments/assets/a7c2ac8d-6c2d-4aba-b51a-74f6706e026f)

_Extra Scenes_

- Cutscene upon getting caught by the SWAT van includes [loading a different scene](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/7fcffe53c371a297c7e065398e32587d0a8674d3/shattered-dimensions/scripts/car/other_screens/player_arrest.gd#L8-L13) with a bar cell falling on the player, and displaying text letting the player know that they were caught
- If the player loses all 5 lives, a game_over scene is loaded with a simple skull animation, and the player can choose to either return to the lobby or restart the game

![garrest](https://github.com/user-attachments/assets/d4a08a3d-b28f-43bb-beec-6584c09140f1)

### Animations

Animations were integral to our level as they were used for multiple elements in the game.

- The bullet and missile are both animated sprites
- The obstacles were developed using animations, such as the spikes animation of moving up and down, and the explosion animation after the cage is hit
- The bar cell falling over the player in the cutscene of getting caught by the police was made using an animation 

### Class related content

_[Detection Boxes](https://github.com/AnunayAkhaury/ShatteredDimensions/tree/car-level/shattered-dimensions/scripts/car/detection_boxes) (Hit/Hurt)_ - Similar to the hit/hurt boxes of the characters from exercise 1, there are many places where we had to implement hurt boxes in order to detect the bullets hitting the player or enemy. In addition, the same technique was used to detect when the cars crashed into each other, if the missile hit the health, and if the key was successfully collected.

_Camera_ - Our level implements a camera and the information from exercise 2 was very applicable to doing so. Our camera is pretty simple where it follows the player car based on a certain offset, and stage 1 of exercise 2 came in handy to do this as the only difference was the offset. 

_Factory Pattern_ - The ammo (bullets & missiles) are implemented using the factory pattern method we learnt from exercise 3. The process was very similar in that I created a generalized class that has parameters to allow us to customize it, and a shooting function which instantiates scene with the ammo upon the user's "shoot" input (mouse click / "P").

_Timers_ - We learnt about how to use timers in our exercise 3 when we had our test and the projectiles had to shoot one after another. This came into play while I was implemented the [start delay](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/7fcffe53c371a297c7e065398e32587d0a8674d3/shattered-dimensions/scripts/car/vehicles/vehicle.gd#L19-L23) and respawn delay in the game.

_Physics Bodies_ - We learnt about how the physics bodies work along the way of exercise 1 while building our cutscene. This helped me build the car physics and work with the properties of RigidBody2D nodes in order to achieve what I wanted for the car. In addition, using different collision layers was something that was picked up from exercise 1 as well. 


## Car Level

### **Student Information**
**Name**: Janani Asokumar
**Email**: jasokumar@ucdavis.edu
**Github**: [janania](https://github.com/janania) 
   
### Brief
- **Objective**: Escape the police van, battle enemies, and unlock the key to proceed.
- **Key Gameplay Elements**:
    - **Escape Sequence**: Shoot the SWAT van until it loses all health.
    - **Trap & Battle**: Car tires get punctured; player must fight a police officer to retrieve spare tires.
    - **Enemy Combat**: Face hostile animals shooting at the car; kill 4 enemies to unlock a missile.
    - **Missile Use**: Break down game obstacles and unlock the key.
    - **Boosts & Hazards**: Fuel for increased speed, health boosts, and timed traps to avoid.
- **Role Breakdown**:
    - **Partner**: Car-level physics.
    - **Self**: UI design and level setup.
        
### Parallax Background Development
- I had planned the design of the level to be in the jungle, which would explain a rocky terrain along with enemies that are animals. Additionally, there is another design element of the tile design at the start of the game, noting "Cell Block." I had created the initial template of the design, and my partner added more onto the design to create a complete look. Thus, with the chase beginning at the start of the prison-like structure, there is a good flow of narrative as to how the SWAT van is chasing the player. I had initially tried to copy-paste the background image numerous times to cover the course of the entire game. However, remember that parallax backgrounds serve that exact purpose. The background is made up of different layers of trees, all moving at different speeds (the closest layer moves faster than the others), which creates a more realistic look and travels through the terrain. For the parallax background, I utilized the parallax layer node in Godot 4.
![parallax](https://github.com/user-attachments/assets/b2b11c56-cd66-47a4-9773-c503beaf5401)

### Terrain Development
- In order to provide a more interactive experience and mimic a real jungle/forest environment, I developed a curved terrain. This terrain is essentially a node consisting of Polygon2D, Path2D, Line2D, and CollisionPolygon2D. The steps to creating the terrain involved using the draw feature in Path2D to create a rough draft and then smoothing it out (creating the curve). Next, I had to provide the correct sprite to mimic the rough terrain with grass on top. The Polygon2D and Line2D nodes were useful for this, as I added the correct images to their textures. The CollisionPolygon2D took care of the interaction between the car and the terrain. These four components were tied together by a script. In this script, I was able to get the points from the Path2D and assign them to the polygon shapes of their respective nodes, ensuring that all elements maintained the shape of the original Path2D drawing.

- The other method that I tried to experiment with was using Smart Shapes 2D, which was a plugin from a few years ago. However, the above-listed method worked the best despite all of the glitchy/unexplainable behavior. In the 2D view of the car level, elements that should be placed directly on top of the terrain need to be placed a location lower than they are intended to be in order for them to correctly reflect when the scene runs. The current design of the terrain for the whole game initially wanted different terrain shapes being placed together to avoid repetitive behavior. However, upon building new terrains, I saw an increase in the number of glitches. Therefore, with respect to the time constraints, we decided that the repetitive nature of the pattern does not detract from the visual aspect of the game.
![terrain](https://github.com/user-attachments/assets/a5a03ac9-ebab-4672-81ce-6b248d70b846)

<img width="952" alt="terrain_2dview" src="https://github.com/user-attachments/assets/20ee5042-95be-4a61-ba52-c4e281df1cc4" />

### Enemy + Hurt Box
- I had created a class for the bat and mushroom enemies, so that they can dynamically shoot when the car gets within a certain radius of the enemy. These enemies also have a health value, which initially starts off at 100. Their default animation is set to "attack" since the enemy would have started attacking the player when they are seen. The damage that the enemies take is a set value defined to be 25 units (damage detected in the hurtbox, which is an Area2D with a signal attached). For testing purposes, I used a progress bar node in Godot to mimic a health bar, however, for a cleaner UI look, I turned off visibility for the health bar. For targeted shooting, I used the bullet class that my partner had implemented to shoot at the car (the origin of the bullet is the enemy and the target is set as the position of the car). There is a shooting interval + shoot radius variable which specifies how often to shoot at the car and when. Once the enemy dies, the enemy death animation plays once, and a variable called 'dead' is set to true. This ensures that the animation is only played once.
![enemy_death](https://github.com/user-attachments/assets/575e8e4e-544b-4ff8-9cfb-c2183f2768b5)

### Police Battle
- I incorporated a short combat element in the middle of the terrain course. Essentially, the player drives over a trap that punctures the car's tires. They must then battle an officer and win to access spare tires and continue the game.
  
- I found spritesheets for a spike, which looked like spikes popping in and out of the ground. I combined four different spikes into one node. When the car drives over the trap, input is disabled. Under the detection box for the player, in the on_area_entered class, I added code under an if object is Trap statement to set up the scene. This disables input for the car and implements a stop_car() function in player_car.gd to completely stop the wheels regardless of gravity. The visibility of the character inside the car is turned off, and the character's visibility already present in the battle area is turned on. This way, I created the illusion of teleportation.

![battle_start](https://github.com/user-attachments/assets/49555ebb-7fb9-4caf-af9b-310c2c9f3309)

- **Additionally, I utilized GlobalVariables which were set to "Not On Car level", "Car Level Entered", "Battle", "Battle Over", and "Game Over"**. These five states match the point of the game the player is in. In the player.gd file, I unbinded the player input until the car_level_stat variable was set to "Battle." It was difficult to work with the player.gd file since my level didn't require much of the default player behavior. The use of global variables resolved this issue and made it easier to control the player behavior in the car battle.
  
- **I used the default move left, move right, and jump commands. However, I implemented my own shoot command to utilize the bullets implemented by my teammate**. I also modified the on_entered_hurtbox function in player.gd to effectively handle damage incurred by the police. Once killed, the respawn function is called to restart the game.
  
- **I created a Police Character class that extends Character to give movement and combat abilities to the officer. The police start shooting when car_level_stat is set to "Battle."** Here again, I used the bullet class for shooting. My officer can move left, move right, and shoot. I didn't modify player.gd since the police weren't controlled by inputs. I also implemented logic for the police to move toward the player, mimicking a chase which increased the difficulty of the battle.
Once the battle is won, car_level_stat is set to "Battle Over" and the variable killed under the police class is set to true (the death animation plays and the queue is freed). The player must then run toward the pile of tires and come in contact with it to get back in the car and continue on with the game. The tire pile has a _on_area_entered function that detects when the player enters it. Once entered, the player is queue-free, the player inside the car is visible again, and the input is enabled for the car.
![player_dead](https://github.com/user-attachments/assets/a91187d4-545a-4037-a542-476ca061c493)

![police_dead](https://github.com/user-attachments/assets/d5f88e5c-7ac8-4f44-960b-5f227a670a2c)

### Animation
- Terrain: Gravel + Grass
- Rotating Key Animation
- Initial plan for the Prison Entrance
- Platforms for the enemies 
- Enemy Animations 
- Police Officer Animations

### Sound
- I was responsible for the sounds in our level. There is an energetic and suspenseful sound playing throughout the game, which provides a more immersive experience for the player. Additionally, there are sounds for:
    - the police siren (during the car chase)
    - car engine starting in the player's car
    - damage to the car
    - death of enemies
    - trap puncture sound
    - fuel/health pick up

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

## Player Mechanics/UI
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

- I also found audios for each of the player actions like movement, jumping, crouching, and dying. This was using an audio asset pack.

![ScreenRecording2024-12-09at6 16 49PM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/f4c745c4-17ff-476d-b423-a42ad58daf3b)

Because the player node was being used in both the Platformer level and also the Run n Gun level, I created [divided sections](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/cfaf076168504e1c8e5793a9c240a6b728543a44/shattered-dimensions/scripts/player/player.gd#L10) to place variables and functions for both level types so that it would be well organized. For the platformer level, I created a [respawn function](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/cfaf076168504e1c8e5793a9c240a6b728543a44/shattered-dimensions/scripts/player/player.gd#L154) that relocates the player position rather than reloading the entire script. For the Run n Gun the death process involved creating a death animation that would be instantiated on losing all lives.

Additional work was also done by other team members who needed very specific functionality with the player node so there are additional functions and variables as well.

## **Sub-Roles**  
**Sub-Role: Cinematics, Powerups, Player/Enemy Gun Logic**  

### **Student Information**  
**Name**: Anunay Akhaury  
**Email**: aakhaury@ucdavis.edu  
**Github**: [AnunayAkhaury](https://github.com/AnunayAkhaury)  

---

### **Cinematics/Narrative Design**  
For the final cinematic, I implemented a dynamic **cutscene system** using the **Durative Command Pattern**, similar to concepts learned in Exercise 1. This system allowed me to sequence various actions like dialogue, animations, and movement into a structured cutscene.

#### **Final Cutscene Overview**  
Once all four keys are collected, the global script triggers the final cutscene. In this sequence:  
1. **Player Choice Integration**:  
   - I added interactivity by allowing the player to **choose Yes or No** during the cutscene.  
   - **Yes**: Continues the story to the game’s conclusion.  
   - **No**: Triggers an alternate cutscene where the player is sent back to the prison.  
   - This branching logic was handled through **button inputs**, signals, and logic in my **CutsceneManager**.  

2. **Cutscene Commands**:  
   - I managed the flow of the cutscene by iterating through an **array of commands**, including dialogue, movement, and animation.  
   - I structured these commands to allow clean integration of branching choices and specific logic for each outcome.  

3. **Visual and Audio Enhancements**:  
   - Added a **parallax background** for the final cinematic scene to enhance visual appeal.  
   - Designed and integrated a **new character** with unique animations specific to this stage.  
   - Implemented background music and sound effects for a polished cinematic experience.  

4. **Credits Roll**:  
   - Upon selecting "Yes" and reaching the game’s end, I added a **credits screen** that rolls through team members and contributors.  
   - This was implemented using basic controls and signal connections.  

**Boss Fight Cutscene**:  
   - I implemented a **custom cutscene** specifically for the **boss fight**.  
   - This uses two cameras:  
     - The camera **zooms in** on the boss when the encounter starts.  
     - The camera then **smoothly transitions** and zooms out to focus on both the boss and player, setting up the battle seamlessly.  
   - These transitions enhance the atmosphere and emphasize the significance of the boss fight.  

### **Powerups**  
Powerups were covered extensively in the main **Run and Gun Level** section, where I implemented:  
- **Health Powerups**  
- **Rapid Fire Powerups**  
- **Spiral Shot Powerups**  

Each powerup used distinct collision layers and `Area2D` signals for pickup detection, and they were seamlessly integrated with the game’s logic.

### **Player/Enemy Gun Logic**  
Gun Mechanics were covered extensively in the main **Run and Gun Level** section. The gun mechanics for both the player and enemies were implemented using:  
- A **command-based shooting system**.  
- Customizable bullets with specific behaviors, such as speed, damage, and collision effects.  
- Visual feedback through hit animations and sound effects.  

---

## Prison Lobby/Gameplay Testing

**Student Information**
*Name: Satyasree Sanegepalli*   
*Email: ssanegepalli@ucdavis.edu*   
*Github: ssaneg*

The prison setting of this main lobby allows the player access into all 4 dimensions to play the minigames necessary to escape. 

- **Visuals**: I was able to source the necessary visual sprites and assets for the background of the prison to provide cohesion with the story from the initial cutscene. 

- **Accessing Levels**: Each window serves as a portal to a different minigame.
    
    - Windows are equipped with collision shapes to detect the player's entrance and transition to the respective level.
    
- **Moving Platform**: I was able to implement an automated [moving platform](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/8434e8191ef8215c6ded14c60ae8eafa1faf97ad/shattered-dimensions/scripts/platform.gd#L18) to allow the player to move from the ground floor to the top floor of the prison. 

- **Keys & Locks**: After the play successfully beats a level, they are awarded a key with triggers the [completeLevel function](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/a60a4df470f8b8e5541cfa08845b568f5a85204c/shattered-dimensions/scripts/levels.gd#L26) of one lock on the prison wall. 

    - I originally triggered the unlocking function using 4 boolean variables that showed whether or not each level was completed.
    
    - *For easier access, these variables were made global by Abhimanyu.*

    - I also implemented logic that [drops each lock](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/a60a4df470f8b8e5541cfa08845b568f5a85204c/shattered-dimensions/scripts/lock.gd#L10) from its position once it is unlocked.

- **Background Music**: I was able to source eerie music to play in the background of the prison scene.
    
    - *For smoother feel, a slight delay was added to the start of the music by Anunay.* 

Once all keys are unlocked, the player has won the game!


## Press Kit & Trailer

**Student Information**
*Name: Sri Lakshmi Panda*   
*Email: slpanda@ucdavis.edu*   
*Github: [srilakshmipanda](https://github.com/srilakshmipanda)*

The prison setting of this main lobby allows the player access into all 4 dimensions to play the minigames necessary to escape. 

- **Trailer**: [ShatteredDimensions](https://www.youtube.com/watch?v=dAQCB9caG2s)

- **PressKit**: ...


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
