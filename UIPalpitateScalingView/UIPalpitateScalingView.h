//
//  UIPalpitateScalingView.h
//  CinCer
//
//  Created by Kid Young on 6/13/17.
//  Copyright © 2017 Yang XiHong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIPalpitateScalingView : UIView

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithFrame:(CGRect)frame NS_UNAVAILABLE;

/**
 The total duration of the view palpitate scaling once, measured in seconds. If you specify a negative value or 0, the changes are made without animating them.
 */
@property (nonatomic, assign) IBInspectable double duration;

@end
