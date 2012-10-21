//
//  Card.h
//  Starcraft2MatchGame
//
//  Created by Yachao Liu on 10/14/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface Card : CCSprite
{
    __weak NSString *cardID;
    __weak NSString *cardName;
    BOOL isFlipped;
}

@property (nonatomic, weak) NSString *cardID;
@property (nonatomic, weak) NSString *cardName;
@property (nonatomic, assign) BOOL isFlipped;

//-(id) init;
-(id) initWithIDAndNameAndFile:(NSString *)cID cardName:(NSString *)cName fileName:(NSString *)image;

@end
