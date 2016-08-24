///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingMemberSelector.h"
#import "DbxSharingRemoveFolderMemberArg.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingRemoveFolderMemberArg 

- (instancetype)initWithSharedFolderId:(NSString *)sharedFolderId member:(DbxSharingMemberSelector *)member leaveACopy:(NSNumber *)leaveACopy {
    [DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"[-_0-9a-zA-Z:]+"](sharedFolderId);

    self = [super init];
    if (self != nil) {
        _sharedFolderId = sharedFolderId;
        _member = member;
        _leaveACopy = leaveACopy;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingRemoveFolderMemberArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingRemoveFolderMemberArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingRemoveFolderMemberArgSerializer serialize:self] description];
}

@end


@implementation DbxSharingRemoveFolderMemberArgSerializer 

+ (NSDictionary *)serialize:(DbxSharingRemoveFolderMemberArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"shared_folder_id"] = [DbxStringSerializer serialize:valueObj.sharedFolderId];
    jsonDict[@"member"] = [DbxSharingMemberSelectorSerializer serialize:valueObj.member];
    jsonDict[@"leave_a_copy"] = [DbxBoolSerializer serialize:valueObj.leaveACopy];

    return jsonDict;
}

+ (DbxSharingRemoveFolderMemberArg *)deserialize:(NSDictionary *)valueDict {
    NSString *sharedFolderId = [DbxStringSerializer deserialize:valueDict[@"shared_folder_id"]];
    DbxSharingMemberSelector *member = [DbxSharingMemberSelectorSerializer deserialize:valueDict[@"member"]];
    NSNumber *leaveACopy = [DbxBoolSerializer deserialize:valueDict[@"leave_a_copy"]];

    return [[DbxSharingRemoveFolderMemberArg alloc] initWithSharedFolderId:sharedFolderId member:member leaveACopy:leaveACopy];
}

@end
