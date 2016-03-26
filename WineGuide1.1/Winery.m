//
//  Winery.m
//  WineGuide1.1
//
//  Created by Jean Raymond Daher on 9/28/13.
//  Copyright (c) 2013 Jean Raymond Daher. All rights reserved.
//

#import "Winery.h"

@implementation Winery

@synthesize number,name,location,mission,info,website,email,phone;


-(void)print{
    NSLog(@"Winery number: %i",number);
    NSLog(@"Winery name: %@",name);
    NSLog(@"Winery location: %@",location);
    NSLog(@"Winery mission: %@",mission);
    NSLog(@"Winery info: %@",info);
    NSLog(@"Winery website: %@",website);
    NSLog(@"Winery email: %@",email);
    NSLog(@"Winery phone: %@",phone);

}

-(NSString *)getName{
    return name;
}
-(NSString *)getLocation{
    return location;
}
-(NSString *)getMission{
    return mission;
}
-(int)getNumber{
    return number;
}
-(NSString *)getInfo{
    return info;
}
-(NSString *)getWebsite{
    return website;
}
-(NSString *)getEmail{
    return email;
}
-(NSString *)getPhone{
    return phone;
}



@end
