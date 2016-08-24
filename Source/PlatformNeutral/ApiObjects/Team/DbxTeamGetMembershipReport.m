///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamBaseDfbReport.h"
#import "DbxTeamGetMembershipReport.h"

@implementation DbxTeamGetMembershipReport 

- (instancetype)initWithStartDate:(NSString *)startDate teamSize:(NSArray<NSNumber *> *)teamSize pendingInvites:(NSArray<NSNumber *> *)pendingInvites membersJoined:(NSArray<NSNumber *> *)membersJoined suspendedMembers:(NSArray<NSNumber *> *)suspendedMembers licenses:(NSArray<NSNumber *> *)licenses {
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](teamSize);
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](pendingInvites);
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](membersJoined);
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](suspendedMembers);
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](licenses);

    self = [super initWithStartDate:startDate];
    if (self != nil) {
        _teamSize = teamSize;
        _pendingInvites = pendingInvites;
        _membersJoined = membersJoined;
        _suspendedMembers = suspendedMembers;
        _licenses = licenses;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamGetMembershipReportSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamGetMembershipReportSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamGetMembershipReportSerializer serialize:self] description];
}

@end


@implementation DbxTeamGetMembershipReportSerializer 

+ (NSDictionary *)serialize:(DbxTeamGetMembershipReport *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"start_date"] = [DbxStringSerializer serialize:valueObj.startDate];
    jsonDict[@"team_size"] = [DbxArraySerializer serialize:valueObj.teamSize withBlock:^id(id elem) { return [DbxNSNumberSerializer serialize:elem]; }];
    jsonDict[@"pending_invites"] = [DbxArraySerializer serialize:valueObj.pendingInvites withBlock:^id(id elem) { return [DbxNSNumberSerializer serialize:elem]; }];
    jsonDict[@"members_joined"] = [DbxArraySerializer serialize:valueObj.membersJoined withBlock:^id(id elem) { return [DbxNSNumberSerializer serialize:elem]; }];
    jsonDict[@"suspended_members"] = [DbxArraySerializer serialize:valueObj.suspendedMembers withBlock:^id(id elem) { return [DbxNSNumberSerializer serialize:elem]; }];
    jsonDict[@"licenses"] = [DbxArraySerializer serialize:valueObj.licenses withBlock:^id(id elem) { return [DbxNSNumberSerializer serialize:elem]; }];

    return jsonDict;
}

+ (DbxTeamGetMembershipReport *)deserialize:(NSDictionary *)valueDict {
    NSString *startDate = [DbxStringSerializer deserialize:valueDict[@"start_date"]];
    NSArray<NSNumber *> *teamSize = [DbxArraySerializer deserialize:valueDict[@"team_size"] withBlock:^id(id elem) { return [DbxNSNumberSerializer deserialize:elem]; }];
    NSArray<NSNumber *> *pendingInvites = [DbxArraySerializer deserialize:valueDict[@"pending_invites"] withBlock:^id(id elem) { return [DbxNSNumberSerializer deserialize:elem]; }];
    NSArray<NSNumber *> *membersJoined = [DbxArraySerializer deserialize:valueDict[@"members_joined"] withBlock:^id(id elem) { return [DbxNSNumberSerializer deserialize:elem]; }];
    NSArray<NSNumber *> *suspendedMembers = [DbxArraySerializer deserialize:valueDict[@"suspended_members"] withBlock:^id(id elem) { return [DbxNSNumberSerializer deserialize:elem]; }];
    NSArray<NSNumber *> *licenses = [DbxArraySerializer deserialize:valueDict[@"licenses"] withBlock:^id(id elem) { return [DbxNSNumberSerializer deserialize:elem]; }];

    return [[DbxTeamGetMembershipReport alloc] initWithStartDate:startDate teamSize:teamSize pendingInvites:pendingInvites membersJoined:membersJoined suspendedMembers:suspendedMembers licenses:licenses];
}

@end
