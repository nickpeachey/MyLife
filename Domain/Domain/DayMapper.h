//
//  DayMapper.h
//  Domain
//
//  Created by Nick Peachey on 30/05/2014.
//  Copyright (c) 2014 Cawooka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Day.h"

@interface DayMapper : NSObject

-(id)initWithData:(NSDictionary *)dictionary;
-(Day *)build;

@end
