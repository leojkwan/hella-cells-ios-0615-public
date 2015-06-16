//
//  FISHellaMasterTableViewController.m
//  HellaCells
//
//  Created by Leo Kwan on 6/15/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import "FISHellaMasterTableViewController.h"

@interface FISHellaMasterTableViewController ()


@end

@implementation FISHellaMasterTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.numbersArray = [[NSMutableArray alloc] init];
//    [self.view setAccessibilityIdentifier:@"Table"]; // this line screws it up
    for (NSUInteger i = 1; i <= 100; i++) {
        [self.numbersArray addObject:[NSString stringWithFormat:@"%ld", i]];
         }
        };
    

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    FISHellaDetailViewController *destinationVC = segue.destinationViewController;
    
    UITableViewCell *tappedCell = sender;

    destinationVC.numberAtRow = tappedCell.textLabel.text;
    
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.numbersArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    
UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WordCellReuseID" forIndexPath:indexPath];
    
//    NSUInteger cellRow = indexPath.row;
    
    NSString *numberForThisRow = self.numbersArray[indexPath.row];
    
    cell.textLabel.text = numberForThisRow;
    
    
    
    return cell;
}

@end
