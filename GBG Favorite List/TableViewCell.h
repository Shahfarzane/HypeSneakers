//
//  TableViewCell.h
//  GBG Favorite List
//
//  Created by Mohammad Farzane on 2019-02-15.
//  Copyright © 2019 Mohammad Farzane. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *cellImage;

@property (weak, nonatomic) IBOutlet UILabel *cellTitle;

@property (weak, nonatomic) IBOutlet UILabel *cellAddress;


@end

NS_ASSUME_NONNULL_END
