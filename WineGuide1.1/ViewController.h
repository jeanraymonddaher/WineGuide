//
//  ViewController.h
//  WineGuide1.1
//
//  Created by Jean Raymond Daher on 2/28/13.
//  Copyright (c) 2013 Jean Raymond Daher. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>
#import "Bottle.h"
#import "Winery.h"
#import "AppDelegate.h"

Winery *Wineries[30];
Bottle *Bottles[300];

@interface ViewController : UIViewController
{
    
   
	sqlite3	*db;    
    IBOutlet UIImageView *pic;
   

}
//@property (atomic, readwrite) int e;


-(NSString *) filePath;
//-(void)openDB;

@end
