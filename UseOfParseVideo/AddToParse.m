//
//  ViewController.m
//  UseOfParseVideo
//
//  Created by Galileo Guzman on 13/02/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//

#import "AddToParse.h"

@interface AddToParse ()

@end

@implementation AddToParse

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //get all values of class in parse core
    
    PFQuery *query = [PFQuery queryWithClassName:@"Lugar"];
    
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error){
       
        for(id object in objects){
            NSLog(@"%@", object[@"name"]);
        }
        
    }];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnSave:(id)sender {
    //Parse implementation
    
    PFObject *testObject = [PFObject objectWithClassName:@"Lugar"];
    testObject[@"name"] = self.txtName.text;
    testObject[@"description"] = self.txtDescription.text;
    testObject[@"latitude"] = self.txtLatitude.text;
    testObject[@"longitude"] = self.txtLongitude.text;
    if([testObject saveInBackground]){
        NSLog(@"Objeto guardado en Parse dot com");
    }
    
}
@end
