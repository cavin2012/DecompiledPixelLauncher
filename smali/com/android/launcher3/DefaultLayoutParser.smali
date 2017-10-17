.class public Lcom/android/launcher3/DefaultLayoutParser;
.super Lcom/android/launcher3/AutoInstallsLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V
    .locals 7

    .prologue
    .line 54
    const-string/jumbo v6, "favorites"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/AutoInstallsLayout;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected getFolderElementsMap()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/launcher3/DefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DefaultLayoutParser;->getFolderElementsMap(Landroid/content/res/Resources;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method getFolderElementsMap(Landroid/content/res/Resources;)Ljava/util/HashMap;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    const-string/jumbo v1, "favorite"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string/jumbo v1, "shortcut"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object v0
.end method

.method protected getLayoutElementsMap()Ljava/util/HashMap;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    const-string/jumbo v1, "favorite"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v1, "appwidget"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v1, "shortcut"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;

    iget-object v3, p0, Lcom/android/launcher3/DefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v1, "resolve"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v1, "folder"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$MyFolderParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$MyFolderParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v1, "partner-folder"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-object v0
.end method

.method protected parseContainerAndScreen(Landroid/content/res/XmlResourceParser;[J)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    const-wide/16 v0, -0x64

    aput-wide v0, p2, v2

    .line 84
    const-string/jumbo v0, "container"

    invoke-static {p1, v0}, Lcom/android/launcher3/DefaultLayoutParser;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aput-wide v0, p2, v2

    .line 88
    :cond_0
    const-string/jumbo v0, "screen"

    invoke-static {p1, v0}, Lcom/android/launcher3/DefaultLayoutParser;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    aput-wide v0, p2, v2

    .line 89
    return-void
.end method
