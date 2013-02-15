//
//  PlayingCard.h
//  Matchismo
//
//  Created by David Hopp on 2/15/13.
//  Copyright (c) 2013 Agape Red. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end