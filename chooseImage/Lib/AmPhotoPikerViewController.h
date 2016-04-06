//
//  AmPhotoPikerViewController.h
//  chooseImage
//
//  Created by apple on 16/3/29.
//  Copyright © 2016年 chooseImage. All rights reserved.
//

#import "ViewController.h"
#import "AmPhotoHeader.h"

@interface AmPhotoPikerViewController : ViewController

/** 
    可以选择的 最大数量。默认为9
 */
@property (nonatomic, assign) NSInteger maxCount;

@property (nonatomic, weak) id<AmPhotoDidSelectedDelegate> selecteDelegate;

@end



