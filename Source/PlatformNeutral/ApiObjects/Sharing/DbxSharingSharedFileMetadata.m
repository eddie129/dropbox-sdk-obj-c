///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingFilePermission.h"
#import "DbxSharingFolderPolicy.h"
#import "DbxSharingSharedFileMetadata.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxUsersTeam.h"

@implementation DbxSharingSharedFileMetadata 

- (instancetype)initWithPolicy:(DbxSharingFolderPolicy *)policy previewUrl:(NSString *)previewUrl name:(NSString *)name id_:(NSString *)id_ permissions:(NSArray<DbxSharingFilePermission *> *)permissions ownerTeam:(DbxUsersTeam *)ownerTeam parentSharedFolderId:(NSString *)parentSharedFolderId pathLower:(NSString *)pathLower pathDisplay:(NSString *)pathDisplay {
    [DbxStoneValidators stringValidator:[NSNumber numberWithInt:1] maxLength:nil pattern:@"id:.*"](id_);
    [DbxStoneValidators nullableValidator:[DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil]](permissions);
    [DbxStoneValidators nullableValidator:[DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"[-_0-9a-zA-Z:]+"]](parentSharedFolderId);

    self = [super init];
    if (self != nil) {
        _policy = policy;
        _permissions = permissions;
        _ownerTeam = ownerTeam;
        _parentSharedFolderId = parentSharedFolderId;
        _previewUrl = previewUrl;
        _pathLower = pathLower;
        _pathDisplay = pathDisplay;
        _name = name;
        _id_ = id_;
    }
    return self;
}

- (instancetype)initWithPolicy:(DbxSharingFolderPolicy *)policy previewUrl:(NSString *)previewUrl name:(NSString *)name id_:(NSString *)id_ {
    return [self initWithPolicy:policy previewUrl:previewUrl name:name id_:id_ permissions:nil ownerTeam:nil parentSharedFolderId:nil pathLower:nil pathDisplay:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingSharedFileMetadataSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingSharedFileMetadataSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingSharedFileMetadataSerializer serialize:self] description];
}

@end


@implementation DbxSharingSharedFileMetadataSerializer 

+ (NSDictionary *)serialize:(DbxSharingSharedFileMetadata *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"policy"] = [DbxSharingFolderPolicySerializer serialize:valueObj.policy];
    jsonDict[@"preview_url"] = [DbxStringSerializer serialize:valueObj.previewUrl];
    jsonDict[@"name"] = [DbxStringSerializer serialize:valueObj.name];
    jsonDict[@"id"] = [DbxStringSerializer serialize:valueObj.id_];
    if (valueObj.permissions) {
        jsonDict[@"permissions"] = [DbxArraySerializer serialize:valueObj.permissions withBlock:^id(id elem) { return [DbxSharingFilePermissionSerializer serialize:elem]; }];
    }
    if (valueObj.ownerTeam) {
        jsonDict[@"owner_team"] = [DbxUsersTeamSerializer serialize:valueObj.ownerTeam];
    }
    if (valueObj.parentSharedFolderId) {
        jsonDict[@"parent_shared_folder_id"] = [DbxStringSerializer serialize:valueObj.parentSharedFolderId];
    }
    if (valueObj.pathLower) {
        jsonDict[@"path_lower"] = [DbxStringSerializer serialize:valueObj.pathLower];
    }
    if (valueObj.pathDisplay) {
        jsonDict[@"path_display"] = [DbxStringSerializer serialize:valueObj.pathDisplay];
    }

    return jsonDict;
}

+ (DbxSharingSharedFileMetadata *)deserialize:(NSDictionary *)valueDict {
    DbxSharingFolderPolicy *policy = [DbxSharingFolderPolicySerializer deserialize:valueDict[@"policy"]];
    NSString *previewUrl = [DbxStringSerializer deserialize:valueDict[@"preview_url"]];
    NSString *name = [DbxStringSerializer deserialize:valueDict[@"name"]];
    NSString *id_ = [DbxStringSerializer deserialize:valueDict[@"id"]];
    NSArray<DbxSharingFilePermission *> *permissions = valueDict[@"permissions"] != nil ? [DbxArraySerializer deserialize:valueDict[@"permissions"] withBlock:^id(id elem) { return [DbxSharingFilePermissionSerializer deserialize:elem]; }] : nil;
    DbxUsersTeam *ownerTeam = valueDict[@"owner_team"] != nil ? [DbxUsersTeamSerializer deserialize:valueDict[@"owner_team"]] : nil;
    NSString *parentSharedFolderId = valueDict[@"parent_shared_folder_id"] != nil ? [DbxStringSerializer deserialize:valueDict[@"parent_shared_folder_id"]] : nil;
    NSString *pathLower = valueDict[@"path_lower"] != nil ? [DbxStringSerializer deserialize:valueDict[@"path_lower"]] : nil;
    NSString *pathDisplay = valueDict[@"path_display"] != nil ? [DbxStringSerializer deserialize:valueDict[@"path_display"]] : nil;

    return [[DbxSharingSharedFileMetadata alloc] initWithPolicy:policy previewUrl:previewUrl name:name id_:id_ permissions:permissions ownerTeam:ownerTeam parentSharedFolderId:parentSharedFolderId pathLower:pathLower pathDisplay:pathDisplay];
}

@end
