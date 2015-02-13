//
//  ViewController.h
//  UseOfParseVideo
//
//  Created by Galileo Guzman on 13/02/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface AddToParse : UIViewController
- (IBAction)btnSave:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *txtName;
@property (strong, nonatomic) IBOutlet UITextField *txtDescription;
@property (strong, nonatomic) IBOutlet UITextField *txtLatitude;
@property (strong, nonatomic) IBOutlet UITextField *txtLongitude;

@end

