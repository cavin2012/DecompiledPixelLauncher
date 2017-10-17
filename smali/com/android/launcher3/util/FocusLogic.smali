.class public Lcom/android/launcher3/util/FocusLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFullMatrix(II)[[I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 152
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p0, v2, v1

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 154
    :goto_0
    if-ge v1, p0, :cond_0

    .line 155
    aget-object v2, v0, v1

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_0
    return-object v0
.end method

.method public static createSparseMatrix(Lcom/android/launcher3/CellLayout;)[[I
    .locals 8

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    .line 167
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v4

    .line 168
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    .line 169
    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v5

    .line 171
    invoke-static {v4, v0}, Lcom/android/launcher3/util/FocusLogic;->createFullMatrix(II)[[I

    move-result-object v6

    .line 174
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 175
    invoke-virtual {v3, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 176
    invoke-virtual {v7}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 180
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v7, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 181
    if-eqz v5, :cond_1

    sub-int v0, v4, v2

    add-int/lit8 v0, v0, -0x1

    :goto_2
    aget-object v0, v6, v0

    aput v1, v0, v7

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    .line 186
    :cond_2
    return-object v6
.end method

.method public static createSparseMatrixWithHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DeviceProfile;)[[I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    .line 199
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    .line 201
    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    .line 208
    if-eqz v5, :cond_0

    .line 209
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v6

    add-int/2addr v0, v6

    .line 215
    :goto_0
    invoke-static {v1, v0}, Lcom/android/launcher3/util/FocusLogic;->createFullMatrix(II)[[I

    move-result-object v6

    move v1, v2

    .line 229
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 230
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 231
    invoke-virtual {v7}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    add-int/2addr v1, v0

    .line 213
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 235
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 247
    aget-object v2, v6, v2

    aput v1, v2, v0

    goto :goto_2

    .line 251
    :cond_2
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_4

    .line 252
    if-eqz v5, :cond_3

    .line 254
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 253
    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 255
    aget-object v0, v6, v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    aput v7, v0, v2

    .line 251
    :goto_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    .line 258
    :cond_3
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 257
    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 259
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v2

    aget-object v2, v6, v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    aput v7, v2, v0

    goto :goto_4

    .line 265
    :cond_4
    return-object v6
.end method

.method public static createSparseMatrixWithPivotColumn(Lcom/android/launcher3/CellLayout;II)[[I
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v2, 0x0

    .line 282
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    .line 284
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/FocusLogic;->createFullMatrix(II)[[I

    move-result-object v4

    move v1, v2

    .line 287
    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 288
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 289
    invoke-virtual {v5}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v6, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 293
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 294
    if-gez p1, :cond_1

    .line 295
    sub-int v5, v6, p1

    aget-object v5, v4, v5

    aput v1, v5, v0

    goto :goto_1

    .line 297
    :cond_1
    aget-object v5, v4, v6

    aput v1, v5, v0

    goto :goto_1

    .line 301
    :cond_2
    if-gez p1, :cond_3

    .line 302
    aget-object v0, v4, v2

    aput v7, v0, p2

    .line 309
    :goto_2
    return-object v4

    .line 304
    :cond_3
    aget-object v0, v4, p1

    aput v7, v0, p2

    goto :goto_2
.end method

.method public static getAdjacentChildInNextFolderPage(Lcom/android/launcher3/ShortcutAndWidgetContainer;Landroid/view/View;I)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 563
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 565
    const/16 v0, -0x9

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v3

    xor-int/2addr v0, v3

    if-eqz v0, :cond_1

    .line 568
    :goto_1
    if-ltz v1, :cond_4

    move v0, v2

    .line 569
    :goto_2
    if-ltz v0, :cond_3

    .line 570
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 571
    if-eqz v3, :cond_2

    .line 572
    return-object v3

    :cond_0
    move v0, v1

    .line 565
    goto :goto_0

    .line 566
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    goto :goto_1

    .line 569
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 568
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 576
    :cond_4
    return-object v4
.end method

.method private static handleDpadHorizontal(III[[IIZ)I
    .locals 13

    .prologue
    .line 328
    if-nez p3, :cond_0

    .line 329
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Dpad navigation requires a matrix."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    :cond_0
    const/4 v5, -0x1

    .line 333
    const/4 v8, -0x1

    .line 334
    const/4 v7, -0x1

    .line 336
    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_3

    .line 337
    const/4 v2, 0x0

    move v1, v7

    move v3, v8

    :goto_1
    if-ge v2, p2, :cond_2

    .line 338
    aget-object v6, p3, v4

    aget v6, v6, v2

    if-ne v6, p0, :cond_1

    move v1, v2

    move v3, v4

    .line 337
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 336
    :cond_2
    add-int/lit8 v4, v4, 0x1

    move v7, v1

    move v8, v3

    goto :goto_0

    .line 350
    :cond_3
    add-int v1, v8, p4

    move v4, v5

    :goto_2
    if-ltz v1, :cond_5

    if-ge v1, p1, :cond_5

    .line 351
    move-object/from16 v0, p3

    invoke-static {v1, v7, p1, p2, v0}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v4

    const/4 v2, -0x1

    if-eq v4, v2, :cond_4

    .line 352
    const/16 v2, -0xb

    if-eq v4, v2, :cond_4

    .line 353
    return v4

    .line 350
    :cond_4
    add-int v1, v1, p4

    goto :goto_2

    .line 361
    :cond_5
    const/4 v2, 0x0

    .line 362
    const/4 v3, 0x0

    .line 364
    const/4 v1, 0x1

    move v6, v1

    move v1, v2

    :goto_3
    if-ge v6, p2, :cond_c

    .line 365
    mul-int v2, v6, p4

    add-int v9, v7, v2

    .line 366
    mul-int v2, v6, p4

    sub-int v10, v7, v2

    .line 367
    mul-int v2, p4, v6

    add-int/2addr v2, v8

    .line 368
    move-object/from16 v0, p3

    invoke-static {v2, v9, p1, p2, v0}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v5

    const/16 v11, -0xb

    if-ne v5, v11, :cond_6

    .line 369
    const/4 v1, 0x1

    .line 371
    :cond_6
    move-object/from16 v0, p3

    invoke-static {v2, v10, p1, p2, v0}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v5

    const/16 v11, -0xb

    if-ne v5, v11, :cond_11

    .line 372
    const/4 v3, 0x1

    move v12, v2

    move v2, v4

    move v4, v3

    move v3, v12

    .line 374
    :goto_4
    if-ltz v3, :cond_b

    if-ge v3, p1, :cond_b

    .line 375
    if-eqz v1, :cond_7

    add-int/lit8 v2, p1, -0x1

    if-ge v3, v2, :cond_7

    move/from16 v2, p4

    .line 376
    :goto_5
    add-int/2addr v2, v9

    move-object/from16 v0, p3

    invoke-static {v3, v2, p1, p2, v0}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v2

    .line 377
    const/4 v5, -0x1

    if-eq v2, v5, :cond_8

    .line 378
    return v2

    .line 375
    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    .line 380
    :cond_8
    if-eqz v4, :cond_9

    add-int/lit8 v2, p1, -0x1

    if-ge v3, v2, :cond_9

    move/from16 v0, p4

    neg-int v2, v0

    .line 381
    :goto_6
    add-int/2addr v2, v10

    move-object/from16 v0, p3

    invoke-static {v3, v2, p1, p2, v0}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v5

    .line 382
    const/4 v2, -0x1

    if-eq v5, v2, :cond_a

    .line 383
    return v5

    .line 380
    :cond_9
    const/4 v2, 0x0

    goto :goto_6

    .line 374
    :cond_a
    add-int v2, v3, p4

    move v3, v2

    move v2, v5

    goto :goto_4

    .line 364
    :cond_b
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v4

    move v4, v2

    goto :goto_3

    .line 390
    :cond_c
    const/16 v1, 0x64

    if-ne p0, v1, :cond_10

    .line 391
    if-eqz p5, :cond_e

    .line 392
    if-gez p4, :cond_d

    const/4 v1, -0x8

    :goto_7
    return v1

    :cond_d
    const/4 v1, -0x4

    goto :goto_7

    .line 394
    :cond_e
    if-gez p4, :cond_f

    const/4 v1, -0x4

    :goto_8
    return v1

    :cond_f
    const/4 v1, -0x8

    goto :goto_8

    .line 396
    :cond_10
    return v4

    :cond_11
    move v12, v2

    move v2, v4

    move v4, v3

    move v3, v12

    goto :goto_4
.end method

.method private static handleDpadVertical(III[[II)I
    .locals 13

    .prologue
    .line 411
    const/4 v5, -0x1

    .line 412
    if-nez p3, :cond_0

    .line 413
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Dpad navigation requires a matrix."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_0
    const/4 v8, -0x1

    .line 417
    const/4 v7, -0x1

    .line 419
    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_3

    .line 420
    const/4 v2, 0x0

    move v1, v7

    move v3, v8

    :goto_1
    if-ge v2, p2, :cond_2

    .line 421
    aget-object v6, p3, v4

    aget v6, v6, v2

    if-ne v6, p0, :cond_1

    move v1, v2

    move v3, v4

    .line 420
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 419
    :cond_2
    add-int/lit8 v4, v4, 0x1

    move v7, v1

    move v8, v3

    goto :goto_0

    .line 434
    :cond_3
    add-int v1, v7, p4

    move v4, v5

    :goto_2
    if-ltz v1, :cond_5

    if-ge v1, p2, :cond_5

    if-ltz v1, :cond_5

    .line 435
    move-object/from16 v0, p3

    invoke-static {v8, v1, p1, p2, v0}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v4

    const/4 v2, -0x1

    if-eq v4, v2, :cond_4

    .line 436
    const/16 v2, -0xb

    if-eq v4, v2, :cond_4

    .line 437
    return v4

    .line 434
    :cond_4
    add-int v1, v1, p4

    goto :goto_2

    .line 445
    :cond_5
    const/4 v2, 0x0

    .line 446
    const/4 v3, 0x0

    .line 448
    const/4 v1, 0x1

    move v6, v1

    move v1, v2

    :goto_3
    if-ge v6, p1, :cond_c

    .line 449
    mul-int v2, v6, p4

    add-int v9, v8, v2

    .line 450
    mul-int v2, v6, p4

    sub-int v10, v8, v2

    .line 451
    mul-int v2, p4, v6

    add-int/2addr v2, v7

    .line 452
    move-object/from16 v0, p3

    invoke-static {v9, v2, p1, p2, v0}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v5

    const/16 v11, -0xb

    if-ne v5, v11, :cond_6

    .line 453
    const/4 v1, 0x1

    .line 455
    :cond_6
    move-object/from16 v0, p3

    invoke-static {v10, v2, p1, p2, v0}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v5

    const/16 v11, -0xb

    if-ne v5, v11, :cond_d

    .line 456
    const/4 v3, 0x1

    move v12, v2

    move v2, v4

    move v4, v3

    move v3, v12

    .line 458
    :goto_4
    if-ltz v3, :cond_b

    if-ge v3, p2, :cond_b

    .line 459
    if-eqz v1, :cond_7

    add-int/lit8 v2, p2, -0x1

    if-ge v3, v2, :cond_7

    move/from16 v2, p4

    .line 460
    :goto_5
    add-int/2addr v2, v9

    move-object/from16 v0, p3

    invoke-static {v2, v3, p1, p2, v0}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v2

    .line 461
    const/4 v5, -0x1

    if-eq v2, v5, :cond_8

    .line 462
    return v2

    .line 459
    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    .line 464
    :cond_8
    if-eqz v4, :cond_9

    add-int/lit8 v2, p2, -0x1

    if-ge v3, v2, :cond_9

    move/from16 v0, p4

    neg-int v2, v0

    .line 465
    :goto_6
    add-int/2addr v2, v10

    move-object/from16 v0, p3

    invoke-static {v2, v3, p1, p2, v0}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v5

    .line 466
    const/4 v2, -0x1

    if-eq v5, v2, :cond_a

    .line 467
    return v5

    .line 464
    :cond_9
    const/4 v2, 0x0

    goto :goto_6

    .line 458
    :cond_a
    add-int v2, v3, p4

    move v3, v2

    move v2, v5

    goto :goto_4

    .line 448
    :cond_b
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v4

    move v4, v2

    goto :goto_3

    .line 471
    :cond_c
    return v4

    :cond_d
    move v12, v2

    move v2, v4

    move v4, v3

    move v3, v12

    goto :goto_4
.end method

.method public static handleKeyEvent(I[[IIIIZ)I
    .locals 6

    .prologue
    .line 88
    if-nez p1, :cond_1

    const/4 v1, -0x1

    .line 89
    :goto_0
    if-nez p1, :cond_2

    const/4 v2, -0x1

    .line 97
    :goto_1
    const/4 v0, -0x1

    .line 98
    sparse-switch p0, :sswitch_data_0

    .line 141
    :cond_0
    :goto_2
    return v0

    .line 88
    :cond_1
    array-length v1, p1

    goto :goto_0

    .line 89
    :cond_2
    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v2, v0

    goto :goto_1

    .line 100
    :sswitch_0
    const/4 v4, -0x1

    move v0, p2

    move-object v3, p1

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/util/FocusLogic;->handleDpadHorizontal(III[[IIZ)I

    move-result v0

    .line 101
    if-nez p5, :cond_3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    if-lez p3, :cond_3

    .line 102
    const/4 v0, -0x2

    .line 101
    goto :goto_2

    .line 103
    :cond_3
    if-eqz p5, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, p4, -0x1

    if-ge p3, v1, :cond_0

    .line 104
    const/16 v0, -0xa

    goto :goto_2

    .line 108
    :sswitch_1
    const/4 v4, 0x1

    move v0, p2

    move-object v3, p1

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/util/FocusLogic;->handleDpadHorizontal(III[[IIZ)I

    move-result v0

    .line 109
    if-nez p5, :cond_4

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    add-int/lit8 v1, p4, -0x1

    if-ge p3, v1, :cond_4

    .line 110
    const/16 v0, -0x9

    .line 109
    goto :goto_2

    .line 111
    :cond_4
    if-eqz p5, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    if-lez p3, :cond_0

    .line 112
    const/4 v0, -0x5

    goto :goto_2

    .line 116
    :sswitch_2
    const/4 v0, 0x1

    invoke-static {p2, v1, v2, p1, v0}, Lcom/android/launcher3/util/FocusLogic;->handleDpadVertical(III[[II)I

    move-result v0

    goto :goto_2

    .line 119
    :sswitch_3
    const/4 v0, -0x1

    invoke-static {p2, v1, v2, p1, v0}, Lcom/android/launcher3/util/FocusLogic;->handleDpadVertical(III[[II)I

    move-result v0

    goto :goto_2

    .line 122
    :sswitch_4
    invoke-static {}, Lcom/android/launcher3/util/FocusLogic;->handleMoveHome()I

    move-result v0

    goto :goto_2

    .line 125
    :sswitch_5
    invoke-static {}, Lcom/android/launcher3/util/FocusLogic;->handleMoveEnd()I

    move-result v0

    goto :goto_2

    .line 128
    :sswitch_6
    invoke-static {p3, p4}, Lcom/android/launcher3/util/FocusLogic;->handlePageDown(II)I

    move-result v0

    goto :goto_2

    .line 131
    :sswitch_7
    invoke-static {p3}, Lcom/android/launcher3/util/FocusLogic;->handlePageUp(I)I

    move-result v0

    goto :goto_2

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x5c -> :sswitch_7
        0x5d -> :sswitch_6
        0x7a -> :sswitch_4
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method private static handleMoveEnd()I
    .locals 1

    .prologue
    .line 479
    const/4 v0, -0x7

    return v0
.end method

.method private static handleMoveHome()I
    .locals 1

    .prologue
    .line 475
    const/4 v0, -0x6

    return v0
.end method

.method private static handlePageDown(II)I
    .locals 1

    .prologue
    .line 483
    add-int/lit8 v0, p1, -0x1

    if-ge p0, v0, :cond_0

    .line 484
    const/4 v0, -0x8

    return v0

    .line 486
    :cond_0
    const/4 v0, -0x7

    return v0
.end method

.method private static handlePageUp(I)I
    .locals 1

    .prologue
    .line 490
    if-lez p0, :cond_0

    .line 491
    const/4 v0, -0x3

    return v0

    .line 493
    :cond_0
    const/4 v0, -0x6

    return v0
.end method

.method private static inspectMatrix(IIII[[I)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 507
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/util/FocusLogic;->isValid(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    aget-object v0, p4, p0

    aget v0, v0, p1

    if-eq v0, v1, :cond_0

    .line 509
    aget-object v0, p4, p0

    aget v0, v0, p1

    .line 514
    return v0

    .line 517
    :cond_0
    return v1
.end method

.method private static isValid(IIII)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 502
    if-ltz p0, :cond_0

    if-ge p0, p2, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static shouldConsume(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 79
    const/16 v1, 0x15

    if-eq p0, v1, :cond_0

    const/16 v1, 0x16

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    const/16 v1, 0x13

    if-eq p0, v1, :cond_0

    const/16 v1, 0x14

    if-eq p0, v1, :cond_0

    .line 81
    const/16 v1, 0x7a

    if-eq p0, v1, :cond_0

    const/16 v1, 0x7b

    if-eq p0, v1, :cond_0

    .line 82
    const/16 v1, 0x5c

    if-eq p0, v1, :cond_0

    const/16 v1, 0x5d

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
