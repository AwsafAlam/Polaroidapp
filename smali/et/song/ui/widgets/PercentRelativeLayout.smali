.class public Let/song/ui/widgets/PercentRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "PercentRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Let/song/ui/widgets/PercentRelativeLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private final mHelper:Let/song/ui/widgets/PercentLayoutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Let/song/ui/widgets/PercentLayoutHelper;

    invoke-direct {v0, p0}, Let/song/ui/widgets/PercentLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Let/song/ui/widgets/PercentRelativeLayout;->mHelper:Let/song/ui/widgets/PercentLayoutHelper;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    new-instance v0, Let/song/ui/widgets/PercentLayoutHelper;

    invoke-direct {v0, p0}, Let/song/ui/widgets/PercentLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Let/song/ui/widgets/PercentRelativeLayout;->mHelper:Let/song/ui/widgets/PercentLayoutHelper;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Let/song/ui/widgets/PercentLayoutHelper;

    invoke-direct {v0, p0}, Let/song/ui/widgets/PercentLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Let/song/ui/widgets/PercentRelativeLayout;->mHelper:Let/song/ui/widgets/PercentLayoutHelper;

    .line 80
    return-void
.end method


# virtual methods
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Let/song/ui/widgets/PercentRelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Let/song/ui/widgets/PercentRelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Let/song/ui/widgets/PercentRelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Let/song/ui/widgets/PercentRelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Let/song/ui/widgets/PercentRelativeLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    new-instance v0, Let/song/ui/widgets/PercentRelativeLayout$LayoutParams;

    invoke-virtual {p0}, Let/song/ui/widgets/PercentRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Let/song/ui/widgets/PercentRelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 98
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 99
    iget-object v0, p0, Let/song/ui/widgets/PercentRelativeLayout;->mHelper:Let/song/ui/widgets/PercentLayoutHelper;

    invoke-virtual {v0}, Let/song/ui/widgets/PercentLayoutHelper;->restoreOriginalParams()V

    .line 100
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 89
    iget-object v0, p0, Let/song/ui/widgets/PercentRelativeLayout;->mHelper:Let/song/ui/widgets/PercentLayoutHelper;

    invoke-virtual {v0, p1, p2}, Let/song/ui/widgets/PercentLayoutHelper;->adjustChildren(II)V

    .line 90
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 91
    iget-object v0, p0, Let/song/ui/widgets/PercentRelativeLayout;->mHelper:Let/song/ui/widgets/PercentLayoutHelper;

    invoke-virtual {v0}, Let/song/ui/widgets/PercentLayoutHelper;->handleMeasuredStateTooSmall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 94
    :cond_0
    return-void
.end method
