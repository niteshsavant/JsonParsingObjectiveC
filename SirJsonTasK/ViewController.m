//
//  ViewController.m
//  SirJsonTasK
//
//  Created by Student P_04 on 29/11/17.
//  Copyright © 2017 DEN 7070. All rights reserved.
//

#import "ViewController.h"
#import "DataViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self JsonDataDisplay];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)JsonDataDisplay
{
    NSString *strUrl = @"http://api.kivaws.org/v1/loans/search.json?status=fundraising";
    
    NSURL *url = [NSURL URLWithString:strUrl];
    
    NSURLSession *session = [ NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response,NSError *error)
    {
        if (error)
        {
            NSLog(@"%@",error.localizedDescription);
        }
        else
        {
            NSError *errJson;
            NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&errJson];
            DataArray = [dict valueForKey:@"loans"];
            
            
            NSLog(@"%@",dictDisplay);
            
            if(DataArray.count > 0)
            {
                dispatch_async(dispatch_get_main_queue(),^{                [_TableDisplay reloadData];
                });
            }
        }
        
    }];
    [task resume];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  DataArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DataViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DataCell"];
    
    if (cell == nil)
    {
        cell = [[DataViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DataCell"];
    }
    
    dictDisplay = [DataArray objectAtIndex:indexPath.row];
    
    NSString *strId = [NSString stringWithFormat:@"%@",[dictDisplay valueForKey:@"id" ]];
    NSString *strName = [dictDisplay valueForKey:@"name"];
    NSString *strActivity = [dictDisplay valueForKey:@"activity"];
    NSString *strSector = [dictDisplay valueForKey:@"sector"];
    
    
    cell.LblId.text = strId;
    cell.LblName.text = strName;
    cell.LblActivity.text = strActivity;
    cell.LblSector.text = strSector;
    
    cell.layer.borderWidth = 2;
    cell.layer.borderColor = [[UIColor blueColor]CGColor];
    
    return  cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    TableViewController *tc = [story instantiateViewControllerWithIdentifier:@"tcview"];
    
    dictDisplay = [DataArray objectAtIndex:indexPath.row];
    
    tc.strI = [dictDisplay valueForKey:@"id"];
    tc.strN = [dictDisplay valueForKey:@"name"];
    tc.strA = [dictDisplay valueForKey:@"activity"];
    tc.strS = [dictDisplay valueForKey:@"sector"];
    
    NSLog(@"%@, %@, %@, %@",tc.strI, tc.strN, tc.strA, tc.strS);
    
    [self.navigationController pushViewController:tc animated:YES];
}

@end
