//
//  ViewController.m
//  PassValueByDelegate
//
//  Created by 唐韧 on 12-8-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "UserEntity.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize nameLabel;
@synthesize ageLabel;
@synthesize gendarLabel;

//实现协议，在第一个窗口显示在第二个窗口输入的值，类似Android中的onActivityResult方法
-(void)passValue:(UserEntity *)value
{
    self.nameLabel.text = value.userName;
    self.ageLabel.text = [NSString stringWithFormat:@"%d",value.age];
    self.gendarLabel.text = value.gendar;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"First";
    
}

- (void)viewDidUnload
{
    [self setNameLabel:nil];
    [self setAgeLabel:nil];
    [self setGendarLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [nameLabel release];
    [ageLabel release];
    [gendarLabel release];
    [super dealloc];
}

//点击进入第二个窗口的方法
- (IBAction)openBtnClicked:(id)sender {
    SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:[NSBundle mainBundle]];
    //设置第二个窗口中的delegate为第一个窗口的self
    secondView.delegate = self;
    
    [self.navigationController pushViewController:secondView animated:YES];
    [secondView release];
}
@end
