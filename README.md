# <img src="Contrasting Curses/pack.png" alt="drawing" width="24"/> Contrasting Curses

📕 Adds a collection of 20 unique curses spread across all types of equipment equally with interesting tradeoffs crafted in to encourage interaction with cursed gear. While all curses are generally negative, some may have useful niche applications or specific buffs when playing around them.

🪄 This datapack was made to support and balance out the enchantment systems in modpacks in an unobtrusive style. Contrasting Curses is best experienced alongside the [Sneaky Curses](https://modrinth.com/mod/sneaky-curses) mod and was made to support it and give cursed gear some love, *rather than constantly avoiding it in fear of Curse of Binding!*

➕ All curses are limited to single levels by default, however, most curses stack and support multiple levels if given with commands or other mods! If you'd like to play with leveled curses, please install the addon Contrasting Curses: Leveled (WIP).

## Curses

| Enchantment | Items | Description |
|-------------|-------|--------------------------|
| Curse of Exclusivity | Many Enchantable | Prevents the addition of any exclusive enchantments <sup>1</sup> |
| Curse of Expenditure | Bows/Crossbows | Adds a 33% chance to consume an additional arrow <sup>2</sup> |
| Curse of Misfire | Bows/Crossbows | Arrows have a 20% chance to misfire on the ground <sup>3</sup> |
| Curse of Gluttony | Anything | Inflicts occasional hunger pangs <sup>4</sup> |
| Curse of Elder's Wrath | Tools | Inflicts occasional mining fatigue when mining <sup>5</sup> |
| Curse of Channeling | Tridents | Occasionally strikes the holder with lightning in rain <sup>6</sup>  |
| Curse of Insomnia | Head Equipment | Nightmares have a chance to spawn when sleeping <sup>7</sup> |
| Curse of Snapping | Fishing Rods | Fish have a 15% chance to snap off the line |
| Curse of Unluck | Fishing Rods | Decreases fishing treasure chances <sup>8</sup> |
| Curse of Ignition | All Weapons/Tools | Ignites block and mob item drops <sup>9</sup> |
| Curse of Gigantism | Equipment | Increases the size of the wearer |
| Curse of Dwarfism | Equipment | Decreases the size and reach of the wearer |
| Curse of Purity | Anything | Prevents the addition of any other curses |
| Curse of Gravity | Maces | Increases the holder's gravity <sup>10</sup> |
| Curse of Abyssborne | Armor | Buffs the wearer when underground, otherwise debuffs<br>Effects include protection, armor, damage, speed, haste <sup>11</sup> |
| Curse of Astralborne | Armor | Buffs the wearer when near the clouds, otherwise debuffs<br>Effects include protection, armor, damage, speed, haste <sup>11</sup> |
| Curse of Trampling | Boots | Tramples crops, plants, and suspicious blocks when worn |
| Curse of Vulnerability | Ranged Weapons,<br>Shields, Spyglass | Attacks received deal extra damage while using the item <sup>12</sup> |
| Curse of Headwind | Elytra | Headwinds have a chance to kill momentum while flying |
| Curse of Burden | Chest/Leg Armor | Modifies the wearer's movement speed by inventory fill <sup>13</sup> |

<small>
<h3>Additional Notes</h3><ol>
<li>&nbsp;Ex: Cursed pickaxes can't get fortune/silk touch, cursed armor can't get any protection, etc.</li>
<li>&nbsp;Modification to the Infinity enchantment done for expected compatibility</li>
<li>&nbsp;Misfired arrows become client-desynced until they hit the ground, this is a Minecraft bug with updating projectile motion</li>
<li>&nbsp;10% chance per enchant every 30s held/equipped, removing several hunger haunches</li>
<li>&nbsp;Applies 10-30s of mining fatigue 1-2 roughly every stack of blocks hit</li>
<li>&nbsp;Chance doubled when thundering</li>
<li>&nbsp;30% chance to spawn a monster nearby or awaken the player from a nightmare</li>
<li>&nbsp;-2 fishing luck (Luck of the Sea III adds +3)</li>
<li>&nbsp;Items burn up over 3 seconds, but can still be retrieved safely</li>
<li>&nbsp;Does not affect the Mace's damage calculation</li>
<li>&nbsp;Effects are player-only, the world is split into 3 sections at y-levels 45 & 160,<br> buffs are applied within the correct section, removed outside it, and doubly removed in the opposing section</li>
<li>&nbsp;Shields still block damage, however, damage received before and immediately after shield activation is increased </li>
<li>&nbsp;Movement speed modifier is calculated as follows: <code>(10 - slots) * 1/2 * (enchantment instances + total levels) %</code> </li>
</ol></small>

## Questions

> **How do I install and use this datapack?**
> 
> Simply place the datapack zip file in the `datapacks` folder of your world and rejoin. Alternatively, you can use any global datapack loader mod!

> **Does this support enchantment description mods?**
> 
> Yes! Simply place the datapack zip file in your `resourcepacks` folder and enable it in-game!

> **Does this work in multiplayer?**
> 
> All features should work in multiplayer! Some enchantments may also work on mobs.

> **Are any vanilla enchantments changed?**
>
> The Infinity enchantment is the only vanilla file overridden for compatibility with Curse of Expenditure.

> **How can these curses be obtained?**
>
> There are no special ways added to obtain curses, they can be found on vanilla gear, books, and trades naturally generated.

> **Will you support other versions?**
>
> I am interested in adding overrides to support newer versions! Older versions prior 1.21 will not be supported.

> **Is this datapack optimized?**
>
> I pay close attention to optimization in my datapacks, it should not affect performance or cause issues in most modpacks or servers!

> **Are any mods explicitly supported?**
>
> - All enchantment description mods
> - Wetland Whimsy (suspicious mud)
> - Wan's Ancient Beasts (suspicious red sand & ice)
>
> Let me know if there are any other mods you would like support for.

## License

Feel free to play, stream, or showcase this pack so long as visible credit is given.  
This project can be packaged into any server or modpack so long as significant modifications are disclosed.  
Do **not** redistribute or reupload this pack or its source code without permission.  
Please link to one of the official pack pages instead of redistributing files.  

*Copyright © 2026 RoarkCats.*  
*All rights reserved.*  