//
//  AddItemViewController.m
//  GBG Favorite List
//
//  Created by Mohammad Farzane on 2019-02-16.
//  Copyright © 2019 Mohammad Farzane. All rights reserved.
//

#import "AddItemViewController.h"


@interface AddItemViewController ()





@end

@implementation AddItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)cancel:(id)sender {
    
    
    
  [  self dismissViewControllerAnimated:true completion:nil];
    }


- (IBAction)save:(id)sender {
    
    if(![self.name.text isEqualToString:@""]){
        [self.array addObject:self.name.text];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
     [  self dismissViewControllerAnimated:true completion:nil];
    
    
}
@end
