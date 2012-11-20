//
//  KMViewController.m
//  ScrollingOnSix
//
//  Created by Kim Hunter on 10/11/12.
//  Copyright (c) 2012 Kim Hunter. All rights reserved.
//

#import "KMViewController.h"

@interface KMViewController ()

@end

@implementation KMViewController

- (void)loadView
{
	UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 768.0, 1024.0)];
	[containerView setBackgroundColor:[UIColor lightGrayColor]];
	
	UIScrollView *leftScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 364.0f, 1004.0f)];
	[leftScrollView setBackgroundColor:[UIColor scrollViewTexturedBackgroundColor]];
	[leftScrollView setShowsVerticalScrollIndicator:YES];
	[leftScrollView setBounces:YES];
	[leftScrollView setContentSize:CGSizeMake(364.0f, 1512.0f)];
	[containerView addSubview:leftScrollView];

	UIScrollView *leftSubScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(10.0f, 236.0f, 344.0f, 472.0f)];
	[leftSubScrollView setBackgroundColor:[[UIColor purpleColor] colorWithAlphaComponent:0.6]];
	[leftSubScrollView setShowsVerticalScrollIndicator:YES];
	[leftSubScrollView setBounces:YES];
	[leftSubScrollView setIndicatorStyle:UIScrollViewIndicatorStyleWhite];
	[leftSubScrollView setContentSize:CGSizeMake(344.0f, 1024.0f)];
	[leftScrollView addSubview:leftSubScrollView];

	UIScrollView *rightScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(394.0f, 10.0f, 364.0f, 1004.0f)];
	[rightScrollView setBackgroundColor:[UIColor scrollViewTexturedBackgroundColor]];
	[rightScrollView setShowsVerticalScrollIndicator:YES];
	[rightScrollView setBounces:YES];
	[rightScrollView setContentSize:CGSizeMake(364.0f, 1512.0f)];
	[containerView addSubview:rightScrollView];
	
	UIScrollView *rightSubScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(10.0f, 236.0f, 344.0f, 472.0f)];
	[rightSubScrollView setBackgroundColor:[[UIColor orangeColor] colorWithAlphaComponent:0.6]];
	[rightSubScrollView setShowsVerticalScrollIndicator:YES];
	[rightSubScrollView setBounces:NO];
	[rightSubScrollView setIndicatorStyle:UIScrollViewIndicatorStyleWhite];
	[rightSubScrollView setContentSize:CGSizeMake(344.0f, 1024.0f)];
	[rightScrollView addSubview:rightSubScrollView];
	
    [self setView:containerView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
