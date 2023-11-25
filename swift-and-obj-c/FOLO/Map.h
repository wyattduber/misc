//
//  Map.h
//  FOLO
//
//  Created by Todd Duberstein on 7/31/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>
#import <CoreFoundation/CoreFoundation.h>

@interface Map : UIViewController <GMSMapViewDelegate>

@property (strong, nonatomic) IBOutlet GMSMapView* mapView;
@end
