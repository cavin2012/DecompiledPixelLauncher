.class public final Lcom/google/android/gms/internal/aW;
.super Lcom/google/android/gms/internal/ba;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public tg:[B

.field public th:Z

.field public ti:Ljava/lang/String;

.field public tj:[[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ba;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aW;->wV()Lcom/google/android/gms/internal/aW;

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aW;->wW()Lcom/google/android/gms/internal/aW;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/ba;->computeSerializedSize()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/aW;->tg:[B

    sget-object v3, Lcom/google/android/gms/internal/aN;->sQ:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/aW;->tj:[[B

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/aW;->th:Z

    if-nez v1, :cond_5

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/aW;->ti:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/aW;->tg:[B

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/aV;->wM(I[B)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/aW;->tj:[[B

    array-length v2, v2

    if-lez v2, :cond_0

    move v2, v1

    move v3, v1

    :goto_4
    iget-object v4, p0, Lcom/google/android/gms/internal/aW;->tj:[[B

    array-length v4, v4

    if-lt v1, v4, :cond_3

    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/google/android/gms/internal/aW;->tj:[[B

    aget-object v4, v4, v1

    if-nez v4, :cond_4

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/aV;->wj([B)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_5

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/internal/aW;->th:Z

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wO(IZ)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/aW;->ti:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wl(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_3

    instance-of v2, p1, Lcom/google/android/gms/internal/aW;

    if-eqz v2, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/aW;

    iget-object v2, p0, Lcom/google/android/gms/internal/aW;->tg:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/aW;->tg:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/aW;->ti:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/aW;->ti:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/aW;->ti:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/aW;->tj:[[B

    iget-object v3, p1, Lcom/google/android/gms/internal/aW;->tj:[[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/aX;->wY([[B[[B)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/google/android/gms/internal/aW;->th:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/aW;->th:Z

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/aW;->tt:Lcom/google/android/gms/internal/aR;

    if-nez v2, :cond_a

    :cond_1
    iget-object v2, p1, Lcom/google/android/gms/internal/aW;->tt:Lcom/google/android/gms/internal/aR;

    if-nez v2, :cond_b

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    return v1

    :cond_4
    return v0

    :cond_5
    return v0

    :cond_6
    iget-object v2, p1, Lcom/google/android/gms/internal/aW;->ti:Ljava/lang/String;

    if-eqz v2, :cond_0

    return v0

    :cond_7
    return v0

    :cond_8
    return v0

    :cond_9
    return v0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/aW;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aR;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aW;->tt:Lcom/google/android/gms/internal/aR;

    iget-object v1, p1, Lcom/google/android/gms/internal/aW;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aR;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_b
    iget-object v2, p1, Lcom/google/android/gms/internal/aW;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aR;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/aW;->tg:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/aW;->ti:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aW;->ti:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/aW;->tj:[[B

    invoke-static {v2}, Lcom/google/android/gms/internal/aX;->xd([[B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aW;->th:Z

    if-nez v0, :cond_2

    const/16 v0, 0x4d5

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/aW;->tt:Lcom/google/android/gms/internal/aR;

    if-nez v2, :cond_3

    :cond_0
    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v0, 0x4cf

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/aW;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aR;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aW;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aR;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public sa(Lcom/google/android/gms/internal/aV;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/aW;->tg:[B

    sget-object v2, Lcom/google/android/gms/internal/aN;->sQ:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aW;->tj:[[B

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/aW;->th:Z

    if-nez v0, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aW;->ti:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ba;->sa(Lcom/google/android/gms/internal/aV;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/aW;->tg:[B

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/aV;->wz(I[B)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/aW;->tj:[[B

    array-length v1, v1

    if-lez v1, :cond_0

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/aW;->tj:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aW;->tj:[[B

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/aV;->wz(I[B)V

    goto :goto_4

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/aW;->th:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vO(IZ)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/aW;->ti:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vU(ILjava/lang/String;)V

    goto :goto_2
.end method

.method public synthetic sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aW;->wU(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aW;

    move-result-object v0

    return-object v0
.end method

.method public synthetic se()Lcom/google/android/gms/internal/ba;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aW;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aW;

    return-object v0
.end method

.method public synthetic sg()Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aW;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aW;

    return-object v0
.end method

.method public wU(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aW;
    .locals 4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ba;->xt(Lcom/google/android/gms/internal/be;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xP()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aW;->tg:[B

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aN;->vk(Lcom/google/android/gms/internal/be;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/aW;->tj:[[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aW;->tj:[[B

    array-length v0, v0

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    if-nez v0, :cond_2

    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xP()[B

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/aW;->tj:[[B

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/aW;->tj:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xP()[B

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xO()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aW;->th:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aW;->ti:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public wV()Lcom/google/android/gms/internal/aW;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/aN;->sQ:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/aW;->tg:[B

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/aW;->ti:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/aN;->sM:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/aW;->tj:[[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aW;->th:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aW;->tt:Lcom/google/android/gms/internal/aR;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/aW;->sB:I

    return-object p0
.end method

.method public wW()Lcom/google/android/gms/internal/aW;
    .locals 2

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ba;->se()Lcom/google/android/gms/internal/ba;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aW;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aW;->tj:[[B

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/aW;->tj:[[B

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aW;->tj:[[B

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, v0, Lcom/google/android/gms/internal/aW;->tj:[[B

    goto :goto_0
.end method
