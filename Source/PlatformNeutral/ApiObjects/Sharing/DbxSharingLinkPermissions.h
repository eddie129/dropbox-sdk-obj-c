///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingLinkPermissions;
@class DbxSharingRequestedVisibility;
@class DbxSharingResolvedVisibility;
@class DbxSharingSharedLinkAccessFailureReason;

/// 
/// The DbxSharingLinkPermissions struct.
/// 
@interface DbxSharingLinkPermissions : NSObject <DbxSerializable> 

/// The current visibility of the link after considering the shared links
/// policies of the the team (in case the link's owner is part of a team) and
/// the shared folder (in case the linked file is part of a shared folder). This
/// field is shown only if the caller has access to this info (the link's owner
/// always has access to this data).
@property (nonatomic) DbxSharingResolvedVisibility * _Nullable resolvedVisibility;
/// The shared link's requested visibility. This can be overridden by the team
/// and shared folder policies. The final visibility, after considering these
/// policies, can be found in resolvedVisibility. This is shown only if the
/// caller is the link's owner.
@property (nonatomic) DbxSharingRequestedVisibility * _Nullable requestedVisibility;
/// Whether the caller can revoke the shared link
@property (nonatomic, copy) NSNumber * _Nonnull canRevoke;
/// The failure reason for revoking the link. This field will only be present if
/// the canRevoke is false.
@property (nonatomic) DbxSharingSharedLinkAccessFailureReason * _Nullable revokeFailureReason;

- (nonnull instancetype)initWithCanRevoke:(NSNumber * _Nonnull)canRevoke resolvedVisibility:(DbxSharingResolvedVisibility * _Nullable)resolvedVisibility requestedVisibility:(DbxSharingRequestedVisibility * _Nullable)requestedVisibility revokeFailureReason:(DbxSharingSharedLinkAccessFailureReason * _Nullable)revokeFailureReason;

- (nonnull instancetype)initWithCanRevoke:(NSNumber * _Nonnull)canRevoke;

- (NSString * _Nonnull)description;

@end


@interface DbxSharingLinkPermissionsSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingLinkPermissions * _Nonnull)obj;

+ (DbxSharingLinkPermissions * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
