//
//  ViewController.m
//  HUB
//
//  Created by wan on 16/3/4.
//  Copyright © 2016年 wan. All rights reserved.
//

#import "ViewController.h"
//#import <MBProgressHUD/MBProgressHUD.h>
#import <SVProgressHUD/SVProgressHUD.h>


@interface ViewController ()

@end

@implementation ViewController

- (IBAction)hud:(id)sender {
    
//    [SVProgressHUD show];
//    
//    SVProgressHUDMaskTypeNone = 1,  // allow user interactions while HUD is displayed
//    SVProgressHUDMaskTypeClear,     // don't allow user interactions
//    SVProgressHUDMaskTypeBlack,     // don't allow user interactions and dim the UI in the back of the HUD
//    SVProgressHUDMaskTypeGradient
    
    /*!
     *  @author wan, 16-03-04 22:03:05
     *
     *  @brief 直接在此SVGHUD不可行！！！！！MBGHUD可以
     *
     *  @since <#version number#>
     */
//    [SVProgressHUD showInfoWithStatus:@"fuck!!"];
//    [SVProgressHUD showWithStatus:@"加载中" maskType:SVProgressHUDMaskTypeClear];
//    [SVProgressHUD showProgress:0.3 maskType:SVProgressHUDMaskTypeGradient];
//    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        
//        [SVProgressHUD dismiss];
//    });
    
    
    [SVProgressHUD show];
    [SVProgressHUD showSuccessWithStatus:@"success"];
    [SVProgressHUD setBackgroundColor:[UIColor orangeColor]];
//    [SVProgressHUD setForegroundColor:[UIColor greenColor]];
    
    [SVProgressHUD showErrorWithStatus:@"err"];
//    [SVProgressHUD popActivity];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        // time-consuming task
        sleep(3000);
        dispatch_async(dispatch_get_main_queue(), ^{
            
             [SVProgressHUD showErrorWithStatus:@"err"];
//            [SVProgressHUD dismiss];
        });
    });
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];

//    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    
//    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
//    hud.labelText =@"玩命加载中...";
//
//    MBProgressHUDModeDeterminate,
//    /** Progress is shown using a horizontal progress bar */
//    MBProgressHUDModeDeterminateHorizontalBar,
//    /** Progress is shown using a ring-shaped progress view. */
//    MBProgressHUDModeAnnularDeterminate,
//    /** Shows a custom view */
//    MBProgressHUDModeCustomView,
//    /** Shows only labels */
//    MBProgressHUDModeText
//    hud.mode = MBProgressHUDModeIndeterminate;
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        
//        [hud hide:YES];
//    });
//
//    [hud hide:YES afterDelay:3];
//    [MBProgressHUD hideHUDForView:self.view animated:YES];
    
//    [SVProgressHUD showWithStatus:@"Loading..."];
//    [SVProgressHUD showInfoWithStatus:@"加载中。。。"];
    
    
    [SVProgressHUD show];
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [SVProgressHUD dismiss];
    });
    
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        
//        sleep(3000);
//        dispatch_async(dispatch_get_main_queue(), ^{
//            
//            [SVProgressHUD dismiss];
//        });
//    });
    
}


- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    
//    [SVProgressHUD show];
//    
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        dispatch_async(dispatch_get_main_queue(), ^{
//            
//            [SVProgressHUD dismiss];
//        });
//    });
    
}

@end
