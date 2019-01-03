//
//  ViewController.m
//  VisitorPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "ViewController.h"
#import "DYSElementMan.h"
#import "DYSElementWoman.h"
#import "DYSObjectStructure.h"

#import "DYSVisitor1.h"
//新增一个访问者
#import "DYSVisitor2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    DYSObjectStructure *structure = [DYSObjectStructure new];
    DYSAbstractElement *man = [DYSElementMan new];
    [structure add:man];

    DYSAbstractElement *woman = [DYSElementWoman new];
    [structure add:woman];

    DYSVisitor1 *vistor1 = [DYSVisitor1 new];
    [structure accept:vistor1];

    DYSVisitor2 *vistor2 = [DYSVisitor2 new];
    [structure accept:vistor2];
}

@end
