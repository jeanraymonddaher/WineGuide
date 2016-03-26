//
//  ViewController.m
//  WineGuide1.1
//
//  Created by Jean Raymond Daher on 2/28/13.
//  Copyright (c) 2013 Jean Raymond Daher. All rights reserved.
//

#import "ViewController.h"
#import "Bottle.h"
#import "Winery.h"
#import "SearchController.h"

@interface ViewController()

@end



@implementation ViewController
//@synthesize e;


- (void)viewDidLoad
{

    pic.image = [UIImage imageNamed:@"search.png"];
 
    //[self openDB];
    [self linkWineriestoDb];
    [self linkBottlesToDb];
    [super viewDidLoad];
	

    // Do any additional setup after loading the view, typically from a nib.
}


- (NSString *) filePath {
    
NSString *filePath =[[NSBundle mainBundle]pathForResource:@"dbwinery" ofType:@"sqlite"];
    return filePath;
    /*
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *path = [documentsDirectory stringByAppendingPathComponent:@"dbwinery.sqlite"];
    NSLog(@"%@",path);
    return path;*/
}

/*
-(void) openDB{
    if(sqlite3_open([[self filePath]UTF8String],&db)!=SQLITE_OK)
    {
        sqlite3_close(db);
        NSLog(@"failure");
    }
    else{
        NSLog(@"Signed in to DB");
    }
    
    if (sqlite3_open([[self filePath] UTF8String], &db) == SQLITE_OK)
	{
       
		const char *sql = "SELECT * FROM Wineries where number ==2";
		
		sqlite3_stmt *searchStatement;
	
		if (sqlite3_prepare_v2(db, sql, -1, &searchStatement, NULL) == SQLITE_OK)
		{
            
			while (sqlite3_step(searchStatement) == SQLITE_ROW ){
                int i=0;
                while (i<8){
                    
                NSString *string1=Label1.text;
                NSString *x=[NSString stringWithUTF8String:(char *)sqlite3_column_text(searchStatement, i)] ;
                    
                NSString *string2=[string1 stringByAppendingFormat:@"%@,\n ",x];
               Label1.text=string2;
                    i++;}
            }

		}
        
		sqlite3_finalize(searchStatement);
	}    // show data from db
    
}*/

//create  a method that will make an array of bottles  with 290 places. each bottle info will be get from the database and added then it will loop through all
-(void)linkWineriestoDb{
//Winery *Wineries[30];
    
    
    if (sqlite3_open([[self filePath] UTF8String], &db) == SQLITE_OK)
	{
        
        
		const char *sql = "SELECT * FROM Wineries ";
		
		sqlite3_stmt *searchStatement;
        int i=0;
		if (sqlite3_prepare_v2(db, sql, -1, &searchStatement, NULL) == SQLITE_OK)
		{
            
			while (sqlite3_step(searchStatement) == SQLITE_ROW ){
                
              
               int wnumber=sqlite3_column_int(searchStatement, 0) ;
                NSString *wname=[NSString stringWithUTF8String:(char *)sqlite3_column_text(searchStatement, 1)] ;
                NSString *wlocation=[NSString stringWithUTF8String:(char *)sqlite3_column_text(searchStatement, 2)] ;
                NSString *wmission=[NSString stringWithUTF8String:(char *)sqlite3_column_text(searchStatement, 3)] ;
                NSString *winfo=[NSString stringWithUTF8String:(char *)sqlite3_column_text(searchStatement, 4)] ;
                NSString *wwebsite=[NSString stringWithUTF8String:(char *)sqlite3_column_text(searchStatement, 5)] ;
                NSString *wemail=[NSString stringWithUTF8String:(char *)sqlite3_column_text(searchStatement, 6)] ;
                  NSString *wphone=[NSString stringWithUTF8String:(char *)sqlite3_column_text(searchStatement, 7)] ;
           
                Winery *a=[Winery new];
                a.number=wnumber;
                a.name=wname;
                a.location=wlocation;
                a.mission=wmission;
                a.info=winfo;
                a.website=wwebsite;
                a.email=wemail;
                a.phone=wphone;
             ///  a.print;
                Wineries[i]=a;
                i++;
                
            }
            
		}
        //Wineries[0].print;
        		sqlite3_finalize(searchStatement);
        
        
    }
}


-(void)linkBottlesToDb{
   
    
    
    if (sqlite3_open([[self filePath] UTF8String], &db) == SQLITE_OK)
	{
    
		const char *sql = "SELECT * FROM Bottles ";
		
		sqlite3_stmt *searchStatement;
        int i=0;
		if (sqlite3_prepare_v2(db, sql, -1, &searchStatement, NULL) == SQLITE_OK)
		{
            
			while (sqlite3_step(searchStatement) == SQLITE_ROW ){
            
                
                 //   NSString *string1=Label1.text;
                //NSString stringWithFormat:@"%s"
                NSString *bid=[NSString stringWithUTF8String:(char *)sqlite3_column_text(searchStatement, 0)] ;
                 NSString *bname=[NSString stringWithUTF8String:(char *)sqlite3_column_text(searchStatement, 1)] ;
                 NSString *btype=[NSString stringWithUTF8String:(char *)sqlite3_column_text(searchStatement, 2)] ;
                   NSString *byear=[NSString stringWithUTF8String:(char *)sqlite3_column_text(searchStatement, 3)] ;
                 double bprice=sqlite3_column_double(searchStatement, 4);
                 NSString *bdescpription=[NSString stringWithUTF8String:(char *)sqlite3_column_text(searchStatement, 5)] ;
                 NSString *bmake=[NSString stringWithUTF8String:(char *)sqlite3_column_text(searchStatement, 6)] ;
                
                  //                    NSLog(@"ffs");
                  //  NSString *string2=[string1 stringByAppendingFormat:@"%@,\n ",bid];
                //    Label1.text=string2;
                    
                    Bottle *a=[Bottle new];
                    a.ID=bid;
                a.name=bname;
                a.type=btype;
                a.year=byear;
                a.price=bprice;
                a.description=bdescpription;
                a.make=bmake;
                              Bottles[i]=a;
                i++;
       
        }
            
		}
        
		sqlite3_finalize(searchStatement);

        
    }}

/*- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Make sure your segue name in storyboard is the same as this line
    if ([[segue identifier] isEqualToString:@"SmartSegue"])
    {
        // Get reference to the destination view controller
        SearchController *vc = segue.destinationViewController;
        vc.e=12;
        
        
        // Pass any objects to the view controller here, like...
        
    }
}*/
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
    [pic release];
    [super dealloc];
}
@end
