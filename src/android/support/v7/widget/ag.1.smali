.class Landroid/support/v7/widget/ag;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic RM:I

.field final synthetic RN:I

.field final synthetic RO:Landroid/support/v7/widget/Z;

.field final synthetic RP:Landroid/support/v7/widget/j;

.field final synthetic RQ:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Z;Landroid/support/v7/widget/j;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Landroid/support/v7/widget/ag;->RO:Landroid/support/v7/widget/Z;

    iput-object p2, p0, Landroid/support/v7/widget/ag;->RP:Landroid/support/v7/widget/j;

    iput p3, p0, Landroid/support/v7/widget/ag;->RN:I

    iput-object p4, p0, Landroid/support/v7/widget/ag;->val$view:Landroid/view/View;

    iput p5, p0, Landroid/support/v7/widget/ag;->RM:I

    iput-object p6, p0, Landroid/support/v7/widget/ag;->RQ:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 300
    iget v0, p0, Landroid/support/v7/widget/ag;->RN:I

    if-nez v0, :cond_0

    .line 303
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/ag;->RM:I

    if-nez v0, :cond_1

    .line 306
    :goto_1
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ag;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 304
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ag;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Landroid/support/v7/widget/ag;->RQ:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 311
    iget-object v0, p0, Landroid/support/v7/widget/ag;->RO:Landroid/support/v7/widget/Z;

    iget-object v1, p0, Landroid/support/v7/widget/ag;->RP:Landroid/support/v7/widget/j;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Z;->ach(Landroid/support/v7/widget/j;)V

    .line 312
    iget-object v0, p0, Landroid/support/v7/widget/ag;->RO:Landroid/support/v7/widget/Z;

    iget-object v0, v0, Landroid/support/v7/widget/Z;->Rb:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/ag;->RP:Landroid/support/v7/widget/j;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, p0, Landroid/support/v7/widget/ag;->RO:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->aaD()V

    .line 314
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v7/widget/ag;->RO:Landroid/support/v7/widget/Z;

    iget-object v1, p0, Landroid/support/v7/widget/ag;->RP:Landroid/support/v7/widget/j;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Z;->acg(Landroid/support/v7/widget/j;)V

    .line 296
    return-void
.end method
