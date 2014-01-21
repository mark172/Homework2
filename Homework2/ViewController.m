//
//  ViewController.m
//  Homework2
//
//  Created by Mark Evangelista on 1/17/14.
//  Copyright (c) 2014 Mark Evangelista. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setBackgroundColor];
    

    
    [self disaplyHelpLable];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) disaplyHelpLable
{
    UILabel *help = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 300, 100)];
    help.text = @"Touch screen anywhere to see Luke.";
    help.font = [UIFont systemFontOfSize:14];
    help.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:help];
}

- (void) setBackgroundColor
{
    self.view.backgroundColor = [UIColor lightGrayColor];
}

- (void) displayImage
{
    UIImage *lukeTheCat =  [UIImage imageNamed:@"Luke1.jpg"];
    creatImageView = [[UIImageView alloc] initWithImage:lukeTheCat];
    creatImageView.transform = CGAffineTransformMakeScale(0.5, 0.5);
    creatImageView.center = CGPointMake(150, 200);
    [self.view addSubview:creatImageView];
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Touched screen");
    [self displayImage];
}

@end
