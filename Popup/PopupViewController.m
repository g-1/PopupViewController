//
//  TestViewController.m
//  Popup
//
//  Created by タカ on 2014/08/23.
//  Copyright (c) 2014年 Taka. All rights reserved.
//

#import "PopupViewController.h"

@interface PopupViewController ()

- (IBAction)close:(id)sender;

@end

@implementation PopupViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  // Do any additional setup after loading the view from its nib.
  self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)close:(id)sender
{
  [self dismissViewControllerAnimated:YES completion:nil];
}

@end
