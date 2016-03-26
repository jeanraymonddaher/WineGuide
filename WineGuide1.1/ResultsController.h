//
//  ResultsController.h
//  WineGuide
//
//  Created by Jean Raymond Daher on 10/2/13.
//  Copyright (c) 2013 Jean Raymond Daher. All rights reserved.
//

#import "ViewController.h"

@interface ResultsController : ViewController
<UIPickerViewDelegate,UIPickerViewDataSource>
{
    
    
  
    IBOutlet UIImageView *picture;
    
    IBOutlet UITextView *text;
    
}

@property (retain, nonatomic) IBOutlet UIPickerView *picker;

//@property (strong,nonatomic)NSArray *characters;
@end
