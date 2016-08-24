/// 
/// Stone Route Objects
/// 

#import "DbxSharingRouteObjects.h"
#import "DbxSharingRoutes.h"
#import "DbxStoneBase.h"

@implementation DbxSharingRouteObjects 

static DbxRoute *dbxSharingAddFileMember = nil;
static DbxRoute *dbxSharingAddFolderMember = nil;
static DbxRoute *dbxSharingChangeFileMemberAccess = nil;
static DbxRoute *dbxSharingCheckJobStatus = nil;
static DbxRoute *dbxSharingCheckRemoveMemberJobStatus = nil;
static DbxRoute *dbxSharingCheckShareJobStatus = nil;
static DbxRoute *dbxSharingCreateSharedLink = nil;
static DbxRoute *dbxSharingCreateSharedLinkWithSettings = nil;
static DbxRoute *dbxSharingGetFileMetadata = nil;
static DbxRoute *dbxSharingGetFileMetadataBatch = nil;
static DbxRoute *dbxSharingGetFolderMetadata = nil;
static DbxRoute *dbxSharingGetSharedLinkFile = nil;
static DbxRoute *dbxSharingGetSharedLinkMetadata = nil;
static DbxRoute *dbxSharingGetSharedLinks = nil;
static DbxRoute *dbxSharingListFileMembers = nil;
static DbxRoute *dbxSharingListFileMembersBatch = nil;
static DbxRoute *dbxSharingListFileMembersContinue = nil;
static DbxRoute *dbxSharingListFolderMembers = nil;
static DbxRoute *dbxSharingListFolderMembersContinue = nil;
static DbxRoute *dbxSharingListFolders = nil;
static DbxRoute *dbxSharingListFoldersContinue = nil;
static DbxRoute *dbxSharingListMountableFolders = nil;
static DbxRoute *dbxSharingListMountableFoldersContinue = nil;
static DbxRoute *dbxSharingListReceivedFiles = nil;
static DbxRoute *dbxSharingListReceivedFilesContinue = nil;
static DbxRoute *dbxSharingListSharedLinks = nil;
static DbxRoute *dbxSharingModifySharedLinkSettings = nil;
static DbxRoute *dbxSharingMountFolder = nil;
static DbxRoute *dbxSharingRelinquishFileMembership = nil;
static DbxRoute *dbxSharingRelinquishFolderMembership = nil;
static DbxRoute *dbxSharingRemoveFileMember = nil;
static DbxRoute *dbxSharingRemoveFileMember2 = nil;
static DbxRoute *dbxSharingRemoveFolderMember = nil;
static DbxRoute *dbxSharingRevokeSharedLink = nil;
static DbxRoute *dbxSharingShareFolder = nil;
static DbxRoute *dbxSharingTransferFolder = nil;
static DbxRoute *dbxSharingUnmountFolder = nil;
static DbxRoute *dbxSharingUnshareFile = nil;
static DbxRoute *dbxSharingUnshareFolder = nil;
static DbxRoute *dbxSharingUpdateFolderMember = nil;
static DbxRoute *dbxSharingUpdateFolderPolicy = nil;

