//
//  Card.m
//  Starcraft2MatchGame
//
//  Created by Yachao Liu on 10/14/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "Card.h"


@implementation Card

@synthesize cardID, cardName, isFlipped;


-(id) initWithIDAndNameAndFile:(NSString *)cID cardName:(NSString *)cName fileName:(NSString *)image
{
    if((self = [super initWithFile:image]))
    {
        cardID = cID;
        cardName = cName;
        isFlipped = NO;
    }
    
    return self;
}

@end
