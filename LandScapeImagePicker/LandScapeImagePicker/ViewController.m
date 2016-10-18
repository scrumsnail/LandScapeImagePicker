//
//  ViewController.m
//  LandScapeImagePicker
//
//  Created by allthings_LuYD on 2016/10/18.
//  Copyright © 2016年 scrum_snail. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)open:(id)sender {
    [self showImagePicker:UIImagePickerControllerSourceTypePhotoLibrary];
}
- (void)showImagePicker:(UIImagePickerControllerSourceType)type{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"changeRotate" object:@"1"];
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate      = self;
    picker.sourceType    = type;
    picker.allowsEditing = YES;
    [self presentViewController:picker animated:YES completion:nil];
}
#pragma mark - UIImagePickerControllerDelegate
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"changeRotate" object:@"0"];
    UIImage *image = info[UIImagePickerControllerEditedImage];
    [picker dismissViewControllerAnimated:YES completion:^{
        //you want to do somethings
    }];
}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"changeRotate" object:@"0"];
    [picker dismissViewControllerAnimated:YES completion:nil];
}
@end
