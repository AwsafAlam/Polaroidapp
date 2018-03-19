.class Lcom/app/view/PreviewView$30;
.super Ljava/lang/Object;
.source "PreviewView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/view/PreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/view/PreviewView;


# direct methods
.method constructor <init>(Lcom/app/view/PreviewView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    .line 1771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x1

    .line 1778
    sget v1, Lcom/fh/lib/PlayInfo;->playType:I

    if-eq v1, v4, :cond_0

    sget v1, Lcom/fh/lib/PlayInfo;->playType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    .line 1780
    :cond_0
    sget v1, Lcom/fh/lib/PlayInfo;->decodeType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1781
    sget v1, Lcom/fh/lib/PlayInfo;->decodeType:I

    if-ne v1, v7, :cond_5

    .line 1783
    :cond_1
    invoke-static {}, Lcom/fh/lib/FHSDK;->is3DMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1785
    iget-object v1, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$61(Lcom/app/view/PreviewView;)V

    .line 1796
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$62(Lcom/app/view/PreviewView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 1798
    iget-object v1, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$62(Lcom/app/view/PreviewView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1801
    iget-object v1, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$63(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v1

    invoke-virtual {v1}, Let/song/ui/widgets/ETButton;->getVisibility()I

    move-result v1

    if-eq v3, v1, :cond_3

    .line 1803
    iget-object v1, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$63(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Let/song/ui/widgets/ETButton;->setVisibility(I)V

    .line 1806
    :cond_3
    iget-object v1, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/app/view/PreviewView;->access$64(Lcom/app/view/PreviewView;J)V

    .line 1809
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$65(Lcom/app/view/PreviewView;)I

    move-result v1

    if-ne v4, v1, :cond_7

    .line 1810
    const/16 v0, 0x64

    .line 1811
    .local v0, "extendLen":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$66(Lcom/app/view/PreviewView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$66(Lcom/app/view/PreviewView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 1812
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$66(Lcom/app/view/PreviewView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$66(Lcom/app/view/PreviewView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 1813
    iget-object v1, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1, v4}, Lcom/app/view/PreviewView;->access$67(Lcom/app/view/PreviewView;Z)V

    .line 1835
    .end local v0    # "extendLen":I
    :cond_4
    :goto_1
    return v4

    .line 1788
    :cond_5
    sget v1, Lcom/fh/lib/PlayInfo;->decodeType:I

    if-eqz v1, :cond_6

    .line 1789
    sget v1, Lcom/fh/lib/PlayInfo;->decodeType:I

    if-ne v1, v4, :cond_2

    .line 1791
    :cond_6
    sget v1, Lcom/app/Interface/MyMediaCodec;->SHOW_MODE_3D:I

    invoke-static {}, Lcom/app/Interface/MyMediaCodec;->getInstance()Lcom/app/Interface/MyMediaCodec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/app/Interface/MyMediaCodec;->getShowMode()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1793
    iget-object v1, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$61(Lcom/app/view/PreviewView;)V

    goto/16 :goto_0

    .line 1815
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 1816
    iget-object v1, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1, v5}, Lcom/app/view/PreviewView;->access$68(Lcom/app/view/PreviewView;F)V

    .line 1817
    iget-object v1, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1, v5}, Lcom/app/view/PreviewView;->access$69(Lcom/app/view/PreviewView;F)V

    .line 1821
    iget-object v1, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v1

    invoke-virtual {v1, v4}, Let/song/ui/widgets/ETRightRocker;->setLock(Z)V

    .line 1822
    iget-object v1, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v1

    invoke-virtual {v1}, Let/song/ui/widgets/ETRightRocker;->Refresh()V

    goto :goto_1

    .line 1825
    :cond_8
    sget v1, Lcom/fh/lib/PlayInfo;->playType:I

    if-ne v1, v7, :cond_4

    .line 1826
    iget-object v1, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$62(Lcom/app/view/PreviewView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_9

    .line 1827
    iget-object v1, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$62(Lcom/app/view/PreviewView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1831
    :cond_9
    iget-object v1, p0, Lcom/app/view/PreviewView$30;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$62(Lcom/app/view/PreviewView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
