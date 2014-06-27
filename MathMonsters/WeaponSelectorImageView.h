//
//  WeaponSelectorImageView.h
//  MathMonsters
//
//  Created by Aditya Narayan on 6/27/14.
//  Copyright (c) 2014 Designated Nerd Software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeaponInputViewController.h"
@class Weapon;

@protocol WeaponSelectorDelegate <NSObject>
-(void)selectedWeapon:(Weapon *)weapon;
@end


@interface WeaponSelectorImageView : UIImageView <WeaponInputDelegate>

@property (nonatomic, strong) Weapon *weapon;
@property (nonatomic, strong) WeaponInputViewController *weaponInputController;
@property (nonatomic, strong) IBOutlet id<WeaponSelectorDelegate> delegate;

@end
