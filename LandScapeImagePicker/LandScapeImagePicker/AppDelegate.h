//
//  AppDelegate.h
//  LandScapeImagePicker
//
//  Created by allthings_LuYD on 2016/10/18.
//  Copyright © 2016年 scrum_snail. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;

@property (nonatomic,assign) NSInteger MyInterfaceOrientationMask;
@end

