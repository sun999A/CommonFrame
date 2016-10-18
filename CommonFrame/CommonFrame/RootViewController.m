//
//  RootViewController.m
//  CommonFrame
//
//  Created by Snail iOS on 16/10/18.
//  Copyright © 2016年 Feiyu iOS. All rights reserved.
//

#import "RootViewController.h"
#import "KeyboardFitScrollView.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    KeyboardFitScrollView *scrollView = [[KeyboardFitScrollView alloc] initWithFrame:self.view.frame];
    scrollView.backgroundColor = [UIColor grayColor];
    scrollView.contentSize = CGSizeMake(0, 0);
    
    UITextField *textFieldOne=[[UITextField alloc] initWithFrame:CGRectMake(10, 200, 300, 50)];
    textFieldOne.backgroundColor = [UIColor orangeColor];
    [scrollView addSubview:textFieldOne];
    
    UITextField *textFieldTwo=[[UITextField alloc] initWithFrame:CGRectMake(10, 400, 300, 50)];
    textFieldTwo.backgroundColor = [UIColor orangeColor];
    [scrollView addSubview:textFieldTwo];
    
    UITextField *textFieldThree=[[UITextField alloc] initWithFrame:CGRectMake(10, 500, 300, 50)];
    textFieldThree.backgroundColor=[UIColor orangeColor];
    [scrollView addSubview:textFieldThree];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(10, 600, 300, 50);
    button.backgroundColor = [UIColor redColor];
    [scrollView addSubview:button];
    
    [self.view addSubview:scrollView];
    
    [scrollView autoContentSizeWithLastView:button isNeedPopkeybouard:YES];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
