//
//  AddItemViewController.h
//  GBG Favorite List
//
//  Created by Mohammad Farzane on 2019-02-16.
//  Copyright © 2019 Mohammad Farzane. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol AddItemViewControllerDelegate<NSObject>
-(void)didSaveNewTodo: (NSString *)todoText;


@end
NS_ASSUME_NONNULL_BEGIN

@interface AddItemViewController : UIViewController

@property (nonatomic,strong) id <AddItemViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *name;

@property (nonatomic) NSMutableArray *array;



- (IBAction)cancel:(id)sender;


- (IBAction)save:(id)sender;




@end

NS_ASSUME_NONNULL_END
