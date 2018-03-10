//
//  TableViewController.h
//  SirJsonTasK
//
//  Created by Student P_04 on 01/12/17.
//  Copyright © 2017 DEN 7070. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *LabelActivity;
@property(strong,nonatomic) NSString *strI;
@property(strong,nonatomic) NSString *strN;
@property(strong,nonatomic) NSString *strA;
@property(strong,nonatomic) NSString *strS;

@property (weak, nonatomic) IBOutlet UILabel *LabelID;
@property (weak, nonatomic) IBOutlet UILabel *LabelName;
@property (weak, nonatomic) IBOutlet UILabel *LabelSector;


@end
