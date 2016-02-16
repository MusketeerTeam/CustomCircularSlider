//
//  PaintThreeColorGradient.m
//  PaintThreeColorGradient
//
//  Created by Jubal on 16/2/1.
//  Copyright (c) 2016 CompanyName. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//

#import "PaintThreeColorGradient.h"


@implementation PaintThreeColorGradient

#pragma mark Cache

static UIColor* _leftMainColor = nil;
static UIColor* _topColor = nil;
static UIColor* _downColor = nil;
static UIColor* _rightMainColor = nil;

static UIImage* _imageOfPaintThreeColorGradient = nil;

#pragma mark Initialization

+ (void)initialize
{
    // Colors Initialization
    _leftMainColor = [UIColor colorWithRed: 0.363 green: 1 blue: 0 alpha: 1];
    _topColor = [UIColor colorWithRed: 1 green: 1 blue: 0 alpha: 1];
    _downColor = [UIColor colorWithRed: 0 green: 1 blue: 0 alpha: 1];
    _rightMainColor = [UIColor colorWithRed: 0.071 green: 1 blue: 0 alpha: 1];

}

#pragma mark Colors
+ (UIColor*)letfMainColor { return _leftMainColor; }
+ (UIColor*)topColor { return _topColor; }
+ (UIColor*)downColor { return _downColor; }
+ (UIColor*)rightMainColor { return _rightMainColor; }
+ (void)setLeftMainColor:(UIColor*)leftMainColor{_leftMainColor     = leftMainColor;}
+ (void)setRightMainColor:(UIColor *)rightMainColor{_rightMainColor = rightMainColor;}
+ (void)setTopColor:(UIColor *)topColor{_topColor                   = topColor;}
+ (void)setDownColor:(UIColor *)downColor{_downColor                = downColor;}

#pragma mark Drawing Methods

+ (void)drawPaintThreeColorGradient;
{
    //// General Declarations
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context       = UIGraphicsGetCurrentContext();


    //// Gradient Declarations
    CGFloat gradientLocations[]  = {0.07, 0.24, 0.52, 0.92};
    CGGradientRef gradient       = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)@[(id)PaintThreeColorGradient.downColor.CGColor, (id)_leftMainColor.CGColor, (id)PaintThreeColorGradient.letfMainColor.CGColor, (id)PaintThreeColorGradient.topColor.CGColor], gradientLocations);
//    CGGradientRef gradient       = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)@[(id)PaintThreeColorGradient.downColor.CGColor, (id)[UIColor colorWithRed: 0.669 green: 1 blue: 0 alpha: 1].CGColor, (id)PaintThreeColorGradient.letfMainColor.CGColor, (id)PaintThreeColorGradient.topColor.CGColor], gradientLocations);
    CGFloat gradient2Locations[] = {0.06, 0.18, 0.49, 0.65, 0.93};
    CGGradientRef gradient2      = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)@[(id)PaintThreeColorGradient.downColor.CGColor, (id)_rightMainColor.CGColor, (id)PaintThreeColorGradient.rightMainColor.CGColor, (id)_rightMainColor.CGColor, (id)PaintThreeColorGradient.topColor.CGColor], gradient2Locations);

    //// LeftTwoColor Drawing
    UIBezierPath* leftTwoColorPath  = [UIBezierPath bezierPathWithRect: CGRectMake(0, 0, 100, 200)];
    CGContextSaveGState(context);
    [leftTwoColorPath addClip];
    CGContextDrawLinearGradient(context, gradient, CGPointMake(50, 200), CGPointMake(50, 0), 0);
    CGContextRestoreGState(context);


    //// RightTwoColor Drawing
    UIBezierPath* rightTwoColorPath = [UIBezierPath bezierPathWithRect: CGRectMake(100, 0, 100, 200)];
    CGContextSaveGState(context);
    [rightTwoColorPath addClip];
    CGContextDrawLinearGradient(context, gradient2, CGPointMake(150, 200), CGPointMake(150, 0), 0);
    CGContextRestoreGState(context);


    //// Cleanup
    CGGradientRelease(gradient);
    CGGradientRelease(gradient2);
    CGColorSpaceRelease(colorSpace);
}

#pragma mark Generated Images

+ (UIImage*)imageOfPaintThreeColorGradient;
{
    if (_imageOfPaintThreeColorGradient)
        return _imageOfPaintThreeColorGradient;

    UIGraphicsBeginImageContextWithOptions(CGSizeMake(200, 200), NO, 0.0f);
    [PaintThreeColorGradient drawPaintThreeColorGradient];
    _imageOfPaintThreeColorGradient = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return _imageOfPaintThreeColorGradient;
}

#pragma mark Customization Infrastructure

- (void)setPaintThreeColorGradientTargets: (NSArray*)paintThreeColorGradientTargets
{
    _paintThreeColorGradientTargets = paintThreeColorGradientTargets;

    for (id target in self.paintThreeColorGradientTargets)
        [target setImage: PaintThreeColorGradient.imageOfPaintThreeColorGradient];
}


@end