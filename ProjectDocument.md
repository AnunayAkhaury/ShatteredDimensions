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
## Team Info

[Abhimanyu Warrier](avwarrier@ucdavis.edu)  -  Platformer Level + UI/Player Mechanics

[Satya Sanegapalli](ssanegapalli@ucdavis.edu)  -  Spaceship Level + Prison Lobby

[Anunay Akhaury](?@ucdavis.edu)  -  RunGun Level + SubRole: (Cinematics, Powerups, Player/Enemy Gun Logic)

[SriLakshmi Panda](?@ucdavis.edu)  -  Car Level (Physics) + Press Kit/Trailer

[Janani Asokumar](?@ucdavis.edu)  -  Car Level + Initial Cutscene


## Team Assets

All assets were procured from itch.io's asset store/collection and will be linked below:

[Pixel Adventure](https://pixelfrog-assets.itch.io/pixel-adventure-1) by Pixel Frog licensed under [Creative Commons Zero v1.0 Universal](https://itch.io/game-assets/assets-cc0)

[Pixel Fantasy "Caves"](https://szadiart.itch.io/pixel-fantasy-caves) by Szadi art. licensed under [Creative Commons Zero v1.0 Universal](https://itch.io/game-assets/assets-cc0)

[Fantasy Swamp Forest Tileset](https://theflavare.itch.io/forest-nature-fantasy-tileset) by The Flavare licensed under [Creative Commons Zero v1.0 Universal](https://itch.io/game-assets/assets-cc0)

[Super Grotto Escape](https://ansimuz.itch.io/super-grotto-escape-pack) by ansimuz licensed under [Creative Commons Zero v1.0 Universal](https://itch.io/game-assets/assets-cc0)

[Castle Platformer Tileset](https://rottingpixels.itch.io/castle-platformer-tileset-16x16free) by Rotting Pixels licensed under [Creative Commons Zero v1.0 Universal](https://itch.io/game-assets/assets-cc0)

[RPG Essentials SFX Pack](https://leohpaz.itch.io/rpg-essentials-sfx-free) by Leohpaz licensed under [Creative Commons Zero v1.0 Universal](https://itch.io/game-assets/assets-cc0)


## Platformer Level

Abhi's main role was the platformer level, a level based on games like _I wanna be the guy_ and _Super Meatboy_. Because we split our roles into levels rather than overarching systems, we all got to do a little bit of everything, which is what I will go into detail about below. Overall, the game consists of 2 main levels with the second more difficult than the first. Below I will explain all the systems necessary to making the game.

### Player Movement/Physics

Player movement was pretty simple and required only 4 main controls which were move_left, move_right, crouch, and jump. The main goal of the game is based on accurately timed jumps to get over/under obstacles and reach difficult, moving platforms. There are level boundaries set up along the edges of each level to ensure that if a player hits those, they lose a a life and respawn at the level default.

- In terms of the player camera, I gave level 1 a static camera that displays the entire level because of the fact that it is built in a zig-zag motion and players would want to reach from the bottom left to the top right.

![ScreenRecording2024-12-10at11 17 55AM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/d39a3627-d6b8-47aa-9702-b8354827252e)

- Level 2 has a slightly more complex camera where there is a push-box implementation similar to exercise 2. I made it so the player can push on the right-side around halfway into the screen but on the left, there would be some space before the camera moves back left. This was to ensure certain areas like the downward descent in Level 2 were fully visible on the screen without any camera movement necessary since many of the obstacles were not easily seen without this system.

![ScreenRecording2024-12-10at11 21 45AM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/362881a2-710a-482a-beaf-637d20dcba1e)

### Enemies/Obstacles

There are many obstacles with various use-cases all around the levels. I made a universal KillZone class that already implemented the death response when a player enters the obstacle and so I was able to use that for every enemy. This ensured that there was no need for an additional script on each obstacle, rather they all called KillZone.

_Basic Spike, Saw Blade, Spike Ball_

- The basic spike is a core obstacle that is scattered throughout the floor pieces of both levels. I used the spikes in many sizes using the scale attribute and used a collision polygon to get the hitbox exactly in a triangular shape.
- The saw blade and spike ball are similarly present in both levels. I added a script that would constantly rotate the saw blade at a certain pace so that it would replicate a real saw blade motion. Here I only needed to use a collision shape, namely a circle since the rotation would anyway prevent there ever from being a slip through a small point in the blade.
- For the spike ball, I had a similar script but with a much slower rotation, necessating a very accurate collision polygon.

![ScreenRecording2024-12-10at11 42 19AM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/b2680a81-9f5b-4f09-b555-dc6c3d01b9cb)


_SpikeBlock/Factory_

- I made this obstacle specifically for level 2 as a moving block with 2 spikes attached on the left and right. It was animated to move left and right on a given surface.
- The raising spike factory used the Factory Pattern concept to create a class that constantly spawns spike blocks in an upward or downward direction. I also added an export variable to determine speed so I could create different spike blocks at different speeds.

![ScreenRecording2024-12-10at11 27 54AM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/c695c2cf-a256-4f17-a53b-a1d0dd48d1b3)


_Descent Zone (2 new enemies)_

- For the descent zone in level 2, I added 2 special enemies, specifically a Thwomp and a pea shooter. The Thwomp was inspired by the Mario world and worked in a similar fashion where it was animated to come down, wait a little bit, and slownly come up, before waiting and repeating.
- The pea shooter was located in a space in the wall and made to shoot a green ball at a regular interval. I used an animation to achieve this where the ball would shoot to the other side, wait, and then repeat the animation. This made it so that players would need to crouch to avoid the pea.

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


_Blue orb (Double Jump)_
- The blue orb allows players to press the jump input again for a double jump.
- I used a sprite with an area_body_2d and collision shape to achieve this

![ScreenRecording2024-12-10at12 06 32PM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/bf84e1d5-e80c-498f-ba61-d5328c46cc99)


_Orange/Green orb (ascend/descend)_
- The orange orb allows the player's current platform to start ascending until a given point. This was achieved through an animation.
- The green orb allows players to have their platform descend, so very similar to ascend.

![ScreenRecording2024-12-10at12 07 27PM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/e123d699-0dd6-4376-a0b1-e1e70efc0a23)


_Trampoline_
- The trampoline is an animated sprite that allows players to have a much higher jump when springing off this component.
- I added a conditional in the player script to check whether or not the player was on the trampoline and if so, change the jump velocity to be much more negative to achieve a much higher jump.

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

**Class Content**

*Autoscroll Camera Movement with Partital PushBox* - The camera movement of the game is a combination of different features of the pushbox and controllers in Exercise 2. The camera is set to perform a [constant horizontal autoscroll](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/225a96834739d2f906e4af3a0d7a5ef6a8226745/shattered-dimensions/scripts/spaceship/camera.gd#L14) and the player (spaceship) is [pushed by the left edge of the pushbox](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/camera.gd#L17). The right edge is not restricted so the user must manually ensure they stay within the camera viewport at all times. The player is free to move vertically until they reach the bounds of the background and the [camera follows the player when they move vertically](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/spaceship.gd#L80). 

*Arrow Instantiation System* - The component system discussed in class is employed to create a self contained **fire scene**. This scene contains the [functionality for a set of arrows to be released from the holder and fired across the screen](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/fire.gd#L27). Upon the press of the space bar, the spaceship [instantiates a new set of arrows](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/spaceship.gd#L111) that are loaded onto the spaceship and fired at the incoming UFOs. Each arrow is released at a different time in line with the release animation. The most difficult part of this feature was to handle movement of the spaceship during the firing animation. I needed to ensure that I was [updating the position of the holder and arrows that were not yet fired](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/spaceship.gd#L125) if the spaceship moved. This meant that each arrow had to function individually, independent of the others. My familiarity with the projectile instantiation system from Exercise 3 was extremely helpful for building out this feature.

*Add video of arrow firing*

*Spaceship Movement and Statistics* - The movement of the spaceship is directly tied to specific keys for different functions. The **healthLevel variable** keeps track of the damage done to the spaceship based on collisions with different objects. The statistics in the top right corner consist of a health bar that is constantly updated and a kill count to show how many spaceships the player still has to defeat to win the level. The UFOs have their own health that is depleted by the arrows fired by the spaceship. The [kill count is updated](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/225a96834739d2f906e4af3a0d7a5ef6a8226745/shattered-dimensions/scripts/spaceship/enemy.gd#L19) upon defeat of a UFO. This implementation of this feature involves skills I developed with collision objects, signals, and health management in my boss battle from Exercise 1.

*Add picture of stats*

*Enemy Onscreen Detection* - The laser blast system of the enemies also employs the command pattern as each blast is treated as a self contained object. There are numerous enemies placed throughout the map of my level. I was able to set up an automated blast firing system that executes only during the time that an enemy is detected to be within the player's viewport. This system is set to fire with a specific delay between each blast, using concepts from the recharge delay of Stage 1 in Exercise 3. I was able to accomplish onscreen detection by [comparing the camera position to the enemy position](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/enemy.gd#L35). The UFOs also have [automated movement](https://github.com/AnunayAkhaury/ShatteredDimensions/blob/99a9b872f7da270022e0cc5cf6bac83ec8269963/shattered-dimensions/scripts/spaceship/enemy.gd#L23) to add to the difficulty of the level. 

*Add video of enemy firing*

*User Interface* - I was able to use the skills I developed with working on Exercise 1 to create animations for sprites, implement sound effects, and use tilemap layers to set up the background of this level. Some examples are explosions of rotating asteroids after collision, the firing sounds for the spaceship and UFOs, and the space background for the autoscroll. All of these aspects contribute significantly to the game feel and enhance the gaming experience for the user. I also added a menu that displays upon player death so that the user can choose to either return to the lobby or restart the game. 

*Add pictures of menu, asteroid explosion*

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

### **Cinematics**  
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
