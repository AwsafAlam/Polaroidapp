.class public Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmacrochip/app/newpl1200/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MulitPointTouchListener"
.end annotation


# instance fields
.field pf:Landroid/graphics/PointF;

.field final synthetic this$0:Lmacrochip/app/newpl1200/HelpActivity;


# direct methods
.method public constructor <init>(Lmacrochip/app/newpl1200/HelpActivity;)V
    .locals 1

    .prologue
    .line 123
    iput-object p1, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->pf:Landroid/graphics/PointF;

    .line 125
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 130
    move-object v9, p1

    check-cast v9, Landroid/widget/ImageView;

    .line 131
    .local v9, "view":Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 163
    :goto_0
    return v6

    .line 134
    :pswitch_0
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->pf:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 137
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 138
    .local v7, "curX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 139
    .local v8, "curY":F
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    iget v2, v0, Lmacrochip/app/newpl1200/HelpActivity;->globalNum:I

    iget-object v3, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->pf:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v8

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v0, Lmacrochip/app/newpl1200/HelpActivity;->globalNum:I

    .line 140
    const-string v0, "globalNum"

    iget-object v2, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    iget v2, v2, Lmacrochip/app/newpl1200/HelpActivity;->globalNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    iget v0, v0, Lmacrochip/app/newpl1200/HelpActivity;->globalNum:I

    iget-object v2, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    iget v2, v2, Lmacrochip/app/newpl1200/HelpActivity;->globalHeight:I

    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    .line 142
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    iget v0, v0, Lmacrochip/app/newpl1200/HelpActivity;->globalNum:I

    if-gez v0, :cond_3

    .line 143
    :cond_0
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    iget v0, v0, Lmacrochip/app/newpl1200/HelpActivity;->globalNum:I

    if-gez v0, :cond_1

    .line 144
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    iput v1, v0, Lmacrochip/app/newpl1200/HelpActivity;->globalNum:I

    .line 146
    :cond_1
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    iget v0, v0, Lmacrochip/app/newpl1200/HelpActivity;->globalNum:I

    iget-object v1, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    iget v1, v1, Lmacrochip/app/newpl1200/HelpActivity;->globalHeight:I

    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_2

    .line 147
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    iget-object v1, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    iget v1, v1, Lmacrochip/app/newpl1200/HelpActivity;->globalHeight:I

    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lmacrochip/app/newpl1200/HelpActivity;->globalNum:I

    .line 155
    :cond_2
    :goto_1
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->pf:Landroid/graphics/PointF;

    invoke-virtual {v0, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 150
    :cond_3
    iget-object v10, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    invoke-static {v0}, Lmacrochip/app/newpl1200/HelpActivity;->access$1(Lmacrochip/app/newpl1200/HelpActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    iget v2, v2, Lmacrochip/app/newpl1200/HelpActivity;->globalNum:I

    .line 151
    iget-object v3, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    invoke-static {v3}, Lmacrochip/app/newpl1200/HelpActivity;->access$1(Lmacrochip/app/newpl1200/HelpActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    invoke-static {v4}, Lmacrochip/app/newpl1200/HelpActivity;->access$2(Lmacrochip/app/newpl1200/HelpActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    .line 150
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v10, v0}, Lmacrochip/app/newpl1200/HelpActivity;->access$3(Lmacrochip/app/newpl1200/HelpActivity;Landroid/graphics/Bitmap;)V

    .line 153
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    iget-object v0, v0, Lmacrochip/app/newpl1200/HelpActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    iget-object v1, v1, Lmacrochip/app/newpl1200/HelpActivity;->mSetBitmap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 158
    .end local v7    # "curX":F
    .end local v8    # "curY":F
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 159
    .restart local v7    # "curX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    goto/16 :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
