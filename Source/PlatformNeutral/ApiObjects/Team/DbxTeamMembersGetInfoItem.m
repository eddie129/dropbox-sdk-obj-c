///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamMembersGetInfoItem.h"
#import "DbxTeamTeamMemberInfo.h"

@implementation DbxTeamMembersGetInfoItem 

- (instancetype)initWithIdNotFound:(NSString *)idNotFound {
    self = [super init];
    if (self != nil) {
        _tag = (TeamMembersGetInfoItemTag)TeamMembersGetInfoItemIdNotFound;
        _idNotFound = idNotFound;
    }
    return self;
}

- (instancetype)initWithMemberInfo:(DbxTeamTeamMemberInfo *)memberInfo {
    self = [super init];
    if (self != nil) {
        _tag = (TeamMembersGetInfoItemTag)TeamMembersGetInfoItemMemberInfo;
        _memberInfo = memberInfo;
    }
    return self;
}

- (BOOL)isIdNotFound {
    return _tag == (TeamMembersGetInfoItemTag)TeamMembersGetInfoItemIdNotFound;
}

- (BOOL)isMemberInfo {
    return _tag == (TeamMembersGetInfoItemTag)TeamMembersGetInfoItemMemberInfo;
}

- (NSString *)getTagName {
    if (_tag == (TeamMembersGetInfoItemTag)TeamMembersGetInfoItemIdNotFound) {
        return @"(TeamMembersGetInfoItemTag)TeamMembersGetInfoItemIdNotFound";
    }
    if (_tag == (TeamMembersGetInfoItemTag)TeamMembersGetInfoItemMemberInfo) {
        return @"(TeamMembersGetInfoItemTag)TeamMembersGetInfoItemMemberInfo";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (NSString *)idNotFound {
    if (_tag != (TeamMembersGetInfoItemTag)TeamMembersGetInfoItemIdNotFound) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (TeamMembersGetInfoItemTag)TeamMembersGetInfoItemIdNotFound, but was %@.", [self getTagName]];
    }
    return _idNotFound;
}

- (DbxTeamTeamMemberInfo *)memberInfo {
    if (_tag != (TeamMembersGetInfoItemTag)TeamMembersGetInfoItemMemberInfo) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (TeamMembersGetInfoItemTag)TeamMembersGetInfoItemMemberInfo, but was %@.", [self getTagName]];
    }
    return _memberInfo;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamMembersGetInfoItemSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamMembersGetInfoItemSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamMembersGetInfoItemSerializer serialize:self] description];
}

@end


@implementation DbxTeamMembersGetInfoItemSerializer 

+ (NSDictionary *)serialize:(DbxTeamMembersGetInfoItem *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isIdNotFound]) {
        jsonDict[@"id_not_found"] = [DbxStringSerializer serialize:valueObj.idNotFound];
        jsonDict[@".tag"] = @"id_not_found";
    }
    else if ([valueObj isMemberInfo]) {
        jsonDict = [[DbxTeamTeamMemberInfoSerializer serialize:valueObj.memberInfo] mutableCopy];
        jsonDict[@".tag"] = @"member_info";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxTeamMembersGetInfoItem *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"id_not_found"]) {
        NSString *idNotFound = [DbxStringSerializer deserialize:valueDict[@"id_not_found"]];
        return [[DbxTeamMembersGetInfoItem alloc] initWithIdNotFound:idNotFound];
    }
    if ([tag isEqualToString:@"member_info"]) {
        DbxTeamTeamMemberInfo *memberInfo = [DbxTeamTeamMemberInfoSerializer deserialize:valueDict];
        return [[DbxTeamMembersGetInfoItem alloc] initWithMemberInfo:memberInfo];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
