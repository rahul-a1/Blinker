//
//  ViewController.h
//  Blinker
//
//  Created by Rahul Mr. Dhiman on 10/23/13.
//  Copyright (c) 2013 Rahul Dhiman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate, UITextFieldDelegate>
{
    
    IBOutlet UITableView *tbl_VIN;
    IBOutlet UITableView *tbl_condition;
    NSMutableArray *arr_condition;
    NSMutableArray *arr_VIN;

}
- (IBAction)BtnConditionClicked:(id)sender;
- (IBAction)BtnVINClicked:(id)sender;

@end
