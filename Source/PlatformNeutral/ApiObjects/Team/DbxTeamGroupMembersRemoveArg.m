///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamGroupMembersRemoveArg.h"
#import "DbxTeamGroupSelector.h"
#import "DbxTeamIncludeMembersArg.h"
#import "DbxTeamUserSelectorArg.h"

@implementation DbxTeamGroupMembersRemoveArg 

- (instancetype)initWithGroup:(DbxTeamGroupSelector *)group users:(NSArray<DbxTeamUserSelectorArg *> *)users returnMembers:(NSNumber *)returnMembers {
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](users);

    self = [super initWithReturnMembers:returnMembers];
    if (self != nil) {
        _group = group;
        _users = users;
    }
    return self;
}

- (instancetype)initWithGroup:(DbxTeamGroupSelector *)group users:(NSArray<DbxTeamUserSelectorArg *> *)users {
    return [self initWithGroup:group users:users returnMembers:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamGroupMembersRemoveArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamGroupMembersRemoveArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamGroupMembersRemoveArgSerializer serialize:self] description];
}

@end


@implementation DbxTeamGroupMembersRemoveArgSerializer 

+ (NSDictionary *)serialize:(DbxTeamGroupMembersRemoveArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"group"] = [DbxTeamGroupSelectorSerializer serialize:valueObj.group];
    jsonDict[@"users"] = [DbxArraySerializer serialize:valueObj.users withBlock:^id(id elem) { return [DbxTeamUserSelectorArgSerializer serialize:elem]; }];
    jsonDict[@"return_members"] = [DbxBoolSerializer serialize:valueObj.returnMembers];

    return jsonDict;
}

+ (DbxTeamGroupMembersRemoveArg *)deserialize:(NSDictionary *)valueDict {
    DbxTeamGroupSelector *group = [DbxTeamGroupSelectorSerializer deserialize:valueDict[@"group"]];
    NSArray<DbxTeamUserSelectorArg *> *users = [DbxArraySerializer deserialize:valueDict[@"users"] withBlock:^id(id elem) { return [DbxTeamUserSelectorArgSerializer deserialize:elem]; }];
    NSNumber *returnMembers = [DbxBoolSerializer deserialize:valueDict[@"return_members"]];

    return [[DbxTeamGroupMembersRemoveArg alloc] initWithGroup:group users:users returnMembers:returnMembers];
}

@end
