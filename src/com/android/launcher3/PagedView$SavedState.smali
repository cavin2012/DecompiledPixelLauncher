.class public Lcom/android/launcher3/PagedView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field currentPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2014
    new-instance v0, Lcom/android/launcher3/PagedView$SavedState$1;

    invoke-direct {v0}, Lcom/android/launcher3/PagedView$SavedState$1;-><init>()V

    .line 2013
    sput-object v0, Lcom/android/launcher3/PagedView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1995
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 2003
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1996
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView$SavedState;->currentPage:I

    .line 2004
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView$SavedState;->currentPage:I

    .line 2005
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 2009
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2010
    iget v0, p0, Lcom/android/launcher3/PagedView$SavedState;->currentPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2011
    return-void
.end method
