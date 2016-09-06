//
//  ViewController.m
//  Demo-LabelInCell
//
//  Created by DanaChu on 16/9/6.
//  Copyright © 2016年 DanaChu. All rights reserved.
//

#import "ViewController.h"
#import "DCChatViewCell.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *datasource;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"Demo";
    _datasource = @[@"阿鲁纳恰尔邦公民社会”称，☺️😍😏有藏族人伪装成商人进入该地区并长期定居，很难将他们与当地的门巴人、夏尔🤓😶😶😒😡😠😛巴人或者舍度苯人区别开来，因为他们在宗教和种族上都很相似。该组织还要求政府立刻成立一个专家委🤑🤓员会来研究“西藏难民”问题😀😬😁😅😄😃☺️🙃😇☺️😘😜🤓😎",
                    @"阿鲁纳恰尔邦公民社会”称，☺️😍😏有藏族人伪装成商人进入该地区并长期定居，很难将他们与当地的门巴人、夏尔🤓😶😶😒😡😠😛巴人",
                    @"☺️😍😏🤓😶😶😒😡😠😛巴人",
                    @"☺️😍😏🤓😶😶😒😡😠😛"
                    ];
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 100;
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([DCChatViewCell class]) bundle:nil] forCellReuseIdentifier:DCChatSenderCellID];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _datasource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DCChatViewCell *cell = [tableView dequeueReusableCellWithIdentifier:DCChatSenderCellID];
    cell.message = _datasource[indexPath.row];
    
    return cell;
}




@end
