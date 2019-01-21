//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Kamal Maged on 2019-01-21.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        _contentSize.height = 500.0;
        _contentSize.width = 300.0;
        UIPanGestureRecognizer * panGestureRecognizer = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(viewPanned:)];
        
        [self addGestureRecognizer:panGestureRecognizer];
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _contentSize.height = 500.0;
        _contentSize.width = 300.0;
    }
    return self;
}
- (void) addSubview:(UIView *)view
{
    [super addSubview:view];
    
    
    
}

- (void) viewPanned: (UIPanGestureRecognizer *) sender {
    
    
    CGPoint translationInView = [sender translationInView:self];
    
    if (fabs (translationInView.x) < fabs (self.contentSize.width) && fabs (translationInView.y) < fabs (self.contentSize.height))  {
        
        CGRect newLocation = CGRectMake(sender.view.bounds.origin.x - translationInView.x, sender.view.bounds.origin.y - translationInView.y , sender.view.bounds.size.width, sender.view.bounds.size.height);
        
        [sender.view setBounds:newLocation];
        
        
        
    } else [sender.view clipsToBounds];
    [sender setTranslation:CGPointZero inView:self];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
