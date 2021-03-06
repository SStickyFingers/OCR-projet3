//
//  Chest.swift
//  RPG
//
//  Created by admin on 04/12/2018.
//  Copyright © 2018 Jotaro. All rights reserved.
//

import Foundation

class Chest{
    func giveAWeaponTo(aCharacter: Character){
        let weaponNumber = Int.random(in: 1 ... 4)
        switch weaponNumber{
        case 1:
            giveABasicWeaponTo(someCharacter: aCharacter)
        case 2:
            giveAGreatWeaponTo(someCharacter: aCharacter)
        case 3:
            giveASuperWeaponTo(someCharacter: aCharacter)
        case 4:
            giveAMagicWeaponTo(someCharacter: aCharacter)
        default:
            print("Something went wrong")
        }
    }
    private func giveABasicWeaponTo(someCharacter: Character){
        if someCharacter is Warrior{
            someCharacter.weapon = BasicSword.init()
        } else if someCharacter is Mage{
            someCharacter.weapon = BasicCrystalBall.init()
        } else if someCharacter is Tank{
            someCharacter.weapon = BasicShield.init()
        } else if someCharacter is Dwarf{
            someCharacter.weapon = BasicHammer.init()
        }
    }
    private func giveAGreatWeaponTo(someCharacter: Character){
        if someCharacter is Warrior{
            someCharacter.weapon = GreatSword.init()
        } else if someCharacter is Mage{
            someCharacter.weapon = GreatCrystalBall.init()
        } else if someCharacter is Tank{
            someCharacter.weapon = GreatShield.init()
        } else if someCharacter is Dwarf{
            someCharacter.weapon = GreatHammer.init()
        }
    }
    private func giveASuperWeaponTo(someCharacter: Character){
        if someCharacter is Warrior{
            someCharacter.weapon = SuperSword.init()
        } else if someCharacter is Mage{
            someCharacter.weapon = SuperCrystalBall.init()
        } else if someCharacter is Tank{
            someCharacter.weapon = SuperShield.init()
        } else if someCharacter is Dwarf{
            someCharacter.weapon = SuperHammer.init()
        }
    }
    private func giveAMagicWeaponTo(someCharacter: Character){
        if someCharacter is Warrior{
            someCharacter.weapon = MagicGlove.init()
        } else if someCharacter is Mage{
            someCharacter.weapon = MagicWand.init()
        } else if someCharacter is Tank{
            someCharacter.weapon = MagicGlove.init()
        } else if someCharacter is Dwarf{
            someCharacter.weapon = MagicGlove.init()
        }
    }
    // This function let the player know what weapon did the chest gave the character about to attack
    func printWeaponOfChest(aCharacter: Character){
        if aCharacter is Mage{
            print("🎁","A chest just appeared, it contains a",  aCharacter.weapon.name, aCharacter.name, "equiped it.", "The weapon can heal for", -aCharacter.weapon.dmg, "health points")
        } else {
            print("🎁","A chest just appeared, it contains a",  aCharacter.weapon.name, aCharacter.name, "equiped it.", "The weapon has", aCharacter.weapon.dmg, "dammage power")
        }
    }
}
