//
//  TableViewController.h
//  GBG Favorite List
//
//  Created by Mohammad Farzane on 2019-02-15.
//  Copyright © 2019 Mohammad Farzane. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewController : UITableViewController {
    
    NSMutableArray *dataSelect;
    
    NSArray *itemNames;
    NSArray *Brand;
    NSArray *Image;

    
}

-(void) actionAddItem:(NSMutableDictionary *) myDictionary;



@end
NS_ASSUME_NONNULL_END
