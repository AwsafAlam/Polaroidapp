.class public Let/song/ui/widgets/PercentLinearLayout$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "PercentLinearLayout.java"

# interfaces
.implements Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Let/song/ui/widgets/PercentLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field private mPercentLayoutInfo:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    invoke-static {p1, p2}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentLayoutInfo(Landroid/content/Context;Landroid/util/AttributeSet;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v0

    iput-object v0, p0, Let/song/ui/widgets/PercentLinearLayout$LayoutParams;->mPercentLayoutInfo:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 105
    return-void
.end method


# virtual methods
.method public getPercentLayoutInfo()Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Let/song/ui/widgets/PercentLinearLayout$LayoutParams;->mPercentLayoutInfo:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    return-object v0
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 0
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    .prologue
    .line 92
    invoke-static {p0, p1, p2, p3}, Let/song/ui/widgets/PercentLayoutHelper;->fetchWidthAndHeight(Landroid/view/ViewGroup$LayoutParams;Landroid/content/res/TypedArray;II)V

    .line 93
    return-void
.end method
