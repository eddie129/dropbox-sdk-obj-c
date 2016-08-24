///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxUsersIndividualSpaceAllocation.h"
#import "DbxUsersSpaceAllocation.h"
#import "DbxUsersTeamSpaceAllocation.h"

@implementation DbxUsersSpaceAllocation 

- (instancetype)initWithIndividual:(DbxUsersIndividualSpaceAllocation *)individual {
    self = [super init];
    if (self != nil) {
        _tag = (UsersSpaceAllocationTag)UsersSpaceAllocationIndividual;
        _individual = individual;
    }
    return self;
}

- (instancetype)initWithTeam:(DbxUsersTeamSpaceAllocation *)team {
    self = [super init];
    if (self != nil) {
        _tag = (UsersSpaceAllocationTag)UsersSpaceAllocationTeam;
        _team = team;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (UsersSpaceAllocationTag)UsersSpaceAllocationOther;
    }
    return self;
}

- (BOOL)isIndividual {
    return _tag == (UsersSpaceAllocationTag)UsersSpaceAllocationIndividual;
}

- (BOOL)isTeam {
    return _tag == (UsersSpaceAllocationTag)UsersSpaceAllocationTeam;
}

- (BOOL)isOther {
    return _tag == (UsersSpaceAllocationTag)UsersSpaceAllocationOther;
}

- (NSString *)getTagName {
    if (_tag == (UsersSpaceAllocationTag)UsersSpaceAllocationIndividual) {
        return @"(UsersSpaceAllocationTag)UsersSpaceAllocationIndividual";
    }
    if (_tag == (UsersSpaceAllocationTag)UsersSpaceAllocationTeam) {
        return @"(UsersSpaceAllocationTag)UsersSpaceAllocationTeam";
    }
    if (_tag == (UsersSpaceAllocationTag)UsersSpaceAllocationOther) {
        return @"(UsersSpaceAllocationTag)UsersSpaceAllocationOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxUsersIndividualSpaceAllocation *)individual {
    if (_tag != (UsersSpaceAllocationTag)UsersSpaceAllocationIndividual) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (UsersSpaceAllocationTag)UsersSpaceAllocationIndividual, but was %@.", [self getTagName]];
    }
    return _individual;
}

- (DbxUsersTeamSpaceAllocation *)team {
    if (_tag != (UsersSpaceAllocationTag)UsersSpaceAllocationTeam) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (UsersSpaceAllocationTag)UsersSpaceAllocationTeam, but was %@.", [self getTagName]];
    }
    return _team;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxUsersSpaceAllocationSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxUsersSpaceAllocationSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxUsersSpaceAllocationSerializer serialize:self] description];
}

@end


@implementation DbxUsersSpaceAllocationSerializer 

+ (NSDictionary *)serialize:(DbxUsersSpaceAllocation *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isIndividual]) {
        jsonDict = [[DbxUsersIndividualSpaceAllocationSerializer serialize:valueObj.individual] mutableCopy];
        jsonDict[@".tag"] = @"individual";
    }
    else if ([valueObj isTeam]) {
        jsonDict = [[DbxUsersTeamSpaceAllocationSerializer serialize:valueObj.team] mutableCopy];
        jsonDict[@".tag"] = @"team";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxUsersSpaceAllocation *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"individual"]) {
        DbxUsersIndividualSpaceAllocation *individual = [DbxUsersIndividualSpaceAllocationSerializer deserialize:valueDict];
        return [[DbxUsersSpaceAllocation alloc] initWithIndividual:individual];
    }
    if ([tag isEqualToString:@"team"]) {
        DbxUsersTeamSpaceAllocation *team = [DbxUsersTeamSpaceAllocationSerializer deserialize:valueDict];
        return [[DbxUsersSpaceAllocation alloc] initWithTeam:team];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxUsersSpaceAllocation alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
