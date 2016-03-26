//
//  SearchController.h
//  WineGuide
//
//  Created by Jean Raymond Daher on 9/30/13.
//  Copyright (c) 2013 Jean Raymond Daher. All rights reserved.
//

#import "ViewController.h"
 
Bottle *Results[300];
@interface SearchController : ViewController
{
    IBOutlet UILabel *countertype;
    IBOutlet UISlider *slidertype;
    
    IBOutlet UILabel *counteryear;
    IBOutlet UISlider *slideryear;
    
    IBOutlet UIImageView *pic3;
    
    IBOutlet UILabel *countermake;
    IBOutlet UISlider *slidermake;
    
    IBOutlet UILabel *counterprice;
    IBOutlet UISlider *sliderprice;
   }

- (IBAction)changeType:(id)sender;
- (IBAction)changeYear:(id)sender;
- (IBAction)changeMake:(id)sender;
- (IBAction)find:(id)sender;
- (IBAction)changePrice:(id)sender;
@end
