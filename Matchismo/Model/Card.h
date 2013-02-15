//
//  Card.h
//  Matchismo
//
//  Created by David Hopp on 2/8/13.
//  Copyright (c) 2013 Agape Red. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isFaceUp) BOOL faceUp;
@property (nonatomic, getter = isUplayable) BOOL unplayable;

- (int) match:(NSArray *)otherCards;

@end
