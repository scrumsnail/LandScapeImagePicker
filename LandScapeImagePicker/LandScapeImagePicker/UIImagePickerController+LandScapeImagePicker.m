//
//  UIImagePickerController+LandScapeImagePicker.m
//  WuCMusic
//
//  Created by allthings_LuYD on 16/6/12.
//  Copyright © 2016年 allthings_LuYD. All rights reserved.
//

#import "UIImagePickerController+LandScapeImagePicker.h"

@implementation UIImagePickerController (LandScapeImagePicker)
- (BOOL)shouldAutorotate {
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscape;
}

@end
