///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamGroupAccessType.h"
#import "DbxTeamMemberAccess.h"
#import "DbxTeamUserSelectorArg.h"

@implementation DbxTeamMemberAccess 

- (instancetype)initWithUser:(DbxTeamUserSelectorArg *)user accessType:(DbxTeamGroupAccessType *)accessType {

    self = [super init];
    if (self != nil) {
        _user = user;
        _accessType = accessType;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamMemberAccessSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamMemberAccessSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamMemberAccessSerializer serialize:self] description];
}

@end


@implementation DbxTeamMemberAccessSerializer 

+ (NSDictionary *)serialize:(DbxTeamMemberAccess *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"user"] = [DbxTeamUserSelectorArgSerializer serialize:valueObj.user];
    jsonDict[@"access_type"] = [DbxTeamGroupAccessTypeSerializer serialize:valueObj.accessType];

    return jsonDict;
}

+ (DbxTeamMemberAccess *)deserialize:(NSDictionary *)valueDict {
    DbxTeamUserSelectorArg *user = [DbxTeamUserSelectorArgSerializer deserialize:valueDict[@"user"]];
    DbxTeamGroupAccessType *accessType = [DbxTeamGroupAccessTypeSerializer deserialize:valueDict[@"access_type"]];

    return [[DbxTeamMemberAccess alloc] initWithUser:user accessType:accessType];
}

@end
