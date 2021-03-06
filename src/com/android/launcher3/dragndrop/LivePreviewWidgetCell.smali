.class public Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;
.super Lcom/android/launcher3/widget/WidgetCell;
.source "SourceFile"


# instance fields
.field private mPreview:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/WidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public static generateFromRemoteViews(Lcom/android/launcher3/BaseActivity;Landroid/widget/RemoteViews;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 62
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    iget v2, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanX:I

    mul-int/2addr v1, v2

    .line 63
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    iget v2, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanY:I

    mul-int/2addr v0, v2

    .line 67
    :try_start_0
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p0, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 68
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 69
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 68
    invoke-virtual {v3, v1, v0}, Landroid/view/View;->measure(II)V

    .line 71
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 72
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 73
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1, v0}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    aput v1, p4, v5

    .line 81
    if-le v1, p3, :cond_0

    .line 82
    int-to-float v2, p3

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 84
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 91
    :goto_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 93
    invoke-virtual {v2, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 94
    invoke-virtual {v3, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 95
    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    return-object v6

    .line 86
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    move p3, v1

    move v1, v2

    .line 88
    goto :goto_0
.end method


# virtual methods
.method public ensurePreview()V
    .locals 5

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->mPreview:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->mActiveRequest:Landroid/os/CancellationSignal;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->mActivity:Lcom/android/launcher3/BaseActivity;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->mPreview:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->mItem:Lcom/android/launcher3/model/WidgetItem;

    iget-object v2, v2, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    iget v3, p0, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->mPresetPreviewSize:I

    const/4 v4, 0x1

    new-array v4, v4, [I

    .line 42
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->generateFromRemoteViews(Lcom/android/launcher3/BaseActivity;Landroid/widget/RemoteViews;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->applyPreview(Landroid/graphics/Bitmap;)V

    .line 46
    return-void

    .line 49
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/widget/WidgetCell;->ensurePreview()V

    .line 50
    return-void
.end method

.method public setPreview(Landroid/widget/RemoteViews;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->mPreview:Landroid/widget/RemoteViews;

    .line 37
    return-void
.end method
