//
//  GameLayer.h
//  Starcraft2MatchGame
//
//  Created by Yachao Liu on 10/13/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

typedef enum
{
    mainMenuBackgroundTag,
    gameBackgroundTag,
}ImageTags;

@interface Game : CCLayer
{
    //test change
}

+(id) scene;

@end
