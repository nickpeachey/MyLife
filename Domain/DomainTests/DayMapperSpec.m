//
//  DayMapperSpec.m
//  Domain
//
//  Created by Nick Peachey on 30/05/2014.
//  Copyright 2014 Cawooka. All rights reserved.
//

#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "DayMapper.h"
#import "Day.h"


SpecBegin(DayMapper)

describe(@"DayMapper", ^{
    
    beforeAll(^{

    });
    
    beforeEach(^{

    });
    
    it(@"should not map day object without data", ^{
        DayMapper *mapper = [[DayMapper alloc] initWithData:nil];
        Day *day = [mapper build];
        expect(day).to.beNil();
    });  
    
    afterEach(^{

    });
    
    afterAll(^{

    });
});

SpecEnd
