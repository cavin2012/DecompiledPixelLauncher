.class public Lcom/google/android/gms/phenotype/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Dl(Lcom/google/android/gms/phenotype/ExperimentTokens;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hM(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->yV:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hX(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->zf:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->ic(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->yZ:[B

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->ij(Landroid/os/Parcel;I[BZ)V

    iget-object v1, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->zg:[[B

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->hR(Landroid/os/Parcel;I[[BZ)V

    iget-object v1, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->ze:[[B

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->hR(Landroid/os/Parcel;I[[BZ)V

    iget-object v1, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->za:[[B

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->hR(Landroid/os/Parcel;I[[BZ)V

    iget-object v1, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->yU:[[B

    const/4 v2, 0x7

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->hR(Landroid/os/Parcel;I[[BZ)V

    iget-object v1, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->yW:[I

    const/16 v2, 0x8

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->ib(Landroid/os/Parcel;I[IZ)V

    iget-object v1, p0, Lcom/google/android/gms/phenotype/ExperimentTokens;->yR:[[B

    const/16 v2, 0x9

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->hR(Landroid/os/Parcel;I[[BZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hS(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public Dk(I)[Lcom/google/android/gms/phenotype/ExperimentTokens;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/phenotype/ExperimentTokens;

    return-object v0
.end method

.method public Dm(Landroid/os/Parcel;)Lcom/google/android/gms/phenotype/ExperimentTokens;
    .locals 12

    const/4 v9, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->ix(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    move-object v8, v9

    move-object v7, v9

    move-object v6, v9

    move-object v5, v9

    move-object v4, v9

    move-object v3, v9

    move-object v2, v9

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    if-lt v10, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    if-ne v10, v0, :cond_1

    new-instance v0, Lcom/google/android/gms/phenotype/ExperimentTokens;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/phenotype/ExperimentTokens;-><init>(ILjava/lang/String;[B[[B[[B[[B[[B[I[[B)V

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->iG(Landroid/os/Parcel;)I

    move-result v10

    invoke-static {v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->iO(I)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->io(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->iB(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->iE(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->iT(Landroid/os/Parcel;I)[B

    move-result-object v3

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->ip(Landroid/os/Parcel;I)[[B

    move-result-object v4

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->ip(Landroid/os/Parcel;I)[[B

    move-result-object v5

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->ip(Landroid/os/Parcel;I)[[B

    move-result-object v6

    goto :goto_0

    :pswitch_6
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->ip(Landroid/os/Parcel;I)[[B

    move-result-object v7

    goto :goto_0

    :pswitch_7
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->iy(Landroid/os/Parcel;I)[I

    move-result-object v8

    goto :goto_0

    :pswitch_8
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->ip(Landroid/os/Parcel;I)[[B

    move-result-object v9

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Overread allowed size end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/phenotype/p;->Dm(Landroid/os/Parcel;)Lcom/google/android/gms/phenotype/ExperimentTokens;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/phenotype/p;->Dk(I)[Lcom/google/android/gms/phenotype/ExperimentTokens;

    move-result-object v0

    return-object v0
.end method
