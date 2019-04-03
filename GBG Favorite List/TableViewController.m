//
//  TableViewController.m
//  GBG Favorite List
//
//  Created by Mohammad Farzane on 2019-02-15.
//  Copyright © 2019 Mohammad Farzane. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "DetailViewController.h"
#import "AddItemViewController.h"
@interface TableViewController () <AddItemViewControllerDelegate>
@end

@implementation TableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
  

    
  //  self.view.backgroundColor = [UIColor blackColor];
    // NSString *path = [[NSBundle mainBundle] pathForResource:@"Places" ofType:@"plist"];
    //NSDictionary *dict = [[NSDictionary alloc]initWithContentsOfFile:path];
    //dataSelect = dict [@"Places"];
    UIBarButtonItem *NewButton = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    [[self navigationItem] setBackBarButtonItem:NewButton];
    
  
    
    itemNames = @[@"Yeezy 700 Salt",
              @"Yeezy 700 Inertia",
              @"Yeezy 700 Static ",
              @"FLYKNIT WHITE",
              @"Air Max 90",
              @"Yeezy 700 Wave runner",
              @"Triple S",
              @"350 Static",
              @"Vulcanized Hi Striped Red",
              @"Vulcanized",];
    
    
    Brand = @[@"Adidas Originals",
                    @"Adidas Originals",
                    @"Adidas Originals",
                    @"OffWhite X Nike",
                    @"OffWhite X Nike ",
                    @"Adidas Originals",
                    @"Balenciaga",
                    @"Adidas Originals",
                    @"OffWhite",
                    @"OffWhite X Converse",];
    
    
    Image = @[@"700salt.jpg",
              @"700in.jpg",
              @"700static.jpg",
              @"offwhite.jpg",
              @"airmax.jpg",
              @"wave.jpg",
              @"balenciaga.jpg",
              @"350st.jpg",
              @"redoff.jpg",
              @"converse.jpg",];
    
    self.tableView.rowHeight=120;
    


    
    [[self navigationItem]setBackBarButtonItem:[[UIBarButtonItem alloc]initWithTitle:@"" style:(UIBarButtonItemStylePlain) target:nil action:nil]];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return itemNames.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    int item = (int)[indexPath row];
    
    cell.cellTitle.text = itemNames[item];
    cell.cellAddress.text = Brand[item];
    cell.cellImage.image = [UIImage imageNamed:Image[item]];
    
    //NSDictionary *dict = dataSelect[indexPath.row];
  //  cell.cellTitle.text =dict[@"Title"];
    //cell.cellAddress.text =dict[@"Address"];
    //cell.cellImage.image = [UIImage imageNamed:dict[@"Image"]];

    return cell;
}








- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
    
        DetailViewController *detailView = [segue destinationViewController];
        NSIndexPath *myindexpath = [self.tableView indexPathForSelectedRow];
        
        int row = (int)[myindexpath row];
        detailView.allDetailsAboutItem = @[itemNames[row],Brand[row],Image[row]];
        
        if ([[segue identifier] isEqualToString:@"addItem"]) {
            UINavigationController *nav = segue.destinationViewController;
            AddItemViewController *addVc = nav.viewControllers[0];
            addVc.delegate=self;
            
            
    
    }
    
       
            

}

    
}

-(void) actionAddItem:(NSMutableDictionary *) myDictionary{
    
    [dataSelect addObject:myDictionary];
    [self.tableView reloadData];
}




@end
    
