///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamListMembersDevicesResult.h"
#import "DbxTeamMemberDevices.h"

@implementation DbxTeamListMembersDevicesResult 

- (instancetype)initWithDevices:(NSArray<DbxTeamMemberDevices *> *)devices hasMore:(NSNumber *)hasMore cursor:(NSString *)cursor {
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](devices);

    self = [super init];
    if (self != nil) {
        _devices = devices;
        _hasMore = hasMore;
        _cursor = cursor;
    }
    return self;
}

- (instancetype)initWithDevices:(NSArray<DbxTeamMemberDevices *> *)devices hasMore:(NSNumber *)hasMore {
    return [self initWithDevices:devices hasMore:hasMore cursor:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamListMembersDevicesResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamListMembersDevicesResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamListMembersDevicesResultSerializer serialize:self] description];
}

@end


@implementation DbxTeamListMembersDevicesResultSerializer 

+ (NSDictionary *)serialize:(DbxTeamListMembersDevicesResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"devices"] = [DbxArraySerializer serialize:valueObj.devices withBlock:^id(id elem) { return [DbxTeamMemberDevicesSerializer serialize:elem]; }];
    jsonDict[@"has_more"] = [DbxBoolSerializer serialize:valueObj.hasMore];
    if (valueObj.cursor) {
        jsonDict[@"cursor"] = [DbxStringSerializer serialize:valueObj.cursor];
    }

    return jsonDict;
}

+ (DbxTeamListMembersDevicesResult *)deserialize:(NSDictionary *)valueDict {
    NSArray<DbxTeamMemberDevices *> *devices = [DbxArraySerializer deserialize:valueDict[@"devices"] withBlock:^id(id elem) { return [DbxTeamMemberDevicesSerializer deserialize:elem]; }];
    NSNumber *hasMore = [DbxBoolSerializer deserialize:valueDict[@"has_more"]];
    NSString *cursor = valueDict[@"cursor"] != nil ? [DbxStringSerializer deserialize:valueDict[@"cursor"]] : nil;

    return [[DbxTeamListMembersDevicesResult alloc] initWithDevices:devices hasMore:hasMore cursor:cursor];
}

@end
