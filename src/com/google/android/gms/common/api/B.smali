.class public final Lcom/google/android/gms/common/api/B;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eH(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/c;
    .locals 2

    const-string/jumbo v0, "Result must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/l;->ho(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/bA;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bA;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/bA;->rT(Lcom/google/android/gms/common/api/b;)V

    return-object v0
.end method
