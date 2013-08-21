//
//  ViewController.m
//  demoScaleView
//
//  Created by Roger on 13/8/21.
//  Copyright (c) 2013年 com.ChunChiWang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView *view;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    view = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 50, 50)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnChangeViewSize:(id)sender {
    int scale = 2;
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionAllowAnimatedContent animations:^{
            CGRect rect = CGRectMake(100, 100, 50*scale, 50*scale);
            view.frame = rect;
    } completion:^(BOOL finished) {
        sleep(0.5);
        [UIView animateWithDuration:0.5 animations:^{
            CGRect rect = CGRectMake(100, 100, 50, 50);
            view.frame = rect;
        }];
    }];
}

@end
