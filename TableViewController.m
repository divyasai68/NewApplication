//
//  TableViewController.m
//  NewApplication
//
//  Created by Divya sai Mekala on 7/20/16.
//  Copyright © 2016 Divya. All rights reserved.
//

#import "TableViewController.h"
@interface TableViewController ()
@end

@implementation TableViewController

@synthesize view1;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    view1= [[UITableView alloc] initWithFrame:self.view.frame];
    view1.delegate=self;
    view1.dataSource=self;
    [self.view addSubview:view1];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellId  = @"ListCell";

       UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];

    cell.textLabel.text = [NSString stringWithFormat:@"Table %ld",indexPath.row];
    return cell;
}

@end
