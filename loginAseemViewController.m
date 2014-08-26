//
//  loginAseemViewController.m
//  AppPartner1
//
//  Created by aseem hegshetye on 8/8/14.
//  Copyright (c) 2014 aseem hegshetye. All rights reserved.
//

#import "loginAseemViewController.h"


@interface loginAseemViewController ()

@end

@implementation loginAseemViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)loginViewFetchedUserInfo:(FBLoginView *)loginView user:(id<FBGraphUser>)user{
    self.fbName.text=user.name;
    self.fbProfilePicture.profileID=user.objectID;
    [self requestFriends];
    
}

/*+(FBRequestConnection*) startForMyFriendsWithCompletionHandler:(FBRequestHandler)handler{
    
    
}*/

-(void)requestFriends{
   /* FBRequest* friendsRequest=[FBRequest requestForMyFriends];
    [friendsRequest startWithCompletionHandler:^(FBRequestConnection *connection, NSDictionary* result, NSError *error) {
        NSArray* friends=[result objectForKey:@"data"];
        NSLog(@" Found : %lu friends",(unsigned long)friends.count);
        for (NSDictionary<FBGraphUser>* friend in friends) {
            NSLog(@" I have a friend names %@ with id %@",friend.name,friend.objectID);
        }

    }];*/
    
    [FBRequestConnection startForMyFriendsWithCompletionHandler:^(FBRequestConnection *connection, id <FBGraphUser>friends, NSError *error) {
        if(!error){
            NSLog(@" results = %@",friends);
        }
        NSString *className=NSStringFromClass([friends class]);
        NSLog(@" objects class is %@",className);
        NSLog(@" printing objectforkey /n %@",[friends objectForKey:@" user_friends"]);
        
        
    }];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.loginView.readPermissions=@[@"user_friends",@"public_profile"];
    //[self requestFriends];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
