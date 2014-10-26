//
//  SCViewController.m
//  SCWebTableView
//
//  Created by Leo on 26/10/14.
//  Copyright (c) 2014 vioklab. All rights reserved.
//

#import "SCViewController.h"
#import "UIImageView+AFNetworking.h"

@interface SCViewController ()
    @property (weak, nonatomic) IBOutlet UILabel *deviceTitleLabel;
    @property (weak, nonatomic) IBOutlet UILabel *deviceLocationLabel;
    @property (weak, nonatomic) IBOutlet UILabel *deviceKitVersionLabel;

    @property (weak, nonatomic) IBOutlet UILabel *deviceLastInsertDatetimeLabel;
    @property (weak, nonatomic) IBOutlet UILabel *deviceStatusLabel;

    // FEEDS ARRAY
    @property (strong, nonatomic) NSArray *feedsArray;

    @property (weak, nonatomic) IBOutlet UILabel *deviceTemperatureLabel;
    @property (weak, nonatomic) IBOutlet UILabel *deviceHumidityLabel;
    @property (weak, nonatomic) IBOutlet UILabel *deviceLightLabel;
    @property (weak, nonatomic) IBOutlet UILabel *deviceNoiseLabel;
    @property (weak, nonatomic) IBOutlet UILabel *deviceCOLabel;
    @property (weak, nonatomic) IBOutlet UILabel *deviceNO2pLabel;
    @property (weak, nonatomic) IBOutlet UILabel *deviceNetsLabel;
    @property (weak, nonatomic) IBOutlet UILabel *devicePanelLabel;

    @property (weak, nonatomic) IBOutlet UILabel *deviceBatteryLabel;


@end

@implementation SCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
    self.deviceTitleLabel.text = [self.deviceDetail valueForKeyPath:@"properties.title"];
    self.deviceLocationLabel.text = [self.deviceDetail valueForKeyPath:@"properties.location"];
    self.deviceKitVersionLabel.text = [self.deviceDetail valueForKeyPath:@"properties.kit_version"];
    
     self.deviceStatusLabel.text = [self.deviceDetail valueForKeyPath:@"properties.status"];
   
    NSArray *feedsArray = [self.deviceDetail valueForKeyPath:@"properties.feeds"];
    
    self.deviceLastInsertDatetimeLabel.text = [NSString stringWithFormat:@"%@", [feedsArray[0] valueForKey: @"timestamp"]];
  
    self.deviceTemperatureLabel.text = [NSString stringWithFormat:@"%@", [feedsArray[0] valueForKey: @"temp"]];
    self.deviceHumidityLabel.text = [NSString stringWithFormat:@"%@", [feedsArray[0] valueForKey: @"hum"]];
    self.deviceLightLabel.text = [NSString stringWithFormat:@"%@", [feedsArray[0] valueForKey: @"light"]];
    self.deviceNoiseLabel.text = [NSString stringWithFormat:@"%@", [feedsArray[0] valueForKey: @"noise"]];
    self.deviceCOLabel.text = [NSString stringWithFormat:@"%@", [feedsArray[0] valueForKey: @"co"]];
    self.deviceNO2pLabel.text = [NSString stringWithFormat:@"%@", [feedsArray[0] valueForKey: @"no2"]];
    self.deviceNetsLabel.text = [NSString stringWithFormat:@"%@", [feedsArray[0] valueForKey: @"nets"]];
    self.devicePanelLabel.text = [NSString stringWithFormat:@"%@", [feedsArray[0] valueForKey: @"panel"]];
    
    self.devicePanelLabel.text = [NSString stringWithFormat:@"%@", [feedsArray[0] valueForKey: @"bat"]];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
