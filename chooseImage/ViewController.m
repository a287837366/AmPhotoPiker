//
//  ViewController.m
//  chooseImage
//
//  Created by apple on 16/3/29.
//  Copyright © 2016年 chooseImage. All rights reserved.
//

#import "ViewController.h"
#import "AmPhotoHeader.h"
#import "AmPhotoPikerViewController.h"

@interface ViewController () <AmPhotoDidSelectedDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

-(void)didSelectedAmPhoto:(NSMutableArray *)photoArray{

    NSLog(@"   %@   ", photoArray);
    
}

- (IBAction)testclick:(id)sender {
    
    AmPhotoPikerViewController *piker = [[AmPhotoPikerViewController alloc] init];
    piker.selecteDelegate = self;
    [self presentViewController:piker animated:YES completion:nil];
}

@end
