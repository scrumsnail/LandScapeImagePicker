//
//  UIImagePickerController+LandScapeImagePicker.h
//  WuCMusic
//
//  Created by allthings_LuYD on 16/6/12.
//  Copyright © 2016年 allthings_LuYD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImagePickerController (LandScapeImagePicker)
- (BOOL)shouldAutorotate;
- (NSUInteger)supportedInterfaceOrientations;

@end
