//
//  Theme.h
//  2048
//
//  Created by Todd Duberstein on 11/15/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Theme <NSObject>

/** The background color of the board base. */
+ (UIColor *)boardColor;

/** The background color of the entire scene. */
+ (UIColor *)backgroundColor;

/** The background color of the score board. */
+ (UIColor *)scoreBoardColor;

/** The background color of the button. */
+ (UIColor *)buttonColor;

/** The name of the bold font. */
+ (NSString *)boldFontName;

/** The name of the regular font. */
+ (NSString *)regularFontName;

/**
 * The color for the given level. If level is greater than 15, return the color for Level 15.
 *
 * @param level The level of the tile.
 */
+ (UIColor *)colorForLevel:(NSInteger)level;


/**
 * The text color for the given level. If level is greater than 15, return the color for Level 15.
 *
 * @param level The level of the tile.
 */
+ (UIColor *)textColorForLevel:(NSInteger)level;

@end


@interface Theme : NSObject

/**
 * The theme we are using.
 *
 * @param type The index of the theme.
 */
+ (Class)themeClassForType:(NSInteger)type;

@end
