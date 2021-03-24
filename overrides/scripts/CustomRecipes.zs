import crafttweaker.api.BracketHandlers;
import crafttweaker.api.SmithingManager;
import mods.jei.JEI;

println("--------------------------------------");
println("Started Loading Tuna's Custom Recipes.");
println("--------------------------------------");
//Smiting Netherite
furnace.removeRecipe(<item:minecraft:netherite_scrap>);
blastFurnace.removeRecipe(<item:minecraft:netherite_scrap>);
mods.jei.JEI.hideItem(<item:minecraft:netherite_scrap>);
furnace.addRecipe("DebrisToIngot", <item:minecraft:netherite_ingot>, <item:minecraft:ancient_debris>, 1.0, 200);
blastFurnace.addRecipe("BlastDebrisToIngot", <item:minecraft:netherite_ingot>, <item:minecraft:ancient_debris>, 1.0, 100);
craftingTable.removeByName("minecraft:netherite_ingot");
craftingTable.removeByName("minecraft:netherite_ingot_from_netherite_block");
craftingTable.addShapeless("NetheriteIngotFromBlock", <item:minecraft:netherite_ingot> * 9, [<item:minecraft:netherite_block>]);
craftingTable.addShaped("EasyNetherite", <item:minecraft:netherite_ingot> * 2, [[<item:minecraft:air>, <item:minecraft:coal>, <item:minecraft:air>],[<item:minecraft:diamond>,<item:minecraft:obsidian>,<item:minecraft:gold_ingot>],[<item:minecraft:air>,<item:minecraft:netherrack>,<item:minecraft:air>]]);
mods.jei.JEI.addInfo(<item:minecraft:netherite_ingot>, ["Check Crafting Recipies", "", "They have been heavily modified because Netherite is dumb and should be removed by Mojang (*cough* Microsoft)."]);
//Netherite Tool Crafting
smithing.removeAll();
craftingTable.addShaped("NetheriteSword", <item:minecraft:netherite_sword>, [[<item:minecraft:netherite_ingot>],[<item:minecraft:netherite_ingot>],[<item:minecraft:stick>]]);
craftingTable.addShaped("NetheriteShovel", <item:minecraft:netherite_shovel>, [[<item:minecraft:netherite_ingot>],[<item:minecraft:stick>],[<item:minecraft:stick>]]);
craftingTable.addShaped("NetheritePickaxe", <item:minecraft:netherite_pickaxe>, [[<item:minecraft:netherite_ingot>,<item:minecraft:netherite_ingot>,<item:minecraft:netherite_ingot>],[<item:minecraft:air>,<item:minecraft:stick>,<item:minecraft:air>],[<item:minecraft:air>,<item:minecraft:stick>,<item:minecraft:air>]]);
craftingTable.addShapedMirrored("NetheriteAxe", <item:minecraft:netherite_axe>, [[<item:minecraft:air>,<item:minecraft:netherite_ingot>,<item:minecraft:netherite_ingot>],[<item:minecraft:air>,<item:minecraft:stick>,<item:minecraft:netherite_ingot>],[<item:minecraft:air>,<item:minecraft:stick>,<item:minecraft:air>]]);
craftingTable.addShapedMirrored("NetheriteHoe", <item:minecraft:netherite_hoe>, [[<item:minecraft:air>,<item:minecraft:netherite_ingot>,<item:minecraft:netherite_ingot>],[<item:minecraft:air>,<item:minecraft:stick>,<item:minecraft:air>],[<item:minecraft:air>,<item:minecraft:stick>,<item:minecraft:air>]]);
//Netherite Armor Crafting
craftingTable.addShaped("NetheriteHelmet", <item:minecraft:netherite_helmet>, [[<item:minecraft:netherite_ingot>,<item:minecraft:netherite_ingot>,<item:minecraft:netherite_ingot>],[<item:minecraft:netherite_ingot>,<item:minecraft:air>,<item:minecraft:netherite_ingot>]]);
craftingTable.addShaped("NetheriteChestplate", <item:minecraft:netherite_chestplate>, [[<item:minecraft:netherite_ingot>,<item:minecraft:air>,<item:minecraft:netherite_ingot>],[<item:minecraft:netherite_ingot>,<item:minecraft:netherite_ingot>,<item:minecraft:netherite_ingot>],[<item:minecraft:netherite_ingot>,<item:minecraft:netherite_ingot>,<item:minecraft:netherite_ingot>]]);
craftingTable.addShaped("NetheriteLeggings", <item:minecraft:netherite_leggings>, [[<item:minecraft:netherite_ingot>,<item:minecraft:netherite_ingot>,<item:minecraft:netherite_ingot>],[<item:minecraft:netherite_ingot>,<item:minecraft:air>,<item:minecraft:netherite_ingot>],[<item:minecraft:netherite_ingot>,<item:minecraft:air>,<item:minecraft:netherite_ingot>]]);
craftingTable.addShaped("NetheriteBoots", <item:minecraft:netherite_boots>, [[<item:minecraft:netherite_ingot>,<item:minecraft:air>,<item:minecraft:netherite_ingot>],[<item:minecraft:netherite_ingot>,<item:minecraft:air>,<item:minecraft:netherite_ingot>]]);
//Elytra
craftingTable.addShaped("ElytraEasy", <item:minecraft:elytra>, [[<item:minecraft:phantom_membrane>,<item:minecraft:phantom_membrane>,<item:minecraft:phantom_membrane>],[<item:minecraft:dragon_breath>,<item:minecraft:netherite_chestplate>,<item:minecraft:dragon_breath>],[<item:minecraft:phantom_membrane>,<item:minecraft:phantom_membrane>,<item:minecraft:phantom_membrane>]]);
//Shulker
craftingTable.addShaped("RenewableShulkers", <item:minecraft:shulker_shell> * 2, [[<item:minecraft:ender_pearl>,<item:minecraft:chest>,<item:minecraft:ender_pearl>],[<item:minecraft:chorus_fruit>,<item:minecraft:chorus_fruit>,<item:minecraft:chorus_fruit>]]);
//Backpacks
craftingTable.removeRecipe(<item:usefulbackpacks:backpack_large>);
mods.jei.JEI.hideItem(<item:usefulbackpacks:backpack_large>);
//Animal Crops
mods.jei.JEI.hideMod("animalcrops");

println("--------------------------------------");
println("Tuna's Quest to Destroy* Netherite has Successfully Been Completed.");
println("--------------------------------------");
println("*Make Less Evil");