.class public Lcom/android/launcher3/allapps/AllAppsGridAdapter;
.super Landroid/support/v7/widget/q;
.source "SourceFile"


# instance fields
.field private final mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field private mAppsPerRow:I

.field private mBindViewCallback:Lcom/android/launcher3/allapps/AllAppsGridAdapter$BindViewCallback;

.field private mEmptySearchMessage:Ljava/lang/String;

.field private final mGridLayoutMgr:Landroid/support/v7/widget/M;

.field private final mGridSizer:Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;

.field private final mIconClickListener:Landroid/view/View$OnClickListener;

.field private mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private final mIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMarketSearchIntent:Landroid/content/Intent;

.field private mSearchController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 2

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/support/v7/widget/q;-><init>()V

    .line 212
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 213
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 214
    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 215
    const v1, 0x7f0c002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mEmptySearchMessage:Ljava/lang/String;

    .line 216
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridSizer:Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;

    .line 217
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/M;

    .line 218
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/M;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridSizer:Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/M;->setSpanSizeLookup(Landroid/support/v7/widget/Q;)V

    .line 219
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 220
    iput-object p3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    .line 221
    iput-object p4, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 222
    return-void
.end method

.method private getCellSize()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static isDividerViewType(I)Z
    .locals 1

    .prologue
    .line 225
    const/16 v0, 0xe0

    invoke-static {p0, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isViewType(II)Z

    move-result v0

    return v0
.end method

.method public static isIconViewType(I)Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isViewType(II)Z

    move-result v0

    return v0
.end method

.method public static isViewType(II)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 233
    and-int v1, p0, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 390
    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    return v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/M;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/M;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/j;I)V
    .locals 0

    .prologue
    .line 331
    check-cast p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->onBindViewHolder(Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;I)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 333
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 371
    :goto_0
    :sswitch_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mBindViewCallback:Lcom/android/launcher3/allapps/AllAppsGridAdapter$BindViewCallback;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mBindViewCallback:Lcom/android/launcher3/allapps/AllAppsGridAdapter$BindViewCallback;

    invoke-interface {v0, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$BindViewCallback;->onBindView(Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;)V

    .line 374
    :cond_0
    return-void

    .line 336
    :sswitch_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/android/launcher3/AppInfo;

    .line 337
    iget-object v0, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 338
    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/AppInfo;)V

    .line 339
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0

    .line 343
    :sswitch_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/android/launcher3/AppInfo;

    .line 342
    check-cast v0, Lcom/android/launcher3/discovery/AppDiscoveryAppInfo;

    .line 344
    iget-object v1, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/android/launcher3/discovery/AppDiscoveryItemView;

    .line 345
    invoke-virtual {v1, v0}, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->apply(Lcom/android/launcher3/discovery/AppDiscoveryAppInfo;)V

    goto :goto_0

    .line 348
    :sswitch_3
    iget-object v0, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 349
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mEmptySearchMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x11

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 351
    :cond_1
    const v1, 0x800013

    goto :goto_1

    .line 354
    :sswitch_4
    iget-object v0, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 355
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    .line 356
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 358
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 362
    :sswitch_5
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->isAppDiscoveryRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 363
    :goto_2
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->isAppDiscoveryRunning()Z

    move-result v3

    if-nez v3, :cond_4

    .line 364
    :goto_3
    iget-object v2, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0e0033

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0e0034

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 362
    goto :goto_2

    :cond_4
    move v1, v2

    .line 363
    goto :goto_3

    .line 333
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_1
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_0
        0x100 -> :sswitch_5
        0x200 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/j;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 278
    sparse-switch p2, :sswitch_data_0

    .line 323
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unexpected view type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :sswitch_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 282
    const v1, 0x7f040007

    .line 281
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 283
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 285
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setLongPressTimeout(I)V

    .line 287
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 290
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->getCellSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 291
    new-instance v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 293
    :sswitch_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 294
    const v1, 0x7f040003

    .line 293
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;

    .line 295
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v2

    .line 296
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 295
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$AccessibilityDelegate;Landroid/view/View$OnLongClickListener;)V

    .line 297
    new-instance v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 299
    :sswitch_2
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040006

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0

    .line 302
    :sswitch_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040009

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 304
    new-instance v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$1;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    new-instance v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 312
    :sswitch_4
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 313
    const v2, 0x7f040008

    .line 312
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0

    .line 315
    :sswitch_5
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 316
    const v1, 0x7f040004

    .line 315
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 317
    new-instance v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 320
    :sswitch_6
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 321
    const v2, 0x7f040005

    .line 320
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0

    .line 278
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_6
        0x40 -> :sswitch_4
        0x80 -> :sswitch_6
        0x100 -> :sswitch_5
        0x200 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic onFailedToRecycleView(Landroid/support/v7/widget/j;)Z
    .locals 1

    .prologue
    .line 376
    check-cast p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->onFailedToRecycleView(Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onFailedToRecycleView(Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;)Z
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x1

    return v0
.end method

.method public setBindViewCallback(Lcom/android/launcher3/allapps/AllAppsGridAdapter$BindViewCallback;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mBindViewCallback:Lcom/android/launcher3/allapps/AllAppsGridAdapter$BindViewCallback;

    .line 267
    return-void
.end method

.method public setIconFocusListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 250
    return-void
.end method

.method public setLastSearchQuery(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 258
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const v2, 0x7f0c002e

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mEmptySearchMessage:Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSearchController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->createMarketSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    .line 260
    return-void
.end method

.method public setNumAppsPerRow(I)V
    .locals 1

    .prologue
    .line 240
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    .line 241
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/M;->setSpanCount(I)V

    .line 242
    return-void
.end method

.method public setSearchController(Lcom/android/launcher3/allapps/AllAppsSearchBarController;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSearchController:Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    .line 246
    return-void
.end method
