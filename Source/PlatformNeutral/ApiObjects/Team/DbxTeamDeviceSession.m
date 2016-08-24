///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamDeviceSession.h"

@implementation DbxTeamDeviceSession 

- (instancetype)initWithSessionId:(NSString *)sessionId ipAddress:(NSString *)ipAddress country:(NSString *)country created:(NSDate *)created updated:(NSDate *)updated {

    self = [super init];
    if (self != nil) {
        _sessionId = sessionId;
        _ipAddress = ipAddress;
        _country = country;
        _created = created;
        _updated = updated;
    }
    return self;
}

- (instancetype)initWithSessionId:(NSString *)sessionId {
    return [self initWithSessionId:sessionId ipAddress:nil country:nil created:nil updated:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamDeviceSessionSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamDeviceSessionSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamDeviceSessionSerializer serialize:self] description];
}

@end


@implementation DbxTeamDeviceSessionSerializer 

+ (NSDictionary *)serialize:(DbxTeamDeviceSession *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"session_id"] = [DbxStringSerializer serialize:valueObj.sessionId];
    if (valueObj.ipAddress) {
        jsonDict[@"ip_address"] = [DbxStringSerializer serialize:valueObj.ipAddress];
    }
    if (valueObj.country) {
        jsonDict[@"country"] = [DbxStringSerializer serialize:valueObj.country];
    }
    if (valueObj.created) {
        jsonDict[@"created"] = [DbxNSDateSerializer serialize:valueObj.created dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    }
    if (valueObj.updated) {
        jsonDict[@"updated"] = [DbxNSDateSerializer serialize:valueObj.updated dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    }

    return jsonDict;
}

+ (DbxTeamDeviceSession *)deserialize:(NSDictionary *)valueDict {
    NSString *sessionId = [DbxStringSerializer deserialize:valueDict[@"session_id"]];
    NSString *ipAddress = valueDict[@"ip_address"] != nil ? [DbxStringSerializer deserialize:valueDict[@"ip_address"]] : nil;
    NSString *country = valueDict[@"country"] != nil ? [DbxStringSerializer deserialize:valueDict[@"country"]] : nil;
    NSDate *created = valueDict[@"created"] != nil ? [DbxNSDateSerializer deserialize:valueDict[@"created"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"] : nil;
    NSDate *updated = valueDict[@"updated"] != nil ? [DbxNSDateSerializer deserialize:valueDict[@"updated"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"] : nil;

    return [[DbxTeamDeviceSession alloc] initWithSessionId:sessionId ipAddress:ipAddress country:country created:created updated:updated];
}

@end
