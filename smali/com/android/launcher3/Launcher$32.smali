.class final Lcom/android/launcher3/Launcher$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$apps:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$32;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$32;->val$apps:Ljava/util/ArrayList;

    .line 3763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3765
    iget-object v0, p0, Lcom/android/launcher3/Launcher$32;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$32;->val$apps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->bindAppsUpdated(Ljava/util/ArrayList;)V

    .line 3766
    return-void
.end method
