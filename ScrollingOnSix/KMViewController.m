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

- (UIScrollView *)scrollViewWithBackground:(UIColor *)color andContentSize:(CGSize)contentSize
{
    

    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectZero];
    scrollView.backgroundColor = color;
    scrollView.contentSize = contentSize;
    scrollView.showsVerticalScrollIndicator = YES;
    
    UIView *footerView = [[UIView alloc] initWithFrame:CGRectMake(0.0, contentSize.height - 20.0, contentSize.width, 20.0)];
    footerView.backgroundColor = [UIColor grayColor];
    [scrollView addSubview:footerView];
    
    return scrollView;
}

- (void)loadView
{
    UIScrollView *mainScrollView = [self scrollViewWithBackground:[UIColor underPageBackgroundColor] andContentSize:CGSizeMake(320.0f, 1200.0f)];

    UIScrollView *first = [self scrollViewWithBackground:[UIColor viewFlipsideBackgroundColor] andContentSize:CGSizeMake(240.0, 600.0)];
    first.frame = CGRectMake(0.0, 4.0, 240.0, 400.0);
    first.indicatorStyle = UIScrollViewIndicatorStyleWhite;
    [mainScrollView addSubview:first];
    
    self.view = mainScrollView;
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
