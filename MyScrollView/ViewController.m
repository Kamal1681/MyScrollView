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
    
    
}
- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    self.myView.bounds = CGRectMake(self.myView.bounds.origin.x, self.myView.bounds.origin.y + 100, self.myView.bounds.size.width, self.myView.bounds.size.height);
}



@end
