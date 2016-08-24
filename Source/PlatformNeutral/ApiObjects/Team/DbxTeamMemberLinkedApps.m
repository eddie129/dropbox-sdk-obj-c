///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamApiApp.h"
#import "DbxTeamMemberLinkedApps.h"

@implementation DbxTeamMemberLinkedApps 

- (instancetype)initWithTeamMemberId:(NSString *)teamMemberId linkedApiApps:(NSArray<DbxTeamApiApp *> *)linkedApiApps {
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](linkedApiApps);

    self = [super init];
    if (self != nil) {
        _teamMemberId = teamMemberId;
        _linkedApiApps = linkedApiApps;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamMemberLinkedAppsSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamMemberLinkedAppsSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamMemberLinkedAppsSerializer serialize:self] description];
}

@end


@implementation DbxTeamMemberLinkedAppsSerializer 

+ (NSDictionary *)serialize:(DbxTeamMemberLinkedApps *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"team_member_id"] = [DbxStringSerializer serialize:valueObj.teamMemberId];
    jsonDict[@"linked_api_apps"] = [DbxArraySerializer serialize:valueObj.linkedApiApps withBlock:^id(id elem) { return [DbxTeamApiAppSerializer serialize:elem]; }];

    return jsonDict;
}

+ (DbxTeamMemberLinkedApps *)deserialize:(NSDictionary *)valueDict {
    NSString *teamMemberId = [DbxStringSerializer deserialize:valueDict[@"team_member_id"]];
    NSArray<DbxTeamApiApp *> *linkedApiApps = [DbxArraySerializer deserialize:valueDict[@"linked_api_apps"] withBlock:^id(id elem) { return [DbxTeamApiAppSerializer deserialize:elem]; }];

    return [[DbxTeamMemberLinkedApps alloc] initWithTeamMemberId:teamMemberId linkedApiApps:linkedApiApps];
}

@end