+ (DbxRoute *)dbxSharingAddFileMember {
    if (!dbxSharingAddFileMember) {
        dbxSharingAddFileMember = [[DbxRoute alloc] init:
            @"add_file_member"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[NSArray<DbxSharingFileMemberActionResult *> class]
            errorType:[DbxSharingAddFileMemberError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:^id(id array) { return [DbxArraySerializer deserialize:array withBlock:^id(id elem) { return [DbxSharingFileMemberActionResultSerializer deserialize:elem]; }]; }
        ];
    }
    return dbxSharingAddFileMember;
}

+ (DbxRoute *)dbxSharingAddFolderMember {
    if (!dbxSharingAddFolderMember) {
        dbxSharingAddFolderMember = [[DbxRoute alloc] init:
            @"add_folder_member"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:nil
            errorType:[DbxSharingAddFolderMemberError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingAddFolderMember;
}

+ (DbxRoute *)dbxSharingChangeFileMemberAccess {
    if (!dbxSharingChangeFileMemberAccess) {
        dbxSharingChangeFileMemberAccess = [[DbxRoute alloc] init:
            @"change_file_member_access"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingFileMemberActionResult class]
            errorType:[DbxSharingFileMemberActionError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingChangeFileMemberAccess;
}

+ (DbxRoute *)dbxSharingCheckJobStatus {
    if (!dbxSharingCheckJobStatus) {
        dbxSharingCheckJobStatus = [[DbxRoute alloc] init:
            @"check_job_status"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingJobStatus class]
            errorType:[DbxAsyncPollError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingCheckJobStatus;
}

+ (DbxRoute *)dbxSharingCheckRemoveMemberJobStatus {
    if (!dbxSharingCheckRemoveMemberJobStatus) {
        dbxSharingCheckRemoveMemberJobStatus = [[DbxRoute alloc] init:
            @"check_remove_member_job_status"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingRemoveMemberJobStatus class]
            errorType:[DbxAsyncPollError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingCheckRemoveMemberJobStatus;
}

+ (DbxRoute *)dbxSharingCheckShareJobStatus {
    if (!dbxSharingCheckShareJobStatus) {
        dbxSharingCheckShareJobStatus = [[DbxRoute alloc] init:
            @"check_share_job_status"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingShareFolderJobStatus class]
            errorType:[DbxAsyncPollError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingCheckShareJobStatus;
}

+ (DbxRoute *)dbxSharingCreateSharedLink {
    if (!dbxSharingCreateSharedLink) {
        dbxSharingCreateSharedLink = [[DbxRoute alloc] init:
            @"create_shared_link"
            namespace_:@"sharing"
            deprecated:@YES
            resultType:[DbxSharingPathLinkMetadata class]
            errorType:[DbxSharingCreateSharedLinkError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingCreateSharedLink;
}

+ (DbxRoute *)dbxSharingCreateSharedLinkWithSettings {
    if (!dbxSharingCreateSharedLinkWithSettings) {
        dbxSharingCreateSharedLinkWithSettings = [[DbxRoute alloc] init:
            @"create_shared_link_with_settings"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingSharedLinkMetadata class]
            errorType:[DbxSharingCreateSharedLinkWithSettingsError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingCreateSharedLinkWithSettings;
}

+ (DbxRoute *)dbxSharingGetFileMetadata {
    if (!dbxSharingGetFileMetadata) {
        dbxSharingGetFileMetadata = [[DbxRoute alloc] init:
            @"get_file_metadata"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingSharedFileMetadata class]
            errorType:[DbxSharingGetFileMetadataError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingGetFileMetadata;
}

+ (DbxRoute *)dbxSharingGetFileMetadataBatch {
    if (!dbxSharingGetFileMetadataBatch) {
        dbxSharingGetFileMetadataBatch = [[DbxRoute alloc] init:
            @"get_file_metadata/batch"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[NSArray<DbxSharingGetFileMetadataBatchResult *> class]
            errorType:[DbxSharingSharingUserError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:^id(id array) { return [DbxArraySerializer deserialize:array withBlock:^id(id elem) { return [DbxSharingGetFileMetadataBatchResultSerializer deserialize:elem]; }]; }
        ];
    }
    return dbxSharingGetFileMetadataBatch;
}

+ (DbxRoute *)dbxSharingGetFolderMetadata {
    if (!dbxSharingGetFolderMetadata) {
        dbxSharingGetFolderMetadata = [[DbxRoute alloc] init:
            @"get_folder_metadata"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingSharedFolderMetadata class]
            errorType:[DbxSharingSharedFolderAccessError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingGetFolderMetadata;
}

+ (DbxRoute *)dbxSharingGetSharedLinkFile {
    if (!dbxSharingGetSharedLinkFile) {
        dbxSharingGetSharedLinkFile = [[DbxRoute alloc] init:
            @"get_shared_link_file"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingSharedLinkMetadata class]
            errorType:[DbxSharingGetSharedLinkFileError class]
            attrs:@{@"host": @"content",
                    @"style": @"download"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingGetSharedLinkFile;
}

+ (DbxRoute *)dbxSharingGetSharedLinkMetadata {
    if (!dbxSharingGetSharedLinkMetadata) {
        dbxSharingGetSharedLinkMetadata = [[DbxRoute alloc] init:
            @"get_shared_link_metadata"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingSharedLinkMetadata class]
            errorType:[DbxSharingSharedLinkError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingGetSharedLinkMetadata;
}

+ (DbxRoute *)dbxSharingGetSharedLinks {
    if (!dbxSharingGetSharedLinks) {
        dbxSharingGetSharedLinks = [[DbxRoute alloc] init:
            @"get_shared_links"
            namespace_:@"sharing"
            deprecated:@YES
            resultType:[DbxSharingGetSharedLinksResult class]
            errorType:[DbxSharingGetSharedLinksError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingGetSharedLinks;
}

+ (DbxRoute *)dbxSharingListFileMembers {
    if (!dbxSharingListFileMembers) {
        dbxSharingListFileMembers = [[DbxRoute alloc] init:
            @"list_file_members"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingSharedFileMembers class]
            errorType:[DbxSharingListFileMembersError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingListFileMembers;
}

+ (DbxRoute *)dbxSharingListFileMembersBatch {
    if (!dbxSharingListFileMembersBatch) {
        dbxSharingListFileMembersBatch = [[DbxRoute alloc] init:
            @"list_file_members/batch"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[NSArray<DbxSharingListFileMembersBatchResult *> class]
            errorType:[DbxSharingSharingUserError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:^id(id array) { return [DbxArraySerializer deserialize:array withBlock:^id(id elem) { return [DbxSharingListFileMembersBatchResultSerializer deserialize:elem]; }]; }
        ];
    }
    return dbxSharingListFileMembersBatch;
}

+ (DbxRoute *)dbxSharingListFileMembersContinue {
    if (!dbxSharingListFileMembersContinue) {
        dbxSharingListFileMembersContinue = [[DbxRoute alloc] init:
            @"list_file_members/continue"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingSharedFileMembers class]
            errorType:[DbxSharingListFileMembersContinueError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingListFileMembersContinue;
}

+ (DbxRoute *)dbxSharingListFolderMembers {
    if (!dbxSharingListFolderMembers) {
        dbxSharingListFolderMembers = [[DbxRoute alloc] init:
            @"list_folder_members"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingSharedFolderMembers class]
            errorType:[DbxSharingSharedFolderAccessError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingListFolderMembers;
}

+ (DbxRoute *)dbxSharingListFolderMembersContinue {
    if (!dbxSharingListFolderMembersContinue) {
        dbxSharingListFolderMembersContinue = [[DbxRoute alloc] init:
            @"list_folder_members/continue"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingSharedFolderMembers class]
            errorType:[DbxSharingListFolderMembersContinueError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingListFolderMembersContinue;
}

+ (DbxRoute *)dbxSharingListFolders {
    if (!dbxSharingListFolders) {
        dbxSharingListFolders = [[DbxRoute alloc] init:
            @"list_folders"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingListFoldersResult class]
            errorType:nil
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingListFolders;
}

+ (DbxRoute *)dbxSharingListFoldersContinue {
    if (!dbxSharingListFoldersContinue) {
        dbxSharingListFoldersContinue = [[DbxRoute alloc] init:
            @"list_folders/continue"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingListFoldersResult class]
            errorType:[DbxSharingListFoldersContinueError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingListFoldersContinue;
}

+ (DbxRoute *)dbxSharingListMountableFolders {
    if (!dbxSharingListMountableFolders) {
        dbxSharingListMountableFolders = [[DbxRoute alloc] init:
            @"list_mountable_folders"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingListFoldersResult class]
            errorType:nil
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingListMountableFolders;
}

+ (DbxRoute *)dbxSharingListMountableFoldersContinue {
    if (!dbxSharingListMountableFoldersContinue) {
        dbxSharingListMountableFoldersContinue = [[DbxRoute alloc] init:
            @"list_mountable_folders/continue"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingListFoldersResult class]
            errorType:[DbxSharingListFoldersContinueError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingListMountableFoldersContinue;
}

+ (DbxRoute *)dbxSharingListReceivedFiles {
    if (!dbxSharingListReceivedFiles) {
        dbxSharingListReceivedFiles = [[DbxRoute alloc] init:
            @"list_received_files"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingListFilesResult class]
            errorType:[DbxSharingSharingUserError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingListReceivedFiles;
}

+ (DbxRoute *)dbxSharingListReceivedFilesContinue {
    if (!dbxSharingListReceivedFilesContinue) {
        dbxSharingListReceivedFilesContinue = [[DbxRoute alloc] init:
            @"list_received_files/continue"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingListFilesResult class]
            errorType:[DbxSharingListFilesContinueError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingListReceivedFilesContinue;
}

+ (DbxRoute *)dbxSharingListSharedLinks {
    if (!dbxSharingListSharedLinks) {
        dbxSharingListSharedLinks = [[DbxRoute alloc] init:
            @"list_shared_links"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingListSharedLinksResult class]
            errorType:[DbxSharingListSharedLinksError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingListSharedLinks;
}

+ (DbxRoute *)dbxSharingModifySharedLinkSettings {
    if (!dbxSharingModifySharedLinkSettings) {
        dbxSharingModifySharedLinkSettings = [[DbxRoute alloc] init:
            @"modify_shared_link_settings"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingSharedLinkMetadata class]
            errorType:[DbxSharingModifySharedLinkSettingsError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingModifySharedLinkSettings;
}

+ (DbxRoute *)dbxSharingMountFolder {
    if (!dbxSharingMountFolder) {
        dbxSharingMountFolder = [[DbxRoute alloc] init:
            @"mount_folder"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingSharedFolderMetadata class]
            errorType:[DbxSharingMountFolderError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingMountFolder;
}

+ (DbxRoute *)dbxSharingRelinquishFileMembership {
    if (!dbxSharingRelinquishFileMembership) {
        dbxSharingRelinquishFileMembership = [[DbxRoute alloc] init:
            @"relinquish_file_membership"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:nil
            errorType:[DbxSharingRelinquishFileMembershipError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingRelinquishFileMembership;
}

+ (DbxRoute *)dbxSharingRelinquishFolderMembership {
    if (!dbxSharingRelinquishFolderMembership) {
        dbxSharingRelinquishFolderMembership = [[DbxRoute alloc] init:
            @"relinquish_folder_membership"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxAsyncLaunchEmptyResult class]
            errorType:[DbxSharingRelinquishFolderMembershipError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingRelinquishFolderMembership;
}

+ (DbxRoute *)dbxSharingRemoveFileMember {
    if (!dbxSharingRemoveFileMember) {
        dbxSharingRemoveFileMember = [[DbxRoute alloc] init:
            @"remove_file_member"
            namespace_:@"sharing"
            deprecated:@YES
            resultType:[DbxSharingFileMemberActionIndividualResult class]
            errorType:[DbxSharingRemoveFileMemberError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingRemoveFileMember;
}

+ (DbxRoute *)dbxSharingRemoveFileMember2 {
    if (!dbxSharingRemoveFileMember2) {
        dbxSharingRemoveFileMember2 = [[DbxRoute alloc] init:
            @"remove_file_member_2"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingFileMemberRemoveActionResult class]
            errorType:[DbxSharingRemoveFileMemberError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingRemoveFileMember2;
}

+ (DbxRoute *)dbxSharingRemoveFolderMember {
    if (!dbxSharingRemoveFolderMember) {
        dbxSharingRemoveFolderMember = [[DbxRoute alloc] init:
            @"remove_folder_member"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxAsyncLaunchResultBase class]
            errorType:[DbxSharingRemoveFolderMemberError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingRemoveFolderMember;
}

+ (DbxRoute *)dbxSharingRevokeSharedLink {
    if (!dbxSharingRevokeSharedLink) {
        dbxSharingRevokeSharedLink = [[DbxRoute alloc] init:
            @"revoke_shared_link"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:nil
            errorType:[DbxSharingRevokeSharedLinkError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingRevokeSharedLink;
}

+ (DbxRoute *)dbxSharingShareFolder {
    if (!dbxSharingShareFolder) {
        dbxSharingShareFolder = [[DbxRoute alloc] init:
            @"share_folder"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingShareFolderLaunch class]
            errorType:[DbxSharingShareFolderError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingShareFolder;
}

+ (DbxRoute *)dbxSharingTransferFolder {
    if (!dbxSharingTransferFolder) {
        dbxSharingTransferFolder = [[DbxRoute alloc] init:
            @"transfer_folder"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:nil
            errorType:[DbxSharingTransferFolderError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingTransferFolder;
}

+ (DbxRoute *)dbxSharingUnmountFolder {
    if (!dbxSharingUnmountFolder) {
        dbxSharingUnmountFolder = [[DbxRoute alloc] init:
            @"unmount_folder"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:nil
            errorType:[DbxSharingUnmountFolderError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingUnmountFolder;
}

+ (DbxRoute *)dbxSharingUnshareFile {
    if (!dbxSharingUnshareFile) {
        dbxSharingUnshareFile = [[DbxRoute alloc] init:
            @"unshare_file"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:nil
            errorType:[DbxSharingUnshareFileError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingUnshareFile;
}

+ (DbxRoute *)dbxSharingUnshareFolder {
    if (!dbxSharingUnshareFolder) {
        dbxSharingUnshareFolder = [[DbxRoute alloc] init:
            @"unshare_folder"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxAsyncLaunchEmptyResult class]
            errorType:[DbxSharingUnshareFolderError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingUnshareFolder;
}

+ (DbxRoute *)dbxSharingUpdateFolderMember {
    if (!dbxSharingUpdateFolderMember) {
        dbxSharingUpdateFolderMember = [[DbxRoute alloc] init:
            @"update_folder_member"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingMemberAccessLevelResult class]
            errorType:[DbxSharingUpdateFolderMemberError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingUpdateFolderMember;
}

+ (DbxRoute *)dbxSharingUpdateFolderPolicy {
    if (!dbxSharingUpdateFolderPolicy) {
        dbxSharingUpdateFolderPolicy = [[DbxRoute alloc] init:
            @"update_folder_policy"
            namespace_:@"sharing"
            deprecated:@NO
            resultType:[DbxSharingSharedFolderMetadata class]
            errorType:[DbxSharingUpdateFolderPolicyError class]
            attrs:@{@"host": @"api",
                    @"style": @"rpc"}
            arraySerialBlock:nil
            arrayDeserialBlock:nil
        ];
    }
    return dbxSharingUpdateFolderPolicy;
}

@end
