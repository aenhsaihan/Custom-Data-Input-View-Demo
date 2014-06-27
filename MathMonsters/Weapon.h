//
//  Weapon.h
//  MathMonsters
//
//  Created by Aditya Narayan on 6/27/14.
//  Copyright (c) 2014 Designated Nerd Software. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    Blowgun = 0,
    NinjaStar,
    Fire,
    Sword,
    Smoke,
} WeaponType;

@interface Weapon : NSObject

@property (nonatomic, assign) WeaponType weaponType;


//Factory method to make a new object with a particular type.
+(Weapon *)newWeaponOfType:(WeaponType)weaponType;

//Convenience instance method to get the UIImage representing the weapon.
-(UIImage *)weaponImage;

@end
