//
//  TableViewController.m
//  SirJsonTasK
//
//  Created by Student P_04 on 01/12/17.
//  Copyright © 2017 DEN 7070. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _LabelID.text = [NSString stringWithFormat: @"%@",_strI];
    _LabelName.text = _strN;
    _LabelActivity.text = _strA;
    _LabelSector.text = _strS;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}


@end
