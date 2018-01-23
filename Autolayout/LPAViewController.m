//
//  LPAViewController.m
//  Autolayout
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPAViewController.h"

@interface LPAViewController ()

@property (nonatomic, weak) UIButton *squareButton;
@property (nonatomic, weak) UIButton *portraitButton;
@property (nonatomic, weak) UIButton *landscapeButton;

@property (nonatomic, weak) UIView *framingView;
@property (nonatomic, weak) NSLayoutConstraint *framingViewHeightConstraint;
@property (nonatomic, weak) NSLayoutConstraint *framingViewWidthConstraint;

@end

@implementation LPAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //////////////////////////////////////// GREEN BOX ///////////////////////////////////////////
    
    UIView *framingView = [[UIView alloc] initWithFrame:CGRectZero];
    framingView.translatesAutoresizingMaskIntoConstraints = NO;
    framingView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:framingView];
    self.framingView = framingView;
    
    //////////////////////////////////////// PURPLE BOX ///////////////////////////////////////////
    
    UIView *purpleBox = [[UIView alloc] initWithFrame: CGRectZero];
    [purpleBox setTranslatesAutoresizingMaskIntoConstraints: NO];
    [purpleBox setBackgroundColor: UIColor.purpleColor];
    [framingView addSubview:purpleBox];
    
    NSLayoutConstraint *purpleBoxRightConstraint = [NSLayoutConstraint constraintWithItem:purpleBox
                                                                                attribute:NSLayoutAttributeRightMargin
                                                                                relatedBy:NSLayoutRelationEqual
                                                                                   toItem:framingView
                                                                                attribute:NSLayoutAttributeRightMargin
                                                                               multiplier:1
                                                                                 constant:-20];
    purpleBoxRightConstraint.active = YES;
    
    NSLayoutConstraint *purpleBoxBottomConstraint = [NSLayoutConstraint constraintWithItem:purpleBox
                                                                                attribute:NSLayoutAttributeBottomMargin
                                                                                relatedBy:NSLayoutRelationEqual
                                                                                   toItem:framingView
                                                                                attribute:NSLayoutAttributeBottomMargin
                                                                               multiplier:1
                                                                                 constant:-20];
    purpleBoxBottomConstraint.active = YES;
    
    NSLayoutConstraint *purpleBoxWidthConstraint = [NSLayoutConstraint constraintWithItem:purpleBox
                                                                                 attribute:NSLayoutAttributeWidth
                                                                                 relatedBy:NSLayoutRelationEqual
                                                                                    toItem:framingView
                                                                                 attribute:NSLayoutAttributeWidth
                                                                                multiplier:(305.0/500.0)
                                                                                  constant:0];
    purpleBoxWidthConstraint.active = YES;
    
    NSLayoutConstraint *purpleBoxHeightConstraint = [NSLayoutConstraint constraintWithItem:purpleBox
                                                                                 attribute:NSLayoutAttributeHeight
                                                                                 relatedBy:NSLayoutRelationEqual
                                                                                    toItem:nil
                                                                                 attribute:NSLayoutAttributeNotAnAttribute
                                                                                multiplier: 0
                                                                                  constant:50];
    purpleBoxHeightConstraint.active = YES;
    
    //////////////////////////////////////// RED BOX ///////////////////////////////////////////
    
    UIView *redBox = [[UIView alloc] initWithFrame: CGRectZero];
    [redBox setTranslatesAutoresizingMaskIntoConstraints: NO];
    [redBox setBackgroundColor: UIColor.redColor];
    [framingView addSubview:redBox];
    
    NSLayoutConstraint *redBoxRightConstraint = [NSLayoutConstraint constraintWithItem:redBox
                                                                             attribute:NSLayoutAttributeRightMargin
                                                                             relatedBy:NSLayoutRelationEqual
                                                                                toItem:framingView
                                                                             attribute:NSLayoutAttributeRightMargin
                                                                            multiplier:1
                                                                              constant:-20];
    redBoxRightConstraint.active = YES;
    
    NSLayoutConstraint *redBoxTopConstraint = [NSLayoutConstraint constraintWithItem:redBox
                                                                           attribute:NSLayoutAttributeTopMargin
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:framingView
                                                                           attribute:NSLayoutAttributeTopMargin
                                                                          multiplier:1
                                                                            constant:20];
    redBoxTopConstraint.active = YES;
    
    /////////////////////////////////////////// ORANGE BOX ///////////////////////////////////////////
    
    //////////////////////////////////////// RIGHT ORANGE BOX ///////////////////////////////////////////
    
    UIView *rightOrangeBox = [[UIView alloc] initWithFrame: CGRectZero];
    [rightOrangeBox setTranslatesAutoresizingMaskIntoConstraints: NO];
    [rightOrangeBox setBackgroundColor: UIColor.orangeColor];
    [redBox addSubview:rightOrangeBox];
    
    NSLayoutConstraint *rightOrangeBoxHeightConstraint = [NSLayoutConstraint constraintWithItem:rightOrangeBox
                                                                                      attribute:NSLayoutAttributeHeight
                                                                                      relatedBy:NSLayoutRelationEqual
                                                                                         toItem:nil
                                                                                      attribute:NSLayoutAttributeNotAnAttribute
                                                                                     multiplier: 0
                                                                                       constant:30];
    rightOrangeBoxHeightConstraint.active = YES;
    
    NSLayoutConstraint *rightOrangeBoxWidthConstraint = [NSLayoutConstraint constraintWithItem:rightOrangeBox
                                                                                     attribute:NSLayoutAttributeWidth
                                                                                     relatedBy:NSLayoutRelationEqual
                                                                                        toItem:nil
                                                                                     attribute:NSLayoutAttributeNotAnAttribute
                                                                                    multiplier: 0
                                                                                      constant:50];
    rightOrangeBoxWidthConstraint.active = YES;
    
    
    
        //////////////////////////////////////// LEFT ORANGE BOX ///////////////////////////////////////////
    
    
    UIView *leftOrangeBox = [[UIView alloc] initWithFrame: CGRectZero];
    [leftOrangeBox setTranslatesAutoresizingMaskIntoConstraints: NO];
    [leftOrangeBox setBackgroundColor: UIColor.orangeColor];
    [redBox addSubview:leftOrangeBox];

    
    NSLayoutConstraint *leftOrangeBoxHeightConstraint = [NSLayoutConstraint constraintWithItem:leftOrangeBox
                                                                                 attribute:NSLayoutAttributeHeight
                                                                                 relatedBy:NSLayoutRelationEqual
                                                                                    toItem:nil
                                                                                 attribute:NSLayoutAttributeNotAnAttribute
                                                                                multiplier: 0
                                                                                  constant:30];
    leftOrangeBoxHeightConstraint.active = YES;
    
    NSLayoutConstraint *leftOrangeBoxWidthConstraint = [NSLayoutConstraint constraintWithItem:leftOrangeBox
                                                                                      attribute:NSLayoutAttributeWidth
                                                                                      relatedBy:NSLayoutRelationEqual
                                                                                         toItem:nil
                                                                                      attribute:NSLayoutAttributeNotAnAttribute
                                                                                     multiplier: 0
                                                                                       constant:70];
    leftOrangeBoxWidthConstraint.active = YES;
    
    NSString *leftOrangeBoxVerticalConstraintsFormat = @"V:|-[leftOrangeBox]-|";
    NSArray *leftOrangeBoxVerticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat: leftOrangeBoxVerticalConstraintsFormat
                                                                                    options:NSLayoutFormatAlignAllCenterY
                                                                                    metrics:nil
                                                                                      views:NSDictionaryOfVariableBindings(leftOrangeBox)];
    [NSLayoutConstraint activateConstraints:leftOrangeBoxVerticalConstraints];
    
    NSString *orangeBoxHorizontalConstraintsFormat = @"|-[leftOrangeBox]-[rightOrangeBox]-|";
    NSArray *orangeBoxHorizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat: orangeBoxHorizontalConstraintsFormat
                                                                                        options:NSLayoutFormatAlignAllCenterY
                                                                                        metrics:nil
                                                                                          views:NSDictionaryOfVariableBindings(leftOrangeBox,rightOrangeBox)];
    [NSLayoutConstraint activateConstraints:orangeBoxHorizontalConstraints];
    
    //////////////////////////////////////// CLEAR BOX ///////////////////////////////////////////
    
    UIView *clearBox1 = [[UIView alloc] initWithFrame: CGRectZero];
    [clearBox1 setTranslatesAutoresizingMaskIntoConstraints: NO];
    [clearBox1 setBackgroundColor: UIColor.clearColor];
    [framingView addSubview:clearBox1];
    
    UIView *clearBox2 = [[UIView alloc] initWithFrame: CGRectZero];
    [clearBox2 setTranslatesAutoresizingMaskIntoConstraints: NO];
    [clearBox2 setBackgroundColor: UIColor.clearColor];
    [framingView addSubview:clearBox2];
    
    UIView *clearBox3 = [[UIView alloc] initWithFrame: CGRectZero];
    [clearBox3 setTranslatesAutoresizingMaskIntoConstraints: NO];
    [clearBox3 setBackgroundColor: UIColor.clearColor];
    [framingView addSubview:clearBox3];
    
    UIView *clearBox4 = [[UIView alloc] initWithFrame: CGRectZero];
    [clearBox4 setTranslatesAutoresizingMaskIntoConstraints: NO];
    [clearBox4 setBackgroundColor: UIColor.clearColor];
    [framingView addSubview:clearBox4];
    
    //////////////////////////////////////// BLUE BOX ///////////////////////////////////////////

    UIView *topBlueBox = [[UIView alloc] initWithFrame: CGRectZero];
    [topBlueBox setTranslatesAutoresizingMaskIntoConstraints: NO];
    [topBlueBox setBackgroundColor: UIColor.blueColor];
    [framingView addSubview:topBlueBox];
    
    UIView *middleBlueBox = [[UIView alloc] initWithFrame: CGRectZero];
    [middleBlueBox setTranslatesAutoresizingMaskIntoConstraints: NO];
    [middleBlueBox setBackgroundColor: UIColor.blueColor];
    [framingView addSubview:middleBlueBox];
    
    UIView *bottomBlueBox = [[UIView alloc] initWithFrame: CGRectZero];
    [bottomBlueBox setTranslatesAutoresizingMaskIntoConstraints: NO];
    [bottomBlueBox setBackgroundColor: UIColor.blueColor];
    [framingView addSubview:bottomBlueBox];
    
    
    ///////// TOP BLUE BOX constraints ////////////
    
    NSLayoutConstraint *topBlueBoxHeightConstraint = [NSLayoutConstraint constraintWithItem:topBlueBox
                                                                                     attribute:NSLayoutAttributeHeight
                                                                                     relatedBy:NSLayoutRelationEqual
                                                                                        toItem:nil
                                                                                     attribute:NSLayoutAttributeNotAnAttribute
                                                                                    multiplier: 0
                                                                                      constant:50];
    topBlueBoxHeightConstraint.active = YES;
    
    NSLayoutConstraint *topBlueBoxWidthConstraint = [NSLayoutConstraint constraintWithItem:topBlueBox
                                                                                  attribute:NSLayoutAttributeWidth
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:nil
                                                                                  attribute:NSLayoutAttributeNotAnAttribute
                                                                                 multiplier: 0
                                                                                   constant:50];
    topBlueBoxWidthConstraint.active = YES;
    
    
    ///////// MIDDLE BLUE BOX constraints ////////////
    
    NSLayoutConstraint *middleBlueBoxHeightConstraint = [NSLayoutConstraint constraintWithItem:middleBlueBox
                                                                                  attribute:NSLayoutAttributeHeight
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:nil
                                                                                  attribute:NSLayoutAttributeNotAnAttribute
                                                                                 multiplier: 0
                                                                                   constant:50];
    middleBlueBoxHeightConstraint.active = YES;
    
    NSLayoutConstraint *middleBlueBoxWidthConstraint = [NSLayoutConstraint constraintWithItem:middleBlueBox
                                                                                 attribute:NSLayoutAttributeWidth
                                                                                 relatedBy:NSLayoutRelationEqual
                                                                                    toItem:nil
                                                                                 attribute:NSLayoutAttributeNotAnAttribute
                                                                                multiplier: 0
                                                                                  constant:50];
    middleBlueBoxWidthConstraint.active = YES;
    
    
    ///////// BOTTOM BLUE BOX constraints ////////////
    
    NSLayoutConstraint *bottomBlueBoxHeightConstraint = [NSLayoutConstraint constraintWithItem:bottomBlueBox
                                                                                     attribute:NSLayoutAttributeHeight
                                                                                     relatedBy:NSLayoutRelationEqual
                                                                                        toItem:nil
                                                                                     attribute:NSLayoutAttributeNotAnAttribute
                                                                                    multiplier: 0
                                                                                      constant:50];
    bottomBlueBoxHeightConstraint.active = YES;
    
    NSLayoutConstraint *bottomBlueBoxWidthConstraint = [NSLayoutConstraint constraintWithItem:bottomBlueBox
                                                                                    attribute:NSLayoutAttributeWidth
                                                                                    relatedBy:NSLayoutRelationEqual
                                                                                       toItem:nil
                                                                                    attribute:NSLayoutAttributeNotAnAttribute
                                                                                   multiplier: 0
                                                                                     constant:50];
    bottomBlueBoxWidthConstraint.active = YES;
    
    NSLayoutConstraint *blueBoxHorizontalCenterConstraint = [NSLayoutConstraint constraintWithItem:topBlueBox
                                                                                    attribute:NSLayoutAttributeCenterX
                                                                                    relatedBy:NSLayoutRelationEqual
                                                                                       toItem:framingView
                                                                                    attribute:NSLayoutAttributeCenterX
                                                                                   multiplier:1
                                                                                     constant:0];
    
    blueBoxHorizontalCenterConstraint.active = YES;
    
    
    
    ///////// CLEAR BOX constraint ////////////

    NSString *clearBoxHorizontalConstraintsFormat = @"V:|[clearBox1][topBlueBox][clearBox2(==clearBox1)][middleBlueBox][clearBox3(==clearBox1)][bottomBlueBox][clearBox4(==clearBox1)]|";
    NSArray *clearBoxHorizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat: clearBoxHorizontalConstraintsFormat
                                                                                      options:NSLayoutFormatAlignAllCenterX
                                                                                      metrics:nil
                                              
                                                                                       views:NSDictionaryOfVariableBindings(clearBox1,clearBox2,clearBox3,clearBox4,topBlueBox,middleBlueBox,bottomBlueBox)];
    [NSLayoutConstraint activateConstraints:clearBoxHorizontalConstraints];
    
    
    UIButton *squareButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [squareButton setTitle:@"Square" forState:UIControlStateNormal];
    [squareButton addTarget:self action:@selector(resizeFramingView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:squareButton];
    squareButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.squareButton = squareButton;
    
    UIButton *portraitButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [portraitButton setTitle:@"Portrait" forState:UIControlStateNormal];
    [portraitButton addTarget:self action:@selector(resizeFramingView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:portraitButton];
    portraitButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.portraitButton = portraitButton;
    
    UIButton *landscapeButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [landscapeButton setTitle:@"Landscape" forState:UIControlStateNormal];
    [landscapeButton addTarget:self action:@selector(resizeFramingView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:landscapeButton];
    landscapeButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.landscapeButton = landscapeButton;
    
    
    
    NSString *buttonsHorizontalConstraintsFormat = @"|[squareButton(==portraitButton)][portraitButton(==landscapeButton)][landscapeButton]|";
    NSArray *buttonsHorizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:buttonsHorizontalConstraintsFormat
                                                                   options:NSLayoutFormatAlignAllCenterY
                                                                    metrics:nil
                                                                    views:NSDictionaryOfVariableBindings(squareButton, portraitButton, landscapeButton)];
    [NSLayoutConstraint activateConstraints:buttonsHorizontalConstraints];
    
    NSLayoutConstraint *squareButtonBottomConstraint = [NSLayoutConstraint constraintWithItem:squareButton
                                                          attribute:NSLayoutAttributeBottom
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:1.0
                                                           constant:-50.0];
    squareButtonBottomConstraint.active = YES;
    
    NSLayoutConstraint *framingViewCenterXConstraint = [NSLayoutConstraint constraintWithItem:framingView
                                                                                    attribute:NSLayoutAttributeCenterX
                                                                                    relatedBy:NSLayoutRelationEqual
                                                                                       toItem:self.view
                                                                                    attribute:NSLayoutAttributeCenterX
                                                                                   multiplier:1.0
                                                                                     constant:0.0];
    framingViewCenterXConstraint.active = YES;
    
    NSLayoutConstraint *framingViewCenterY = [NSLayoutConstraint constraintWithItem:framingView
                                                                          attribute:NSLayoutAttributeCenterY
                                                                          relatedBy:NSLayoutRelationEqual
                                                                             toItem:self.view
                                                                          attribute:NSLayoutAttributeCenterY
                                                                         multiplier:1.0
                                                                           constant:-50.0];
    framingViewCenterY.active = YES;
    
    self.framingViewHeightConstraint = [NSLayoutConstraint constraintWithItem:framingView
                                                                                   attribute:NSLayoutAttributeHeight
                                                                                   relatedBy:NSLayoutRelationEqual
                                                                                      toItem:nil
                                                                                   attribute:NSLayoutAttributeNotAnAttribute
                                                                                  multiplier:1.0
                                                                                    constant:500.0];
    self.framingViewHeightConstraint.active = YES;
    
    self.framingViewWidthConstraint = [NSLayoutConstraint constraintWithItem:framingView
                                                                                  attribute:NSLayoutAttributeWidth
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:nil
                                                                                  attribute:NSLayoutAttributeNotAnAttribute
                                                                                 multiplier:1.0
                                                                                   constant:500.0];
    self.framingViewWidthConstraint.active = YES;

    
    // Set up your views and constraints here
    
    
}

/**
 Resize the frame of the framing view depending on which button was pressed.
 */
- (void)resizeFramingView:(id)sender
{
    CGFloat newWidth = 0.0;
    CGFloat newHeight = 0.0;
    
    if (sender == self.squareButton) {
        newWidth = 500.0;
        newHeight = 500.0;
    } else if (sender == self.portraitButton) {
        newWidth = 350.0;
        newHeight = 550.0;
    } else if (sender == self.landscapeButton) {
        newWidth = 900.0;
        newHeight = 300.0;
    }
    
    [UIView animateWithDuration:2.0 animations:^(){
        self.framingViewHeightConstraint.constant = newHeight;
        self.framingViewWidthConstraint.constant = newWidth;
        [self.view layoutIfNeeded];
    }];
}

@end
