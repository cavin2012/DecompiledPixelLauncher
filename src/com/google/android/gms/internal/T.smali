.class public final Lcom/google/android/gms/internal/T;
.super Lcom/google/android/gms/internal/aI;


# instance fields
.field public qo:I

.field public qp:I

.field public qq:I

.field public qr:J

.field public qs:I

.field public qt:I

.field public qu:I

.field public qv:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aI;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/T;->tr()Lcom/google/android/gms/internal/T;

    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/internal/aI;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/T;->qp:I

    if-nez v1, :cond_1

    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/T;->qr:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/T;->qr:J

    const/4 v1, 0x2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/aV;->wv(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/T;->qq:I

    if-nez v1, :cond_2

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/T;->qt:I

    if-nez v1, :cond_3

    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/T;->qs:I

    if-nez v1, :cond_4

    :goto_3
    iget v1, p0, Lcom/google/android/gms/internal/T;->qu:I

    if-nez v1, :cond_5

    :goto_4
    iget v1, p0, Lcom/google/android/gms/internal/T;->qv:I

    if-nez v1, :cond_6

    :goto_5
    iget v1, p0, Lcom/google/android/gms/internal/T;->qo:I

    if-nez v1, :cond_7

    :goto_6
    return v0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/T;->qp:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/T;->qq:I

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/T;->qt:I

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/T;->qs:I

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/T;->qu:I

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_4

    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/T;->qv:I

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5

    :cond_7
    iget v1, p0, Lcom/google/android/gms/internal/T;->qo:I

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/T;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/T;

    iget v0, p0, Lcom/google/android/gms/internal/T;->qp:I

    iget v1, p1, Lcom/google/android/gms/internal/T;->qp:I

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/T;->qr:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/T;->qr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    return v4

    :cond_0
    return v5

    :cond_1
    return v4

    :cond_2
    return v4

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/T;->qq:I

    iget v1, p1, Lcom/google/android/gms/internal/T;->qq:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/T;->qt:I

    iget v1, p1, Lcom/google/android/gms/internal/T;->qt:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/T;->qs:I

    iget v1, p1, Lcom/google/android/gms/internal/T;->qs:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/google/android/gms/internal/T;->qu:I

    iget v1, p1, Lcom/google/android/gms/internal/T;->qu:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/T;->qv:I

    iget v1, p1, Lcom/google/android/gms/internal/T;->qv:I

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/google/android/gms/internal/T;->qo:I

    iget v1, p1, Lcom/google/android/gms/internal/T;->qo:I

    if-ne v0, v1, :cond_9

    return v5

    :cond_4
    return v4

    :cond_5
    return v4

    :cond_6
    return v4

    :cond_7
    return v4

    :cond_8
    return v4

    :cond_9
    return v4
.end method

.method public hashCode()I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/T;->qp:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/T;->qr:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/T;->qr:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/T;->qq:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/T;->qt:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/T;->qs:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/T;->qu:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/T;->qv:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/T;->qo:I

    add-int/2addr v0, v1

    return v0
.end method

.method public sa(Lcom/google/android/gms/internal/aV;)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/T;->qp:I

    if-nez v0, :cond_1

    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/T;->qr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/T;->qr:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/aV;->vY(IJ)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/T;->qq:I

    if-nez v0, :cond_2

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/T;->qt:I

    if-nez v0, :cond_3

    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/T;->qs:I

    if-nez v0, :cond_4

    :goto_3
    iget v0, p0, Lcom/google/android/gms/internal/T;->qu:I

    if-nez v0, :cond_5

    :goto_4
    iget v0, p0, Lcom/google/android/gms/internal/T;->qv:I

    if-nez v0, :cond_6

    :goto_5
    iget v0, p0, Lcom/google/android/gms/internal/T;->qo:I

    if-nez v0, :cond_7

    :goto_6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aI;->sa(Lcom/google/android/gms/internal/aV;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/T;->qp:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/T;->qq:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/T;->qt:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/T;->qs:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/T;->qu:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_4

    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/T;->qv:I

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_5

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/T;->qo:I

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_6
.end method

.method public synthetic sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/T;->tq(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/T;

    move-result-object v0

    return-object v0
.end method

.method public tq(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/T;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aN;->vn(Lcom/google/android/gms/internal/be;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/T;->qp:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/T;->qr:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/google/android/gms/internal/T;->qq:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    iput v0, p0, Lcom/google/android/gms/internal/T;->qt:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    goto :goto_0

    :pswitch_3
    iput v0, p0, Lcom/google/android/gms/internal/T;->qs:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    packed-switch v0, :pswitch_data_4

    goto :goto_0

    :pswitch_4
    iput v0, p0, Lcom/google/android/gms/internal/T;->qu:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    packed-switch v0, :pswitch_data_5

    goto :goto_0

    :pswitch_5
    iput v0, p0, Lcom/google/android/gms/internal/T;->qv:I

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    packed-switch v0, :pswitch_data_6

    goto :goto_0

    :pswitch_6
    iput v0, p0, Lcom/google/android/gms/internal/T;->qo:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public tr()Lcom/google/android/gms/internal/T;
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/T;->qp:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/T;->qr:J

    iput v2, p0, Lcom/google/android/gms/internal/T;->qq:I

    iput v2, p0, Lcom/google/android/gms/internal/T;->qt:I

    iput v2, p0, Lcom/google/android/gms/internal/T;->qs:I

    iput v2, p0, Lcom/google/android/gms/internal/T;->qu:I

    iput v2, p0, Lcom/google/android/gms/internal/T;->qv:I

    iput v2, p0, Lcom/google/android/gms/internal/T;->qo:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/T;->sB:I

    return-object p0
.end method
