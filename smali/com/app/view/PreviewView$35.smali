.class Lcom/app/view/PreviewView$35;
.super Ljava/lang/Object;
.source "PreviewView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/app/view/PreviewView$35;->this$0:Lcom/app/view/PreviewView;

    .line 2022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 2025
    iget-object v0, p0, Lcom/app/view/PreviewView$35;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$90(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v0

    invoke-virtual {v0}, Let/song/ui/widgets/ETButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2027
    iget-object v0, p0, Lcom/app/view/PreviewView$35;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$62(Lcom/app/view/PreviewView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/app/view/PreviewView$35;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$91(Lcom/app/view/PreviewView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 2029
    iget-object v0, p0, Lcom/app/view/PreviewView$35;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$62(Lcom/app/view/PreviewView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2036
    :cond_0
    :goto_0
    return-void

    .line 2033
    :cond_1
    iget-object v0, p0, Lcom/app/view/PreviewView$35;->this$0:Lcom/app/view/PreviewView;

    iget-object v0, v0, Lcom/app/view/PreviewView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/app/view/PreviewView$35;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$92(Lcom/app/view/PreviewView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
