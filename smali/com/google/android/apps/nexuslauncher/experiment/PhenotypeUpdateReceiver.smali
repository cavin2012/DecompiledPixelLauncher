.class public Lcom/google/android/apps/nexuslauncher/experiment/PhenotypeUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static cH(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/gms/common/api/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/phenotype/f;->lS:Lcom/google/android/gms/common/api/h;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/e;->dO(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->build()Lcom/google/android/gms/common/api/d;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->dv()V

    .line 29
    new-instance v1, Lcom/google/android/apps/nexuslauncher/experiment/a;

    invoke-direct {v1, v0}, Lcom/google/android/apps/nexuslauncher/experiment/a;-><init>(Lcom/google/android/gms/common/api/d;)V

    .line 31
    const-string/jumbo v0, ""

    .line 32
    invoke-virtual {v1, v0, v1}, Lcom/google/android/apps/nexuslauncher/experiment/a;->oX(Ljava/lang/String;Lcom/google/android/gms/phenotype/d;)V

    .line 33
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/experiment/PhenotypeUpdateReceiver;->cH(Landroid/content/Context;)V

    .line 24
    return-void
.end method
