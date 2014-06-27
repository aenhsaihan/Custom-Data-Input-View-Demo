//
//  WeaponSelectorImageView.m
//  MathMonsters
//
//  Created by Aditya Narayan on 6/27/14.
//  Copyright (c) 2014 Designated Nerd Software. All rights reserved.
//

#import "WeaponSelectorImageView.h"

@implementation WeaponSelectorImageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

#pragma mark - Overridden setters
-(void)setWeapon:(Weapon *)weapon
{
    //First make sure you're actually changing the weapon
    if (_weapon != weapon) {
        _weapon = weapon;
        
        //Update your image to use the weapon's image.
        self.image = [_weapon weaponImage];
    }
}

#pragma mark - Superclass overrides
-(BOOL)canBecomeFirstResponder
{
    //Says that this view can show an input view.
    return YES;
}

-(UIView *)inputView
{
    //Make sure the weaponInputController exists, and if not, create it.
    if (_weaponInputController == nil) {
        _weaponInputController = [[WeaponInputViewController alloc] initWithNibName:nil bundle:nil];
        _weaponInputController.delegate = self;
    }
    
    //Return the WeaponInputController's view as the input view.
    return _weaponInputController.view;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //Show the input view as soon as the imageView is touched,
	//if it is not already showing.
    if (![self isFirstResponder]) {
        [self becomeFirstResponder];
    }
}

#pragma mark - WeaponInputDelegate methods
-(void)closeTapped
{
    //Dismiss the input view.
    [self resignFirstResponder];
}

-(void)selectedWeaponType:(WeaponType)weaponType
{
    //Set the instance variable.
    [self setWeapon:[Weapon newWeaponOfType:weaponType]];
    
    //Dismiss the input view.
    [self resignFirstResponder];
    
    //Notify the delegate of the change if it exists
    [self.delegate selectedWeapon:self.weapon];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
