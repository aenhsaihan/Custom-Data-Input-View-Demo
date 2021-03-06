//
//  RightViewController.h
//  MathMonsters
//
//  Created by Ellen Shapiro on 1/8/13.
//  Copyright (c) 2013 Designated Nerd Software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Weapon.h"
#import "WeaponSelectorImageView.h" //Also has WeaponSelectorDelegate protocol

@class Monster;
#import "MonsterSelectionDelegate.h"
#import "ColorPickerViewController.h"

@interface RightViewController : UIViewController <UISplitViewControllerDelegate, MonsterSelectionDelegate, ColorPickerDelegate, WeaponSelectorDelegate>

@property (nonatomic, strong) Monster *monster;
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *descriptionLabel;
@property (nonatomic, weak) IBOutlet UIImageView *iconImageView;
@property (nonatomic, weak) IBOutlet WeaponSelectorImageView *weaponImageView;
@property (nonatomic, weak) IBOutlet UINavigationItem *navBarItem;
@property (nonatomic, strong) UIPopoverController *popover;
@property (nonatomic, strong) ColorPickerViewController *colorPicker;
@property (nonatomic, strong) UIPopoverController *colorPickerPopover;



-(IBAction)chooseColorButtonTapped:(id)sender;
@end
