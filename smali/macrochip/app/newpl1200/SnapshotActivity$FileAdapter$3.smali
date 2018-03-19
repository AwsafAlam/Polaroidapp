.class Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;
.super Ljava/lang/Object;
.source "SnapshotActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isMoveRvent:Z

.field final synthetic this$1:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

.field private final synthetic val$holder:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    iput-object p2, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->val$holder:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->isMoveRvent:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v7, 0x14

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 521
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    move v2, v3

    .line 562
    :cond_1
    :goto_1
    return v2

    .line 523
    :pswitch_0
    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v2, v4}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->access$1(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;I)V

    .line 524
    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v2, v4}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->access$2(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;I)V

    goto :goto_0

    .line 527
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 528
    .local v0, "curx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 529
    .local v1, "cury":I
    iget-object v4, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    invoke-static {v4}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->access$3(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;)I

    move-result v4

    sub-int v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v5, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    invoke-static {v5}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->access$5(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;)Lmacrochip/app/newpl1200/SnapshotActivity;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-static {v5, v6}, Lmacrochip/app/newpl1200/SnapshotActivity;->access$9(Lmacrochip/app/newpl1200/SnapshotActivity;I)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 531
    iget-object v4, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    invoke-static {v4}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->access$4(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;)I

    move-result v4

    iget-object v5, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    invoke-static {v5}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->access$5(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;)Lmacrochip/app/newpl1200/SnapshotActivity;

    move-result-object v5

    invoke-static {v5, v7}, Lmacrochip/app/newpl1200/SnapshotActivity;->access$9(Lmacrochip/app/newpl1200/SnapshotActivity;I)I

    move-result v5

    add-int/2addr v4, v5

    if-le v0, v4, :cond_2

    .line 533
    iput-boolean v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->isMoveRvent:Z

    .line 534
    iget-object v3, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->val$holder:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;

    iget-object v3, v3, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;->iconLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 537
    :cond_2
    iget-object v4, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    invoke-static {v4}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->access$4(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;)I

    move-result v4

    iget-object v5, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    invoke-static {v5}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->access$5(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;)Lmacrochip/app/newpl1200/SnapshotActivity;

    move-result-object v5

    invoke-static {v5, v7}, Lmacrochip/app/newpl1200/SnapshotActivity;->access$9(Lmacrochip/app/newpl1200/SnapshotActivity;I)I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v0, v4, :cond_0

    .line 539
    iput-boolean v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->isMoveRvent:Z

    .line 540
    iget-object v4, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->val$holder:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;

    iget-object v4, v4, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;->iconLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 546
    .end local v0    # "curx":I
    .end local v1    # "cury":I
    :pswitch_2
    iget-boolean v4, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->isMoveRvent:Z

    if-eqz v4, :cond_3

    .line 548
    iput-boolean v3, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->isMoveRvent:Z

    goto :goto_1

    .line 551
    :cond_3
    iget-object v4, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->val$holder:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;

    iget-object v4, v4, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;->iconLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 557
    :pswitch_3
    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    invoke-static {v2, v3}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->access$1(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;I)V

    .line 558
    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    invoke-static {v2, v3}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->access$2(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;I)V

    .line 559
    iput-boolean v3, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;->isMoveRvent:Z

    goto/16 :goto_0

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
