//
//  ViewController.m
//  MapsTest
//
//  Created by Vishnu Prem on 18/12/13.
//  Copyright (c) 2013 Vishnu Prem. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>

@interface ViewController ()

@end

CLLocationManager *locationManager;

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    [locationManager startUpdatingLocation];
    
    CLLocationCoordinate2D coordinate1 = {1.306391, 103.827908 };
    NSDictionary *address1 = @{@"Country": @"Singapore"};
    MKPlacemark *tpl = [[MKPlacemark alloc] initWithCoordinate:coordinate1 addressDictionary:address1];
    [self.mapView addAnnotation:tpl];
    [self.mapView setCenterCoordinate:coordinate1 animated:YES];
}

- (void)locationManager:(CLLocationManager *)manager
	 didUpdateLocations:(NSArray *)locations{
    CLLocation *location = locations[0];
    NSLog(@"Lat:%f, Lng:%f, Accuracy:%f", location.coordinate.latitude, location.coordinate.longitude, location.horizontalAccuracy);
    
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];

    [geocoder reverseGeocodeLocation:location completionHandler:^(NSArray *placemarks, NSError *error) {
        CLPlacemark *placemark = placemarks[0];
        NSLog(@"%@",placemark.addressDictionary);
    }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeMapType:(id)sender {
    UISegmentedControl *control = (UISegmentedControl*)sender;
    if (control.selectedSegmentIndex == 0) {
        self.mapView.mapType = MKMapTypeStandard;
    } else {
        self.mapView.mapType = MKMapTypeSatellite;
    }
}



@end












