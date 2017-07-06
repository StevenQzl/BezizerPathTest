//
//  ViewController.m
//  BezierPathTest
//
//  Created by Qu ZhongLiang on 17/7/6.
//  Copyright © 2017年 Qu ZhongLiang. All rights reserved.
//

#import "ViewController.h"
#define   kDegreesToRadians(degrees)  ((pi * degrees)/ 180)
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
   // [self drawTrianglePath];
   // [self drawRectView];
    [self drawRectView1];
    [self drawRectView];
    [self drawCircleView1];
    [self drawPath];
    [self DrawSanJiaoView];
//    [self DrawSanJiaoView1];
//    [self DrawSanJiaoView2];
//    [self DrawSanJiaoView3];
    [self drawQuXianView];
    [self drawQuXian1];
}

//三角形
- (void)drawTrianglePath
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(20, 20)];
    [path addLineToPoint:CGPointMake(self.view.frame.size.width - 20, 20)];
    [path addLineToPoint:CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height - 20)];
    [path closePath];
    CAShapeLayer *shapLayer = [CAShapeLayer layer];
    shapLayer.fillColor = [UIColor redColor].CGColor;
    shapLayer.strokeColor = [UIColor blueColor].CGColor;
    shapLayer.path = path.CGPath;
    shapLayer.lineWidth = 2.0;
    [self.view.layer addSublayer:shapLayer];
}
//矩形
- (void)drawRectView
{
    UIBezierPath *bezier = [UIBezierPath bezierPathWithRect:CGRectMake(30, 30, 200, 150)];
    bezier.lineWidth = 2.0;
    bezier.lineCapStyle = kCGLineCapRound;
    bezier.lineJoinStyle = kCGLineJoinRound;
    CAShapeLayer *shapLayer = [CAShapeLayer layer];
    shapLayer.fillColor = [UIColor yellowColor].CGColor;
    shapLayer.strokeColor = [UIColor redColor].CGColor;
    shapLayer.path = bezier.CGPath;
    shapLayer.lineWidth = 2.0;
    [self.view.layer addSublayer:shapLayer];
    
}
//矩形
- (void)drawRectView1
{
    
    UIBezierPath *bezier = [UIBezierPath bezierPathWithRect:CGRectMake(25, 30, 5, 500)];
    bezier.lineWidth = 2.0;
    bezier.lineCapStyle = kCGLineCapRound;
    bezier.lineJoinStyle = kCGLineJoinRound;
    CAShapeLayer *shapLayer = [CAShapeLayer layer];
    shapLayer.fillColor = [UIColor redColor].CGColor;
    shapLayer.strokeColor = [UIColor yellowColor].CGColor;
    shapLayer.path = bezier.CGPath;
    shapLayer.lineWidth = 2.0;
    [self.view.layer addSublayer:shapLayer];
    
}


//画圆
- (void)drawCircleView
{
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(150, 50, 50, 50) cornerRadius:75];
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    CAShapeLayer *shapLayer = [CAShapeLayer layer];
    shapLayer.fillColor = [UIColor redColor].CGColor;
    shapLayer.strokeColor = [UIColor blueColor].CGColor;
    shapLayer.path = path.CGPath;
    shapLayer.lineWidth = 2.0;
    [self.view.layer addSublayer:shapLayer];
}
//画圆
- (void)drawCircleView1
{
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(100, 70, 50, 50)];
    path.lineWidth = 2.0f;
    path.lineCapStyle = kCGLineCapSquare;
    path.lineJoinStyle = kCGLineJoinBevel;
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = [UIColor redColor].CGColor;
    layer.strokeColor = [UIColor orangeColor].CGColor;
    layer.path = path.CGPath;
    [self.view.layer addSublayer:layer];
}
//画圆弧
- (void)drawPath
{
    const CGFloat pi = 3.14159265359;
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(125, 90) radius:50 startAngle:kDegreesToRadians(0) endAngle:kDegreesToRadians(180) clockwise:YES];
    //path.lineWidth = 10.0f;
    path.lineCapStyle = kCGLineCapSquare;
    path.lineJoinStyle = kCGLineJoinBevel;
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = [UIColor redColor].CGColor;
    layer.strokeColor = [UIColor greenColor].CGColor;
    layer.lineWidth = 5;
    layer.path = path.CGPath;
    [self.view.layer addSublayer:layer];
}
- (void)DrawSanJiaoView
{
    for (int i = 0; i < 15; i ++) {
        UIBezierPath *path = [UIBezierPath bezierPath];
        [path moveToPoint:CGPointMake(230, 30 + 10*i)];
        [path addLineToPoint:CGPointMake(280, 35 + 10 *i)];
        [path addLineToPoint:CGPointMake(230, 40 + 10*i)];
        [path closePath];
        CAShapeLayer *layer = [CAShapeLayer layer];
        layer.path = path.CGPath;
        layer.fillColor = [UIColor yellowColor].CGColor;
        layer.strokeColor = [UIColor redColor].CGColor;
        layer.lineWidth = 1.0;
        [self.view.layer addSublayer:layer];
    }
    
    
}
//画曲线
- (void)drawQuXianView
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(200, 300)];
    [path addQuadCurveToPoint:CGPointMake(200, 400) controlPoint:CGPointMake(100, 150)];
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinBevel;
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.path = path.CGPath;
    layer.fillColor = [UIColor clearColor].CGColor;
    layer.strokeColor = [UIColor redColor].CGColor;
    layer.lineWidth = 1.0;
   [self.view.layer addSublayer:layer];
}
- (void)drawQuXian1
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(20, 400)];
    [path addCurveToPoint:CGPointMake(100, 400) controlPoint1:CGPointMake(70, 200) controlPoint2:CGPointMake(70, 300)];
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinBevel;
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.path = path.CGPath;
    layer.fillColor = [UIColor clearColor].CGColor;
    layer.strokeColor = [UIColor redColor].CGColor;
    layer.lineWidth = 1.0;
    [self.view.layer addSublayer:layer];
}
@end
