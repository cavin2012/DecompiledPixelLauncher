.class Lcom/android/launcher3/popup/PopupPopulator$UpdateNotificationChild;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mNotificationInfos:Ljava/util/List;

.field private mNotificationView:Lcom/android/launcher3/notification/NotificationItemView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/notification/NotificationItemView;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateNotificationChild;->mNotificationView:Lcom/android/launcher3/notification/NotificationItemView;

    .line 265
    iput-object p2, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateNotificationChild;->mNotificationInfos:Ljava/util/List;

    .line 266
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateNotificationChild;->mNotificationView:Lcom/android/launcher3/notification/NotificationItemView;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateNotificationChild;->mNotificationInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/notification/NotificationItemView;->applyNotificationInfos(Ljava/util/List;)V

    .line 271
    return-void
.end method
