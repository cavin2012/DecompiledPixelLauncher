.class public Lcom/google/android/gms/common/api/A;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eG(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "unknown status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "SUCCESS_CACHE"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "SUCCESS"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "SERVICE_DISABLED"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "SIGN_IN_REQUIRED"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "INVALID_ACCOUNT"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "RESOLUTION_REQUIRED"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "NETWORK_ERROR"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "INTERNAL_ERROR"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "DEVELOPER_ERROR"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "ERROR"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "INTERRUPTED"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "TIMEOUT"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "CANCELED"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "API_NOT_CONNECTED"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "DEAD_CLIENT"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
