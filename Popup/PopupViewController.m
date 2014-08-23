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
  [super viewDidLoad];
  // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)close:(id)sender
{
  [UIView animateWithDuration:0.2f
                   animations:^{
                     self.view.alpha = 0.2f;
                   }
                   completion:^(BOOL finished){
                     [self.view removeFromSuperview];
                     self.view.alpha = 1.f;
                   }];
}

@end
