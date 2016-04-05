//
//  AmPhotoPickerAssetsViewController.m
//  chooseImage
//
//  Created by apple on 16/3/29.
//  Copyright © 2016年 chooseImage. All rights reserved.
//

#import "AmPhotoPickerAssetsViewController.h"
#import "AmToolBarView.h"
#import "AmPhotoHeader.h"
#import "AmPhotoPikerTools.h"
#import "AmPhotoAssets.h"

@interface AmPhotoPickerAssetsViewController ()<AmToolBarViewDelegate>

@property (strong, nonatomic) AmToolBarView *toolBar;
@property (strong, nonatomic) NSArray *assetsArray;


@end

@implementation AmPhotoPickerAssetsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self initView];
    
    [self getAssetsList];
}

-(void)initView{
    self.view.backgroundColor = Background_Color;
    
    [self setCancleButton];
    [self.view addSubview:self.toolBar];
}

-(void)setCancleButton{
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"取消", nil) style:UIBarButtonItemStylePlain target:self action:@selector(clickRightButton)];
    
    self.navigationItem.rightBarButtonItem = rightButton;
}

-(void)clickRightButton{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

-(void)getAssetsList{
    AmPhotoPikerTools *tools = [[AmPhotoPikerTools alloc] init];
   
    __block NSMutableArray *assetsM = [NSMutableArray array];
    __weak typeof(self) weakSelf = self;

    [tools getGroupPhotosWithGroup:self.groupModel finished:^(NSArray *assets){
        
        [assets enumerateObjectsUsingBlock:^(ALAsset *asset, NSUInteger idx, BOOL *stop) {
            
            AmPhotoAssets *amAssets = [[AmPhotoAssets alloc] init];
            amAssets.asset = asset;
            [assetsM addObject:amAssets];
            
        }];
        
        weakSelf.assetsArray = assetsM;
    }];
}

#pragma mark - AmToolBarViewDelegate
-(void)clickPreview{

}

-(AmToolBarView *)toolBar{

    if (!_toolBar) {
        
        _toolBar = [[AmToolBarView alloc] init];
        _toolBar.frame = CGRectMake(0, Screen_Height - AM_ToolBarH, Screen_Width, AM_ToolBarH);
        _toolBar.delegate = self;
        
    }
    
    return _toolBar;
}

@end
