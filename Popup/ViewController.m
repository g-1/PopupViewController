//
//  ViewController.m
//  Popup
//
//  Created by タカ on 2014/08/22.
//  Copyright (c) 2014年 Taka. All rights reserved.
//

#import "ViewController.h"
#import "PopupViewController.h"

@interface ViewController ()

@property(nonatomic, strong) PopupViewController* popupViewController;

- (IBAction)popup:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  self.popupViewController = [[PopupViewController alloc] init];
  [self addChildViewController:self.popupViewController];
  [self.popupViewController didMoveToParentViewController:self];
  
  //
  //self.popupViewController.view.backgroundColor = [UIColor redColor];
  
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)popup:(id)sender
{
  [self.view addSubview:self.popupViewController.view];
  
  CGPoint center = self.popupViewController.contentView.center;
  
  UIView* view = self.popupViewController.contentView;
  
  view.transform = CGAffineTransformScale(CGAffineTransformIdentity,0.5f,0.5f);
  view.center = center;
  
  [UIView animateWithDuration:0.2
                        delay:0.0
                      options:UIViewAnimationOptionCurveEaseInOut
                   animations:^{
                     view.transform = CGAffineTransformIdentity;
                     view.center = center;
                   }
                   completion:nil];
  
}

@end
