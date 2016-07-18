//
//  ViewController.m
//  NewApplication
//
//  Created by Divya sai Mekala on 7/14/16.
//  Copyright © 2016 Divya. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface ViewController ()

@end

@implementation ViewController





- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    FBSDKLoginButton  *loginBtn =[[FBSDKLoginButton alloc]init];
    UIButton *Button=[[UIButton alloc]initWithFrame:CGRectMake(50, 300, 80, 30)];
    [self.view addSubview:Button];
    
    Button.backgroundColor=[UIColor blueColor];
    [Button setTitle:@"" forState:UIControlStateNormal];
    
    
    
    loginBtn.center=self.view.center;
    [self.view addSubview:loginBtn];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
