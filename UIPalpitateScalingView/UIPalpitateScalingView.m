//
//  UIPalpitateScalingView.m
//  CinCer
//
//  Created by Kid Young on 6/13/17.
//  Copyright © 2017 Yang XiHong. All rights reserved.
//

#import "UIPalpitateScalingView.h"

@implementation UIPalpitateScalingView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.duration = 0.35;
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.duration = 0.35;
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(backToForeground) name:UIApplicationWillEnterForegroundNotification object:nil];
}

- (void)drawRect:(CGRect)rect {
    [self addScalingAnimation];
}

- (void)removeFromSuperview
{
    [super removeFromSuperview];
    [NSNotificationCenter.defaultCenter removeObserver:self];
}

- (void)dealloc
{
    NSLog(@"%@ %@", NSStringFromClass(self.class), NSStringFromSelector(_cmd));
}

#pragma mark - Private Methods

- (void)addScalingAnimation
{
    CAKeyframeAnimation *keyframeAnimation =
    [CAKeyframeAnimation animationWithKeyPath:@"transform"];
//    keyframeAnimation.delegate = self;
    keyframeAnimation.repeatCount = CGFLOAT_MAX;
    keyframeAnimation.removedOnCompletion = NO;
    NSMutableArray *mutableArray = [NSMutableArray array];
    NSValue *value;
    CATransform3D transform;
    keyframeAnimation.fillMode = kCAFillModeBoth;
    keyframeAnimation.duration = self.duration;
    transform = CATransform3DMakeScale(1.0, 1.0, 1.0);
    value = [NSValue valueWithCATransform3D:transform];
    [mutableArray addObject:value];
    transform = CATransform3DMakeScale(0.7, 0.7, 0.7);
    value = [NSValue valueWithCATransform3D:transform];
    [mutableArray addObject:value];
    transform = CATransform3DMakeScale(1.0, 1.0, 1.0);
    value = [NSValue valueWithCATransform3D:transform];
    [mutableArray addObject:value];
    keyframeAnimation.values = mutableArray;
    [self.layer removeAnimationForKey:@"SetHidden"];
    [self.layer addAnimation:keyframeAnimation forKey:@"SetHidden"];
}

- (void)backToForeground
{
    [self setNeedsDisplay];
}

@end
