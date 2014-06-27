//
//  Weapon.m
//  MathMonsters
//
//  Created by Aditya Narayan on 6/27/14.
//  Copyright (c) 2014 Designated Nerd Software. All rights reserved.
//

#import "Weapon.h"

@implementation Weapon

+(Weapon *)newWeaponOfType:(WeaponType)weaponType
{
    Weapon *weapon = [[Weapon alloc] init];
    weapon.weaponType = weaponType;
    
    return weapon;
}

-(UIImage *)weaponImage
{
    switch (self.weaponType) {
        case Blowgun:
            return [UIImage imageNamed:@"blowgun.png"];
            break;
        case NinjaStar:
            return [UIImage imageNamed:@"ninjastar.png"];
            break;
        case Fire:
            return [UIImage imageNamed:@"fire.png"];
            break;
        case Smoke:
            return [UIImage imageNamed:@"smoke.png"];
            break;
        case Sword:
            return [UIImage imageNamed:@"sword.png"];
            break;
        default:
            return nil;
            break;
    }
}

@end
