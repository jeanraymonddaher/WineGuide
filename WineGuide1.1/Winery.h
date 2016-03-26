//
//  Winery.h
//  WineGuide1.1
//
//  Created by Jean Raymond Daher on 9/28/13.
//  Copyright (c) 2013 Jean Raymond Daher. All rights reserved.
//

@interface Winery : NSObject {
     int number;
	NSString *name;
	NSString *location;
	NSString *mission;
	NSString *info;
	NSString *website;
    NSString *email;
    NSString *phone;
}


@property (nonatomic, readwrite) int number;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *location;
@property (nonatomic, copy) NSString *mission;
@property (nonatomic, copy) NSString *info;
@property (nonatomic, copy) NSString *website;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *phone;

//Instance methods.
-(NSString *) getName;
-(NSString *) getLocation;
-(NSString *) getMission;
-(NSString *) getInfo;
-(int) getNumber;
-(NSString *) getWebsite;
-(NSString *) getEmail;
-(NSString *) getPhone;
-(void)print;

@end
