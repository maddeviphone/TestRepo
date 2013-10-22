//
//  ViewController.m
//  GitHubExp
//
//  Created by vikram.b.kumar on 10/21/13.
//  Copyright (c) 2013 and. All rights reserved.
//

#import "ViewController.h"
#define BUTTON_WIDTH     50.0
#define BUTTON_HEIGHT    30.0
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"");
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    _button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _button.frame = CGRectMake((self.view.frame.size.width - BUTTON_WIDTH)/2, (self.view.frame.size.height - BUTTON_HEIGHT)/2, BUTTON_WIDTH, BUTTON_HEIGHT);
    [_button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchDown];
    [_button setTitle:@"Click" forState:UIControlStateNormal];
    [self.view addSubview:_button];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)buttonClicked
{
    NSLog(@"Button Clicked");
}

@end
