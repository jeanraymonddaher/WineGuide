//
//  SearchController.m
//  WineGuide
//
//  Created by Jean Raymond Daher on 9/30/13.
//  Copyright (c) 2013 Jean Raymond Daher. All rights reserved.
//

#import "SearchController.h"
#import "ViewController.h"

@interface SearchController ()

@end

@implementation SearchController
//@synthesize e;


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
  //  NSLog(@"%i",e);
    slidertype.minimumValue=0;
    slidertype.maximumValue=4;
    slideryear.minimumValue=0;
    slideryear.maximumValue=19;
    slidermake.minimumValue=0;
    slidermake.maximumValue=27;
    sliderprice.minimumValue=0;
    sliderprice.maximumValue=28;
    pic3.image=[UIImage imageNamed:@"main.jpg"];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
   // [countertype release];
   // [slidertype release];
    [counteryear release];
    [slideryear release];
    [countermake release];
    [slidermake release];
    [counterprice release];
    [sliderprice release];
    [pic3 release];
    [super dealloc];
}
- (IBAction)changeType:(id)sender {
    
  

  //  NSLog(@"value of slider is%f",slidertype.value);
    if(slidertype.value>0&&slidertype.value<1)
        countertype.text=@"Any";
 if(slidertype.value>1&&slidertype.value<2)
     countertype.text=@"White";
    if(slidertype.value>2&&slidertype.value<3)
        countertype.text=@"Red";
    if(slidertype.value>3&&slidertype.value<4)
        countertype.text=@"Rose";
    if(slidertype.value==4)
        countertype.text=@"Sweet";
    
}

- (IBAction)changeYear:(id)sender {
    if(slideryear.value>0&&slideryear.value<1)
        counteryear.text=@"Any";
    if(slideryear.value>1&&slideryear.value<2)
        counteryear.text=@"1985";
    if(slideryear.value>2&&slideryear.value<3)
        counteryear.text=@"1988";
    if(slideryear.value>3&&slideryear.value<4)
        counteryear.text=@"1996";
    if(slideryear.value>4&&slideryear.value<5)
        counteryear.text=@"1997";
    if(slideryear.value>5&&slideryear.value<6)
        counteryear.text=@"1998";
    if(slideryear.value>6&&slideryear.value<7)
        counteryear.text=@"1999";
    if(slideryear.value>7&&slideryear.value<8)
        counteryear.text=@"2000";
    if(slideryear.value>8&&slideryear.value<9)
        counteryear.text=@"2001";
    if(slideryear.value>9&&slideryear.value<10)
        counteryear.text=@"2002";
    if(slideryear.value>10&&slideryear.value<11)
        counteryear.text=@"2003";
    if(slideryear.value>11&&slideryear.value<12)
        counteryear.text=@"2004";
    if(slideryear.value>12&&slideryear.value<13)
        counteryear.text=@"2005";
    if(slideryear.value>13&&slideryear.value<14)
        counteryear.text=@"2006";
    if(slideryear.value>14&&slideryear.value<15)
        counteryear.text=@"2007";
    if(slideryear.value>15&&slideryear.value<16)
        counteryear.text=@"2008";
    if(slideryear.value>16&&slideryear.value<17)
        counteryear.text=@"2009";
    if(slideryear.value>17&&slideryear.value<18)
        counteryear.text=@"2010";
    if(slideryear.value>18&&slideryear.value<19)
        counteryear.text=@"2011";
    if(slideryear.value==19)
        counteryear.text=@"2012";

    
}

