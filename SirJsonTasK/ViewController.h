//
//  ViewController.h
//  SirJsonTasK
//
//  Created by Student P_04 on 29/11/17.
//  Copyright © 2017 DEN 7070. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataViewCell.h"
#import "TableViewController.h"

@interface ViewController : UIViewController
{
    NSArray *DataArray;
    NSDictionary *dictDisplay;
}

@property (weak, nonatomic) IBOutlet UITableView *TableDisplay;

@end

