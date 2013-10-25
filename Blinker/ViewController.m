//
//  ViewController.m
//  Blinker
//
//  Created by Rahul Mr. Dhiman on 10/23/13.
//  Copyright (c) 2013 Rahul Dhiman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    BOOL checkCondition;
    BOOL checkVIN;
    BOOL checkCell;
    UIButton *btn_Check;
}
@end

@implementation ViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    arr_condition = [[NSMutableArray alloc] initWithObjects:@"Fair",@"Good",@"Excellent" ,nil];
    arr_VIN       = [[NSMutableArray alloc] initWithObjects:@"Enter it manually", @"Scan with my camera",nil];
    tbl_condition.hidden = YES;
    tbl_VIN.hidden       = YES;
    
    checkCondition = YES;
    checkVIN       = YES;
    checkCell      = YES;


}



- (IBAction)BtnConditionClicked:(id)sender {
    
    
    if (checkCondition==YES) {
        tbl_condition.hidden = NO;
        checkCondition= NO;
    }
    else {
    tbl_condition.hidden = YES;
        
    checkCondition =YES;
    }
}

- (IBAction)BtnVINClicked:(id)sender {
    
    if (checkVIN==YES) {
        tbl_VIN.hidden = NO;
                checkVIN  = NO;
    }
    else {
        tbl_VIN.hidden = YES;
                checkVIN  = YES;
}
}
#pragma mark TableView Data Source

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView.tag==1) {
        return 3;
    }
    else return 2;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    static NSString *cellIdentifier = @"cellID";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier ];
    
    if (cell == nil) {
        
    cell = [[UITableViewCell alloc]initWithStyle:
            UITableViewCellStyleDefault reuseIdentifier:cellIdentifier ];
        
    if (tableView.tag==1) {
        cell.textLabel.text = [arr_condition objectAtIndex:indexPath.row];
        cell.textLabel.font = [UIFont systemFontOfSize:12];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.imageView.image =[UIImage imageNamed:@"untick.png"];

        }
    if (tableView.tag==2) {
        cell.textLabel.text = [arr_VIN objectAtIndex:indexPath.row];
        cell.textLabel.font = [UIFont systemFontOfSize:12];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.imageView.image =[UIImage imageNamed:@"untick.png"];

        }
        
    }  return cell;
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath

{

    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (checkCell==YES) {
        cell.imageView.image = [UIImage imageNamed:@"tick.png"];    
    //[tableView deselectRowAtIndexPath:indexPath animated:YES];
    checkCell = NO;
    }
    else
    {
        cell.imageView.image = [UIImage imageNamed:nil];        //[tableView deselectRowAtIndexPath:indexPath animated:YES];
        checkCell = YES;

   }
}

#pragma mark TextField Delegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
}

#pragma mark TableView Delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 30.0;
    
}

@end
