//
//  loginAseemViewController.h
//  AppPartner1
//
//  Created by aseem hegshetye on 8/8/14.
//  Copyright (c) 2014 aseem hegshetye. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface loginAseemViewController : UIViewController<FBLoginViewDelegate>
@property (strong, nonatomic) IBOutlet FBLoginView *loginView;

@property (strong, nonatomic) IBOutlet UILabel *fbName;
@property (weak, nonatomic) IBOutlet FBProfilePictureView *fbProfilePicture;


@end
