//
//  ViewController.m
//  AutoExpandingUITextView
//
//  Created by Steven Books on 3/2/13.
//  Copyright (c) 2013 Steven Books. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textView;

- (void)viewDidLoad{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor grayColor]];
    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(30,10,250,20)];
    self.textView.delegate = self;
    [self.view addSubview:self.textView];
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

- (void)textViewDidChange:(UITextView *)txtView{
    float height = txtView.contentSize.height;
    [UITextView beginAnimations:nil context:nil];
    [UITextView setAnimationDuration:0.5];
    
    CGRect frame = txtView.frame;
    frame.size.height = height + 10.0; //Give it some padding
    txtView.frame = frame;
    [UITextView commitAnimations];
}

@end
