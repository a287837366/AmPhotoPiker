//
//  AmPhotoGroupViewController.h
//  chooseImage
//
//  Created by apple on 16/3/29.
//  Copyright © 2016年 chooseImage. All rights reserved.
//

#import "ViewController.h"

@protocol AmPhotoGroupViewDelegate;

@interface AmPhotoGroupViewController : ViewController

@property (nonatomic, assign) id<AmPhotoGroupViewDelegate> delegate;

//可选择最大数量
@property (nonatomic, assign) NSInteger maxCount;

@end


@protocol AmPhotoGroupViewDelegate <NSObject>

-(void)goBack;

@end
