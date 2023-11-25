//
//  Map.m
//  FOLO
//
//  Created by Todd Duberstein on 7/31/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import "Map.h"

@interface Map ()

@end

@implementation Map

- (void) viewDidLoad {
    
    //Controls whether the My Location dot and accuracy circle is enabled.
    
    self->_mapView.myLocationEnabled = YES;
    
    //Controls the type of map tiles that should be displayed.
    
    self->_mapView.mapType = kGMSTypeNormal;
    
    //Shows the compass button on the map
    
    self->_mapView.settings.compassButton = YES;
    
    //Shows the my location button on the map
    
    self->_mapView.settings.myLocationButton = YES;
    
    //Sets the view controller to be the GMSMapView delegate
    
    self->_mapView.delegate = self;
    
    //- See more at: http://vikrambahl.com/google-maps-ios-xcode-storyboards/#sthash.vEIirbas.dpuf
    
    [super viewDidLoad];
}

- (void) didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
