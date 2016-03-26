//
//  ResultsController.m
//  WineGuide
//
//  Created by Jean Raymond Daher on 10/2/13.
//  Copyright (c) 2013 Jean Raymond Daher. All rights reserved.
//

#import "ResultsController.h"
#import "ViewController.h"
#import "SearchController.h"
#

@interface ResultsController ()
<UIPickerViewDelegate,UIPickerViewDataSource>

@end

int count;

@implementation ResultsController
@synthesize picker;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{     //_characters=[[NSArray alloc]
                //  initWithObjects:@"yoda",@"ob",@"sfe",@"fse" ,nil];
	// Do any additional setup after loading the view.
    count =0;
   for (int i=0;i<300;i++)
    {
        if (Results[i]!=NULL) {
            count++;
        }
    }
    NSLog(@"matching records number %i",count);
    if (count==0)
    {
        //NSLog(@"maakal");
        text.text=@"NO RESULTS FOUND :(";
        picture.image=[UIImage imageNamed:@"error.jpeg"];

        //say there is no bottles found ;
    }
   
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return count;
}


- (void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
 
    NSString *a1=@"Bottle Name : \n";
    NSString *a=  Results[row].name;
    NSString *a2=@"Bottle Type : \n";
    NSString *b=   Results[row].type;
    NSString *a3=@"Bottle Year : \n";
    NSString *c=   Results[row].year;
    int d1=   Results[row].price;
    NSString *a4=@"Bottle Price (in $) : \n";
    NSString *d = [NSString stringWithFormat:@"%d",d1];
    NSString *a5=@"Bottle Make : \n";
    NSString *e=  Results[row].make;
    NSString *a6=@"Bottle Description : \n";
    NSString *f=  Results[row].description;
    
    a1=[a1 stringByAppendingString:a];
    a2=[a2 stringByAppendingString:b];
    a3=[a3 stringByAppendingString:c];
    a4=[a4 stringByAppendingString:d];
    a5=[a5 stringByAppendingString:e];
    a6=[a6 stringByAppendingString:f];
    
    a1=[a1 stringByAppendingString:@"\n"];
    
    a2=[a2 stringByAppendingString:@"\n"];
    
    a3=[a3 stringByAppendingString:@"\n"];
    
    
    a4=[a4 stringByAppendingString:@"\n"];
    
    
    a5=[a5 stringByAppendingString:@"\n"];
    
    
    a6=[a6 stringByAppendingString:@"\n"];
    
    text.text=a1;
    text.text=[text.text stringByAppendingString: a2];
    text.text=[text.text stringByAppendingString:a3];
    text.text=[text.text stringByAppendingString:a4];
    text.text=[text.text stringByAppendingString:a5];
    text.text=[text.text stringByAppendingString:a6];
    
    // NSLog(@"%@",a1);
    
    
    //@"Bottle Name : %@ \nBottle Type : %@ \nBottle Year : %@ \nBottle Price : %@ \nBottle Make : %@ \nBottle Description : %@",a,b,c,g,e,f;
    
    //NSString *fn=@"pics\\";
    NSString *sn= Results[row].iD;
    // NSString *gn= [fn stringByAppendingString:sn];
    NSString *ln= [sn stringByAppendingString:@".png"];
    //pic.image = [UIImage imageNamed:@"main.jpg"];
    // NSLog(@"%@",ln);
    //nulll rows ? bad updating rows ?
    //
    picture.image=[UIImage imageNamed:ln];
    
    NSLog(@"%@",a);
    

    NSLog(@"selected row%ld",(long)row);
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (row==0)
    {
        NSString *a1=@"Bottle Name : \n";
        NSString *a=  Results[row].name;
        NSString *a2=@"Bottle Type : \n";
        NSString *b=   Results[row].type;
        NSString *a3=@"Bottle Year : \n";
        NSString *c=   Results[row].year;
        int d1=   Results[row].price;
        NSString *a4=@"Bottle Price (in $) : \n";
        NSString *d = [NSString stringWithFormat:@"%d",d1];
        NSString *a5=@"Bottle Make : \n";
        NSString *e=  Results[row].make;
        NSString *a6=@"Bottle Description : \n";
        NSString *f=  Results[row].description;
        
        a1=[a1 stringByAppendingString:a];
        a2=[a2 stringByAppendingString:b];
        a3=[a3 stringByAppendingString:c];
        a4=[a4 stringByAppendingString:d];
        a5=[a5 stringByAppendingString:e];
        a6=[a6 stringByAppendingString:f];
        
        a1=[a1 stringByAppendingString:@"\n"];
        
        a2=[a2 stringByAppendingString:@"\n"];
        
        a3=[a3 stringByAppendingString:@"\n"];
        
        
        a4=[a4 stringByAppendingString:@"\n"];
        
        
        a5=[a5 stringByAppendingString:@"\n"];
        
        
        a6=[a6 stringByAppendingString:@"\n"];
        
        text.text=a1;
        text.text=[text.text stringByAppendingString: a2];
        text.text=[text.text stringByAppendingString:a3];
        text.text=[text.text stringByAppendingString:a4];
        text.text=[text.text stringByAppendingString:a5];
        text.text=[text.text stringByAppendingString:a6];
        
        // NSLog(@"%@",a1);
        
        
        //@"Bottle Name : %@ \nBottle Type : %@ \nBottle Year : %@ \nBottle Price : %@ \nBottle Make : %@ \nBottle Description : %@",a,b,c,g,e,f;
        
        //NSString *fn=@"pics\\";
        NSString *sn= Results[row].iD;
        // NSString *gn= [fn stringByAppendingString:sn];
        NSString *ln= [sn stringByAppendingString:@".png"];
        //pic.image = [UIImage imageNamed:@"main.jpg"];
        // NSLog(@"%@",ln);
        //nulll rows ? bad updating rows ?
        //
        picture.image=[UIImage imageNamed:ln];
        
        NSLog(@"%@",a);
        
        
        NSLog(@"selected row%ld",(long)row);
    }
    return Results[row].name;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
   
    [picture release];
    [picker release];
    [text release];
    [super dealloc];
}

@end
