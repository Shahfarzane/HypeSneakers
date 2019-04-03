//
//  DetailViewController.h
//  GBG Favorite List
//
//  Created by Mohammad Farzane on 2019-02-15.
//  Copyright © 2019 Mohammad Farzane. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

@property(strong,nonatomic) NSArray *allDetailsAboutItem;
@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UILabel *detailTitle;
@property (weak, nonatomic) IBOutlet UILabel *detailAddress;
@property (weak, nonatomic) IBOutlet UIImageView *detailImage;
@property (weak, nonatomic) IBOutlet UITextView *detailDescription;

- (IBAction)directions:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *year;

@end

NS_ASSUME_NONNULL_END
