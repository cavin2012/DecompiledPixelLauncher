.class public final Lcom/google/android/gms/internal/be;
.super Ljava/lang/Object;


# instance fields
.field private tA:I

.field private tB:I

.field private tC:I

.field private tD:I

.field private final tE:[B

.field private tF:I

.field private tG:I

.field private tx:I

.field private ty:I

.field private tz:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/be;->tA:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/be;->tC:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/android/gms/internal/be;->tB:I

    iput-object p1, p0, Lcom/google/android/gms/internal/be;->tE:[B

    iput p2, p0, Lcom/google/android/gms/internal/be;->tD:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/android/gms/internal/be;->tG:I

    iput p2, p0, Lcom/google/android/gms/internal/be;->ty:I

    return-void
.end method

.method public static xH(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static xR([BII)Lcom/google/android/gms/internal/be;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/be;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/be;-><init>([BII)V

    return-object v0
.end method

.method private xW()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/be;->tG:I

    iget v1, p0, Lcom/google/android/gms/internal/be;->tF:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/be;->tG:I

    iget v0, p0, Lcom/google/android/gms/internal/be;->tG:I

    iget v1, p0, Lcom/google/android/gms/internal/be;->tA:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/be;->tF:I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/be;->tA:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/be;->tF:I

    iget v0, p0, Lcom/google/android/gms/internal/be;->tG:I

    iget v1, p0, Lcom/google/android/gms/internal/be;->tF:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/be;->tG:I

    goto :goto_0
.end method


# virtual methods
.method public xF()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->yc()I

    move-result v0

    return v0
.end method

.method public xG()I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->yh()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->yc()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/be;->tx:I

    iget v0, p0, Lcom/google/android/gms/internal/be;->tx:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/be;->tx:I

    return v0

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/be;->tx:I

    return v1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzaxw;->xx()Lcom/google/android/gms/internal/zzaxw;

    move-result-object v0

    throw v0
.end method

.method public xI(II)[B
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    new-array v0, p2, [B

    iget v1, p0, Lcom/google/android/gms/internal/be;->tD:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/google/android/gms/internal/be;->tE:[B

    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/aN;->sQ:[B

    return-object v0
.end method

.method public xJ()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->xM()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/be;->xH(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public xK()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/be;->tA:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/be;->ty:I

    iget v1, p0, Lcom/google/android/gms/internal/be;->tA:I

    sub-int v0, v1, v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public xL()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/be;->ty:I

    iget v1, p0, Lcom/google/android/gms/internal/be;->tD:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public xM()J
    .locals 6

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v3, 0x40

    if-lt v2, v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzaxw;->xA()Lcom/google/android/gms/internal/zzaxw;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->ye()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public xN()J
    .locals 14

    const-wide/16 v12, 0xff

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->ye()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->ye()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->ye()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->ye()B

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->ye()B

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->ye()B

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->ye()B

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->ye()B

    move-result v7

    int-to-long v8, v0

    and-long/2addr v8, v12

    int-to-long v0, v1

    and-long/2addr v0, v12

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v12

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v12

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v12

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v12

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v12

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v12

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public xO()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->yc()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public xP()[B
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->yc()I

    move-result v0

    if-ltz v0, :cond_0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/be;->tG:I

    iget v2, p0, Lcom/google/android/gms/internal/be;->ty:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/google/android/gms/internal/be;->tE:[B

    iget v3, p0, Lcom/google/android/gms/internal/be;->ty:I

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/android/gms/internal/be;->ty:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/be;->ty:I

    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzaxw;->xu()Lcom/google/android/gms/internal/zzaxw;

    move-result-object v0

    throw v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/aN;->sQ:[B

    return-object v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/zzaxw;->xz()Lcom/google/android/gms/internal/zzaxw;

    move-result-object v0

    throw v0
.end method

.method public xQ(Lcom/google/android/gms/internal/aI;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->yc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/be;->tz:I

    iget v2, p0, Lcom/google/android/gms/internal/be;->tC:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/be;->yf(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/be;->tz:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/be;->tz:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/aI;->sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/be;->xU(I)V

    iget v1, p0, Lcom/google/android/gms/internal/be;->tz:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/be;->tz:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/be;->xT(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzaxw;->xw()Lcom/google/android/gms/internal/zzaxw;

    move-result-object v0

    throw v0
.end method

.method public xS()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->xN()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public xT(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/be;->tA:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/be;->xW()V

    return-void
.end method

.method public xU(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/be;->tx:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzaxw;->xv()Lcom/google/android/gms/internal/zzaxw;

    move-result-object v0

    throw v0
.end method

.method public xV(I)Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/aN;->vm(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/zzaxw;->xy()Lcom/google/android/gms/internal/zzaxw;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->xF()I

    return v2

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->xN()J

    return v2

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->yc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/be;->xY(I)V

    return v2

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->yg()V

    invoke-static {p1}, Lcom/google/android/gms/internal/aN;->vl(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aN;->vj(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/be;->xU(I)V

    return v2

    :pswitch_4
    const/4 v0, 0x0

    return v0

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->yb()I

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public xX()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->xM()J

    move-result-wide v0

    return-wide v0
.end method

.method public xY(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/be;->ty:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/be;->tA:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/be;->tG:I

    iget v1, p0, Lcom/google/android/gms/internal/be;->ty:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzaxw;->xz()Lcom/google/android/gms/internal/zzaxw;

    move-result-object v0

    throw v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzaxw;->xu()Lcom/google/android/gms/internal/zzaxw;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/be;->tA:I

    iget v1, p0, Lcom/google/android/gms/internal/be;->ty:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/be;->xY(I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzaxw;->xz()Lcom/google/android/gms/internal/zzaxw;

    move-result-object v0

    throw v0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/be;->ty:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/be;->ty:I

    return-void
.end method

.method public xZ(I)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/be;->ty:I

    iget v1, p0, Lcom/google/android/gms/internal/be;->tD:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/be;->tD:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/be;->ty:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/android/gms/internal/be;->ty:I

    iget v2, p0, Lcom/google/android/gms/internal/be;->tD:I

    sub-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is beyond current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ya()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->yc()I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/be;->tG:I

    iget v2, p0, Lcom/google/android/gms/internal/be;->ty:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/be;->tE:[B

    iget v3, p0, Lcom/google/android/gms/internal/be;->ty:I

    sget-object v4, Lcom/google/android/gms/internal/aX;->tl:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/be;->ty:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/be;->ty:I

    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzaxw;->xu()Lcom/google/android/gms/internal/zzaxw;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzaxw;->xz()Lcom/google/android/gms/internal/zzaxw;

    move-result-object v0

    throw v0
.end method

.method public yb()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->ye()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->ye()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->ye()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->ye()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public yc()I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->ye()B

    move-result v0

    if-gez v0, :cond_0

    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->ye()B

    move-result v2

    if-gez v2, :cond_1

    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->ye()B

    move-result v2

    if-gez v2, :cond_2

    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->ye()B

    move-result v2

    if-gez v2, :cond_3

    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->ye()B

    move-result v2

    shl-int/lit8 v3, v2, 0x1c

    or-int/2addr v0, v3

    if-ltz v2, :cond_5

    :goto_0
    return v0

    :cond_0
    return v0

    :cond_1
    shl-int/lit8 v1, v2, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    :cond_2
    shl-int/lit8 v1, v2, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    shl-int/lit8 v1, v2, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->ye()B

    move-result v2

    if-gez v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_5
    const/4 v2, 0x5

    if-lt v1, v2, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/zzaxw;->xA()Lcom/google/android/gms/internal/zzaxw;

    move-result-object v0

    throw v0

    :cond_6
    return v0
.end method

.method public yd()F
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->yb()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public ye()B
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/be;->ty:I

    iget v1, p0, Lcom/google/android/gms/internal/be;->tG:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/be;->tE:[B

    iget v1, p0, Lcom/google/android/gms/internal/be;->ty:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/be;->ty:I

    aget-byte v0, v0, v1

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzaxw;->xz()Lcom/google/android/gms/internal/zzaxw;

    move-result-object v0

    throw v0
.end method

.method public yf(I)I
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/be;->ty:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/be;->tA:I

    if-gt v0, v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/be;->tA:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/be;->xW()V

    return v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzaxw;->xu()Lcom/google/android/gms/internal/zzaxw;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzaxw;->xz()Lcom/google/android/gms/internal/zzaxw;

    move-result-object v0

    throw v0
.end method

.method public yg()V
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->xG()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/be;->xV(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public yh()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/be;->ty:I

    iget v1, p0, Lcom/google/android/gms/internal/be;->tG:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
