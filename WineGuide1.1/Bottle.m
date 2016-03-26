//
//  Bottle.m
//  WineGuide1.1
//
//  Created by Jean Raymond Daher on 9/28/13.
//  Copyright (c) 2013 Jean Raymond Daher. All rights reserved.
//

#import "Bottle.h"

@implementation Bottle

@synthesize iD,name,type,year,price,description,make;


-(void)print{
    NSLog(@"Bottle id: %@",iD);
    NSLog(@"Bottle name: %@",name);
    NSLog(@"Bottle type: %@",type);
    NSLog(@"Bottle price: %f",price);
    NSLog(@"Bottle description: %@",description);
    NSLog(@"Bottle make: %@",make);
    NSLog(@"Bottle year: %@",year);

}

-(NSString *)getID{
    return iD;
}
-(NSString *)getName{
    return name;
}
-(NSString *)getType{
    return type;
}
-(double)getPrice{
    return price;
}
-(NSString *)getDescription{
    return description;
}
-(NSString *)getMake{
    return make;
}
-(NSString *)getYear{
    return year;
}



@end
