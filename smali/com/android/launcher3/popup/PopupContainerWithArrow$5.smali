.class final Lcom/android/launcher3/popup/PopupContainerWithArrow$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$5;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 617
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 620
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$5;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$5;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->-get1(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/notification/NotificationItemView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->removeView(Landroid/view/View;)V

    .line 621
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$5;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->-set0(Lcom/android/launcher3/popup/PopupContainerWithArrow;Lcom/android/launcher3/notification/NotificationItemView;)Lcom/android/launcher3/notification/NotificationItemView;

    .line 622
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$5;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$5;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->close(Z)V

    .line 624
    return-void

    .line 626
    :cond_0
    return-void
.end method