- (IBAction)changeMake:(id)sender {
    if(slidermake.value>0&&slidermake.value<1)
        countermake.text=@"Any";
    if(slidermake.value>1&&slidermake.value<2)
        countermake.text=@"Adyar";
    if(slidermake.value>2&&slidermake.value<3)
        countermake.text=@"Atibaia";
    if(slidermake.value>3&&slidermake.value<4)
        countermake.text=@"Aurora";
    if(slidermake.value>4&&slidermake.value<5)
            countermake.text=@"BatrounMountains";
    if(slidermake.value>5&&slidermake.value<6)
        countermake.text=@"CaveKouroum";
    if(slidermake.value>6&&slidermake.value<7)
        countermake.text=@"ChateauBelleVue";
    if(slidermake.value>7&&slidermake.value<8)
        countermake.text=@"ChateauFakra";
    if(slidermake.value>8&&slidermake.value<9)
        countermake.text=@"ChateauHeritage";
    if(slidermake.value>9&&slidermake.value<10)
        countermake.text=@"ChateauKa";
    if(slidermake.value>10&&slidermake.value<11)
        countermake.text=@"ChateauKefraya";
    if(slidermake.value>11&&slidermake.value<12)
        countermake.text=@"ChateauKhoury";
    if(slidermake.value>12&&slidermake.value<13)
        countermake.text=@"ChateauKsara";
    if(slidermake.value>13&&slidermake.value<14)
        countermake.text=@"ChateauMarsyas";
    if(slidermake.value>14&&slidermake.value<15)
        countermake.text=@"ChateauMusar";
    if(slidermake.value>15&&slidermake.value<16)
        countermake.text=@"ChateauQanafar";
    if(slidermake.value>16&&slidermake.value<17)
        countermake.text=@"ChateauStThomas";
    if(slidermake.value>17&&slidermake.value<18)
        countermake.text=@"ClosDeCana";
    if(slidermake.value>18&&slidermake.value<19)
        countermake.text=@"CoteauxDeBotrys";
    if(slidermake.value>19&&slidermake.value<20)
        countermake.text=@"CoteauxDuLiban";
    if(slidermake.value>20&&slidermake.value<21)
        countermake.text=@"DomaineDeBaal";
    if(slidermake.value>21&&slidermake.value<22)
        countermake.text=@"DomaineDesTourelles";
    if(slidermake.value>22&&slidermake.value<23)
        countermake.text=@"DomaineWardy";
    if(slidermake.value>23&&slidermake.value<24)
        countermake.text=@"IrisDomaine";
    if(slidermake.value>24&&slidermake.value<25)
        countermake.text=@"Ixsir";
    if(slidermake.value>25&&slidermake.value<26)
        countermake.text=@"KaramWinery";
    if(slidermake.value>26&&slidermake.value<27)
        countermake.text=@"Massaya";
    if(slidermake.value==27)
        countermake.text=@"NabiseMontLiban";


    
}

- (IBAction)find:(id)sender {
    NSString *type=countertype.text;
        //if type is any or year or make set them to empty
    NSString *year=counteryear.text;
    NSString *make=countermake.text;
    // NSString *t1=@"<";
    // NSString *price=[t1 stringByAppendingString:counterprice.text];
    NSString *price=counterprice.text;
   
    int pricen = [price intValue];
  
    for(int i=0;i<300;i++){
        Results[i]=NULL;
    }
    
    for(int i=0,o=0;i<300;i++)
    {//GET RID OF WHITE SPACES IN DATABASE THEN RECHECK if any
                      year=counteryear.text;
        type=countertype.text;

        make=countermake.text;
       // NSLog(@"%@",Bottles[i].iD);
     double b=Bottles[i].price;
     // NSLog(@"%i%i",az,pricefinal);
      /*  if(az<=pricefinal)
        {NSLog(@"a");}
         if([Bottles[i].type isEqualToString: type])
         {NSLog(@"b");}
        if([Bottles[i].year isEqualToString: year])
        {NSLog(@"c");}
        if([Bottles[i].make isEqualToString: make])
        {NSLog(@"d");}
*/
        
        if([type isEqualToString:@"Any"])
            type=Bottles[i].type;
        if([year isEqualToString:@"Any"])
            year=Bottles[i].year;
        if([make isEqualToString:@"Any"])
            make=Bottles[i].make;
        int ab=-1;
        
        
        
        NSString *strOne = Bottles[i].year;
        NSString *strTwo = year;               NSString *string = strOne;
        if ([string rangeOfString:strTwo].location == NSNotFound) {
           ab=-1 ;
        } else {
          //  NSLog(@"MATCH");
            ab=0;
        }
    
        if(ab==0 && [Bottles[i].type isEqualToString:type]  && [Bottles[i].make isEqualToString: make] && b<=pricen)
        {
            
        //    NSLog(@"%@",Bottles[i].name);
            Results[o]=Bottles[i];
                o++;}
       //  NSLog(@"%i",o);
      //  NSLog(@"%@%@",Bottles[i].type,type);
      
    }
    
  //  NSLog(@"eosifef %@",Results[0].type);
   }

- (IBAction)changePrice:(id)sender {

    if(sliderprice.value>7&&sliderprice.value<8)
        counterprice.text=@"10$";
    if(sliderprice.value>8&&sliderprice.value<9)
            counterprice.text=@"15$";
    if(sliderprice.value>13&&sliderprice.value<14)
        counterprice.text=@"16$";

    if(sliderprice.value>17&&sliderprice.value<18)
        counterprice.text=@"20$";
       if(sliderprice.value>20&&sliderprice.value<21)
        counterprice.text=@"26$";
    if(sliderprice.value>21&&sliderprice.value<22)
            counterprice.text=@"30$";

    if(sliderprice.value>23&&sliderprice.value<24)
        counterprice.text=@"35$";
       if(sliderprice.value>25&&sliderprice.value<26)
        counterprice.text=@"40$";
        if(sliderprice.value>27&&sliderprice.value<28)
            counterprice.text=@"60$";
    
    if(sliderprice.value==28)
        counterprice.text=@"70$";
    
}
@end
