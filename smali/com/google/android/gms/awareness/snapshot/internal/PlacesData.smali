.class public final Lcom/google/android/gms/awareness/snapshot/internal/PlacesData;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mO:I

.field private final mP:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/k;

    invoke-direct {v0}, Lcom/google/android/gms/awareness/snapshot/internal/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/awareness/snapshot/internal/PlacesData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/PlacesData;->mO:I

    iput-object p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/PlacesData;->mP:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method qC()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/PlacesData;->mP:Ljava/util/ArrayList;

    return-object v0
.end method

.method qD()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/PlacesData;->mO:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/awareness/snapshot/internal/k;->qJ(Lcom/google/android/gms/awareness/snapshot/internal/PlacesData;Landroid/os/Parcel;I)V

    return-void
.end method
