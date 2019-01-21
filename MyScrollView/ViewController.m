//
//  ViewController.m
//  MyScrollView
//
//  Created by Kamal Maged on 2019-01-21.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"
@interface ViewController()

@property (weak, nonatomic) IBOutlet MyScrollView *myView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
//    UIView * redBox = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
//
//    [self.view addSubview:redBox];
//
//    UIView * greenBox = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 150, 200)];
//
//    [self.view addSubview:greenBox];
//    
//
//    UIView * blueBox = [[UIView alloc]initWithFrame:CGRectMake(40, 400, 200, 150)];
//
//    [self.view addSubview:blueBox];
//
//    UIView * yellowBox = [[UIView alloc]initWithFrame:CGRectMake(100, 600, 180, 150)];
//
//    [self.view addSubview:yellowBox];
    
    

    
    
    
}
- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    self.myView.bounds = CGRectMake(self.myView.bounds.origin.x, self.myView.bounds.origin.y + 100, self.myView.bounds.size.width, self.myView.bounds.size.height);
}



@end
