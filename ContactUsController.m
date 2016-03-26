//
//  ContactUsController.m
//  WineGuide1.1
//
//  Created by Jean Raymond Daher on 9/28/13.
//  Copyright (c) 2013 Jean Raymond Daher. All rights reserved.
//

#import "ContactUsController.h"
//#import "Bottle.h"


@interface ContactUsController ()

@end

@implementation ContactUsController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
   _pic2.image = [UIImage imageNamed:@"contactus.jpg"];
    
   // Bottle *a=[Bottle new];
    //a.name=@"awd";
    //a.ID=@"wadaw";
    //a.print;
    
    
       [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_pic2 release];
    [super dealloc];
}
@end
