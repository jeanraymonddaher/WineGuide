//
//  Bottle.h
//  WineGuide1.1
//
//  Created by Jean Raymond Daher on 9/28/13.
//  Copyright (c) 2013 Jean Raymond Daher. All rights reserved.
//

@interface Bottle : NSObject {
    NSString *iD;
	NSString *name;
	NSString *type;
	NSString *year;
	double price;
	NSString *description;
    NSString *make;
}

@property (nonatomic, copy) NSString *iD;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *year;
@property (nonatomic, readwrite) double price;
@property (nonatomic, copy) NSString *description;
@property (nonatomic, copy) NSString *make;


//Instance methods.
-(NSString *) getID;
-(NSString *) getName;
-(NSString *) getType;
-(NSString *) getYear;
-(double) getPrice;
-(NSString *) getDescription;
-(NSString *) getMake;
-(void)print;

@end
