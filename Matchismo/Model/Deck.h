//
//  Deck.h
//  Matchismo
//
//  Created by David Hopp on 2/8/13.
//  Copyright (c) 2013 Agape Red. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (Card *)drawRandomCard;

@end
