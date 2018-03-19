.class Lcom/app/view/PreviewView$37;
.super Landroid/os/Handler;
.source "PreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/view/PreviewView;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bGetRecInfo:Z

.field final synthetic this$0:Lcom/app/view/PreviewView;


# direct methods
.method constructor <init>(Lcom/app/view/PreviewView;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    .line 660
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/view/PreviewView$37;->bGetRecInfo:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 663
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 781
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 782
    return-void

    .line 672
    :sswitch_1
    const/4 v6, 0x2

    sget v7, Lcom/fh/lib/PlayInfo;->playType:I

    if-ne v6, v7, :cond_2

    .line 675
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {}, Lcom/fh/lib/FHSDK;->getCurrentPts()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/app/view/PreviewView;->access$122(Lcom/app/view/PreviewView;J)V

    .line 677
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$123(Lcom/app/view/PreviewView;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 678
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$123(Lcom/app/view/PreviewView;)Landroid/widget/TextView;

    move-result-object v6

    sget v7, Lcom/fh/lib/PlayInfo;->userID:I

    iget-object v8, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v8}, Lcom/app/view/PreviewView;->access$124(Lcom/app/view/PreviewView;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/fh/lib/FHSDK;->timeConvert(IJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    :cond_1
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$124(Lcom/app/view/PreviewView;)J

    move-result-wide v6

    sget-wide v8, Lcom/app/view/PreviewView;->PBStartTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x2710

    mul-long/2addr v6, v8

    sget-wide v8, Lcom/app/view/PreviewView;->PBStopTime:J

    sget-wide v10, Lcom/app/view/PreviewView;->PBStartTime:J

    sub-long/2addr v8, v10

    div-long/2addr v6, v8

    long-to-int v3, v6

    .line 681
    .local v3, "progress":I
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$125(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 682
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$125(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 684
    .end local v3    # "progress":I
    :cond_2
    const/4 v6, 0x3

    sget v7, Lcom/fh/lib/PlayInfo;->playType:I

    if-ne v6, v7, :cond_0

    .line 686
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {}, Lcom/fh/lib/FHSDK;->getCurrentPts()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/app/view/PreviewView;->access$122(Lcom/app/view/PreviewView;J)V

    .line 687
    const-wide/16 v6, 0x0

    iget-object v8, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v8}, Lcom/app/view/PreviewView;->access$124(Lcom/app/view/PreviewView;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 690
    iget-boolean v6, p0, Lcom/app/view/PreviewView$37;->bGetRecInfo:Z

    if-eqz v6, :cond_4

    .line 692
    new-instance v4, Lcom/fh/lib/Define$PBRecTime;

    new-instance v6, Lcom/fh/lib/Define;

    invoke-direct {v6}, Lcom/fh/lib/Define;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v6}, Lcom/fh/lib/Define$PBRecTime;-><init>(Lcom/fh/lib/Define;)V

    .line 694
    .local v4, "recTime":Lcom/fh/lib/Define$PBRecTime;
    invoke-static {v4}, Lcom/fh/lib/FHSDK;->getRecPlayTimeInfo(Lcom/fh/lib/Define$PBRecTime;)Z

    .line 695
    iget-wide v6, v4, Lcom/fh/lib/Define$PBRecTime;->pbStopTime:J

    sput-wide v6, Lcom/app/view/PreviewView;->PBStopTime:J

    .line 696
    iget-wide v6, v4, Lcom/fh/lib/Define$PBRecTime;->pbStartTime:J

    sput-wide v6, Lcom/app/view/PreviewView;->PBStartTime:J

    .line 697
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    sget-wide v8, Lcom/app/view/PreviewView;->PBStopTime:J

    sget-wide v10, Lcom/app/view/PreviewView;->PBStartTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v6, v8, v9}, Lcom/app/view/PreviewView;->access$126(Lcom/app/view/PreviewView;J)V

    .line 698
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$127(Lcom/app/view/PreviewView;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 699
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$127(Lcom/app/view/PreviewView;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v7}, Lcom/app/view/PreviewView;->access$128(Lcom/app/view/PreviewView;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/app/util/ActivtyUtil;->formatTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    :cond_3
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/app/view/PreviewView$37;->bGetRecInfo:Z

    .line 704
    .end local v4    # "recTime":Lcom/fh/lib/Define$PBRecTime;
    :cond_4
    const/4 v3, 0x0

    .line 706
    .restart local v3    # "progress":I
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    iget-object v7, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v7}, Lcom/app/view/PreviewView;->access$124(Lcom/app/view/PreviewView;)J

    move-result-wide v8

    sget-wide v10, Lcom/app/view/PreviewView;->PBStartTime:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    sub-long/2addr v8, v10

    invoke-static {v6, v8, v9}, Lcom/app/view/PreviewView;->access$129(Lcom/app/view/PreviewView;J)V

    .line 707
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$128(Lcom/app/view/PreviewView;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    .line 708
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$130(Lcom/app/view/PreviewView;)J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    mul-long/2addr v6, v8

    iget-object v8, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v8}, Lcom/app/view/PreviewView;->access$128(Lcom/app/view/PreviewView;)J

    move-result-wide v8

    div-long/2addr v6, v8

    long-to-int v3, v6

    .line 709
    :cond_5
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$123(Lcom/app/view/PreviewView;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 710
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$123(Lcom/app/view/PreviewView;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v7}, Lcom/app/view/PreviewView;->access$130(Lcom/app/view/PreviewView;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/app/util/ActivtyUtil;->formatTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    :cond_6
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$125(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 712
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$125(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 714
    :cond_7
    const/16 v6, 0x64

    invoke-static {}, Lcom/fh/lib/FHSDK;->getRecPlayProgress()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 716
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    iget-object v0, v6, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 717
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 753
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v3    # "progress":I
    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 754
    .local v1, "b":Landroid/os/Bundle;
    const-string v6, "filePath"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 756
    .local v2, "filePath":Ljava/lang/String;
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    new-instance v7, Lcom/app/view/ConvertRecThread;

    iget-object v8, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    iget-object v8, v8, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v2}, Lcom/app/view/ConvertRecThread;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/app/view/PreviewView;->access$131(Lcom/app/view/PreviewView;Lcom/app/view/ConvertRecThread;)V

    .line 757
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$132(Lcom/app/view/PreviewView;)Lcom/app/view/ConvertRecThread;

    move-result-object v6

    invoke-virtual {v6}, Lcom/app/view/ConvertRecThread;->start()V

    goto/16 :goto_0

    .line 762
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v2    # "filePath":Ljava/lang/String;
    :sswitch_3
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    iget-object v6, v6, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    const v7, 0x7f080021

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 763
    .local v5, "s":Ljava/lang/String;
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    iget-object v6, v6, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/app/util/ActivtyUtil;->openToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 768
    .end local v5    # "s":Ljava/lang/String;
    :sswitch_4
    sget v6, Lcom/fh/lib/PlayInfo;->playType:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    .line 769
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v6

    invoke-virtual {v6}, Lmacrochip/app/newpl1200/SysApp;->requestIFrame()V

    goto/16 :goto_0

    .line 774
    :sswitch_5
    iget-object v6, p0, Lcom/app/view/PreviewView$37;->this$0:Lcom/app/view/PreviewView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/app/view/PreviewView;->hideBackGround(Z)V

    goto/16 :goto_0

    .line 663
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_0
        0x7d1 -> :sswitch_2
        0x7d2 -> :sswitch_3
        0x7d3 -> :sswitch_4
        0x7d4 -> :sswitch_5
    .end sparse-switch
.end method
