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
#import "TableViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    FBSDKLoginButton  *loginBtn =[[FBSDKLoginButton alloc]init];
    loginBtn.center=self.view.center;
    [self.view addSubview:loginBtn];
    
    UIButton *button=[[UIButton alloc]initWithFrame:CGRectMake(160, 220, 80, 30)];

    
    
    button.backgroundColor=[UIColor orangeColor];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickEvent:)forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    

    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)clickEvent:(id)sender
{
    TableViewController  *table =[[TableViewController alloc]init];
    [self.navigationController pushViewController:table animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
