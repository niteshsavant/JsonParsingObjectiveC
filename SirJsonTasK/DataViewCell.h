//
//  DataViewCell.h
//  SirJsonTasK
//
//  Created by Student P_04 on 29/11/17.
//  Copyright © 2017 DEN 7070. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *LblId;
@property (weak, nonatomic) IBOutlet UILabel *LblName;
@property (weak, nonatomic) IBOutlet UILabel *LblActivity;
@property (weak, nonatomic) IBOutlet UILabel *LblSector;

@end
