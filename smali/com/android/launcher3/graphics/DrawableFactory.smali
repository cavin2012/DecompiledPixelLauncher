.class public Lcom/android/launcher3/graphics/DrawableFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sInstance:Lcom/android/launcher3/graphics/DrawableFactory;


# instance fields
.field protected final mMyUser:Landroid/os/UserHandle;

.field private mPreloadProgressPath:Landroid/graphics/Path;

.field protected final mUserBadges:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/graphics/DrawableFactory;->LOCK:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/DrawableFactory;->mMyUser:Landroid/os/UserHandle;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/DrawableFactory;->mUserBadges:Ljava/util/HashMap;

    .line 44
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;
    .locals 4

    .prologue
    .line 54
    sget-object v1, Lcom/android/launcher3/graphics/DrawableFactory;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/android/launcher3/graphics/DrawableFactory;->sInstance:Lcom/android/launcher3/graphics/DrawableFactory;

    if-nez v0, :cond_0

    .line 56
    const-class v0, Lcom/android/launcher3/graphics/DrawableFactory;

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0019

    .line 56
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/Utilities;->getOverrideObject(Ljava/lang/Class;Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/graphics/DrawableFactory;

    sput-object v0, Lcom/android/launcher3/graphics/DrawableFactory;->sInstance:Lcom/android/launcher3/graphics/DrawableFactory;

    .line 59
    :cond_0
    sget-object v0, Lcom/android/launcher3/graphics/DrawableFactory;->sInstance:Lcom/android/launcher3/graphics/DrawableFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAllAppsBackground(Landroid/content/Context;)Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-direct {v0, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getBadgeForUser(Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/graphics/DrawableFactory;->mMyUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/graphics/DrawableFactory;->getUserBadge(Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {v1, v0}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 119
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/FastBitmapDrawable;->setFilterBitmap(Z)V

    .line 120
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v1, v3, v3, v2, v0}, Lcom/android/launcher3/FastBitmapDrawable;->setBounds(IIII)V

    .line 121
    return-object v1
.end method

.method protected getPreloadProgressPath(Landroid/content/Context;)Landroid/graphics/Path;
    .locals 7

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    .line 85
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/high16 v0, 0x7f020000

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 89
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 90
    const/16 v5, 0x64

    const/16 v6, 0x64

    .line 89
    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 91
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v4, "getIconMask"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-string/jumbo v2, "DrawableFactory"

    const-string/jumbo v4, "Error loading mask icon"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 99
    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 100
    const/high16 v5, -0x3d4c0000    # -90.0f

    const/high16 v6, 0x43b40000    # 360.0f

    move v2, v1

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->addArc(FFFFFF)V

    .line 101
    return-object v0
.end method

.method protected declared-synchronized getUserBadge(Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/DrawableFactory;->mUserBadges:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    if-eqz v0, :cond_0

    monitor-exit p0

    .line 127
    return-object v0

    .line 130
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    const v1, 0x7f0b0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 132
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 134
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 135
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 136
    const/4 v5, 0x0

    .line 134
    invoke-virtual {v3, v4, p1, v0, v5}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 138
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/graphics/DrawableFactory;->mUserBadges:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 148
    return-object v0

    .line 140
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 141
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 142
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 143
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 144
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/FastBitmapDrawable;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {v0, p1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public newPendingIcon(Landroid/graphics/Bitmap;Landroid/content/Context;)Lcom/android/launcher3/graphics/PreloadIconDrawable;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher3/graphics/DrawableFactory;->mPreloadProgressPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0, p2}, Lcom/android/launcher3/graphics/DrawableFactory;->getPreloadProgressPath(Landroid/content/Context;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/DrawableFactory;->mPreloadProgressPath:Landroid/graphics/Path;

    .line 80
    :cond_0
    new-instance v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    iget-object v1, p0, Lcom/android/launcher3/graphics/DrawableFactory;->mPreloadProgressPath:Landroid/graphics/Path;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/launcher3/graphics/PreloadIconDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Path;Landroid/content/Context;)V

    return-object v0
.end method
