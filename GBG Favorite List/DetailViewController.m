//
//  DetailViewController.m
//  GBG Favorite List
//
//  Created by Mohammad Farzane on 2019-02-15.
//  Copyright © 2019 Mohammad Farzane. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.button.layer.cornerRadius = 5;
    self.navigationItem.title = self.allDetailsAboutItem[0];
    self.detailTitle.text = _allDetailsAboutItem[0];
    self.detailAddress.text = _allDetailsAboutItem[1];
    self.detailImage.image = [UIImage imageNamed:_allDetailsAboutItem[2]];
    
    


   // self.detailDescription.text = self.detailMdal[3];
    //
   
    
    
    if ([self.detailTitle.text isEqualToString:@"Yeezy 700 Salt"]) {
        
        self.detailDescription.text=@"Adidas Yeezy is a collaboration between German sportswear brand Adidas and American rapper Kanye West.";
        self.price.text=@"2999 kr";
        self.year.text=@"2018";
    }
    
    
    if ([self.detailTitle.text isEqualToString:@"Yeezy 700 Inertia"]) {
        
        self.detailDescription.text= @" The Inertia Yeezy Boost 700, priced at a whopping $300, is built on the familiar combination of leather, mesh and suede";
        self.price.text=@"2999 kr";
        self.year.text=@"2019";

    }
    
    
    if ([self.detailTitle.text isEqualToString:@"Yeezy 700 Static"]) {
        
        self.detailDescription.text=@"The Yeezy 700 Static released December 29th for $300. The Adidas Yeezy Boost 700 V2 Static is the first Yeezy 700 v2 to release to the public.";
        self.price.text=@"4999 kr";
        self.year.text=@"2018";

    }
    
    
    if ([self.detailTitle.text isEqualToString:@"FLYKNIT WHITE"]) {
        
        self.detailDescription.text=@"The OFF WHITE VaporMax is a special edition collaboration between designer Virgil Abloh’s Italian fashion label OFF WHITE and Nike.";
        self.price.text=@"1999 kr";
        self.year.text=@"2019";

    }
    
    
    if ([self.detailTitle.text isEqualToString:@"Air Max 90"]) {
        
        self.detailDescription.text=@"The long-awaited and much-rumored OFF-WHITE x Nike Air Max 90 is the next (and potentially final) chapter of Virgil Abloh and Nike’s “The Ten” to drop.";
        self.price.text=@"2550 kr";
        self.year.text=@"2017";

    }
    if ([self.detailTitle.text isEqualToString:@"Yeezy 700 Wave runner"]) {
        
        self.detailDescription.text=@"The adidas Yeezy Boost 700 Wave Runner is widely considered the main reason why the dad/chunky sole shoe trend is as popular as it is. The shoe features an upper composed of grey and black suede overlays and premium leather with blue mesh underlays and reflective heel and Three Stripe details.";
        self.price.text=@"9999 kr";
        self.year.text=@"2018";

    }
    if ([self.detailTitle.text isEqualToString:@"Triple S"]) {
        
        self.detailDescription.text=@"These “high-fashion spec” sneakers feature a triple-stacked sole with pre-distressed details throughout. The shoe size appeared embroidered on the toe, while rope laces finish off the look.";
        self.price.text=@"8999 kr";
        self.year.text=@"2019";

    }
    if ([self.detailTitle.text isEqualToString:@"350 Static"]) {
        
        self.detailDescription.text=@"Bringing a new aesthetic to the 350 V2 silhouette, transparent mesh panels have been incorporated into the weave.";
        self.price.text=@"2299 kr";
        self.year.text=@"2018";

    }
    if ([self.detailTitle.text isEqualToString:@"Vulcanized Hi Striped Red"]) {
        
        self.detailDescription.text=@"Fusing streetwear with luxury, the Off-White vulcanised striped hi top sneaker captures the essence of the label’s modus operandi.";
        self.price.text=@"2999 kr";
        self.year.text=@"2017";

    }
    if ([self.detailTitle.text isEqualToString:@"Vulcanized"]) {
        
        self.detailDescription.text=@"The deconstructed silhouette features a translucent upper and an ice blue gradient on the sole. ";
        self.price.text=@"10999kr";
        self.year.text=@"2016";

    }

    
    
    
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)directions:(id)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"https://stockx.com"] options:@{} completionHandler:nil];

}

@end
