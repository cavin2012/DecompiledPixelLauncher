.class final Lcom/google/android/apps/nexuslauncher/qsb/g;
.super Landroid/util/Property;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public af(Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 34
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->k(Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public ag(Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->m(Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;I)V

    .line 40
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/g;->af(Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/qsb/g;->ag(Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;Ljava/lang/Integer;)V

    return-void
.end method
