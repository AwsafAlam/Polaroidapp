.class Lcom/app/view/PreviewView$MyControlThread;
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
    name = "MyControlThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private startF:Z

.field final synthetic this$0:Lcom/app/view/PreviewView;


# direct methods
.method public constructor <init>(Lcom/app/view/PreviewView;Landroid/content/Context;)V
    .locals 1
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/app/view/PreviewView$MyControlThread;->this$0:Lcom/app/view/PreviewView;

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/view/PreviewView$MyControlThread;->startF:Z

    .line 589
    iput-object p2, p0, Lcom/app/view/PreviewView$MyControlThread;->mContext:Landroid/content/Context;

    .line 590
    return-void
.end method


# virtual methods
.method public isStart()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/app/view/PreviewView$MyControlThread;->startF:Z

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 610
    :goto_0
    iget-boolean v1, p0, Lcom/app/view/PreviewView$MyControlThread;->startF:Z

    if-nez v1, :cond_0

    .line 629
    return-void

    .line 612
    :cond_0
    iget-object v1, p0, Lcom/app/view/PreviewView$MyControlThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$55(Lcom/app/view/PreviewView;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/app/view/PreviewView$MyControlThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$0(Lcom/app/view/PreviewView;)Lcom/app/util/WLANCfg;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 615
    iget-object v1, p0, Lcom/app/view/PreviewView$MyControlThread;->this$0:Lcom/app/view/PreviewView;

    iget-object v2, p0, Lcom/app/view/PreviewView$MyControlThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$0(Lcom/app/view/PreviewView;)Lcom/app/util/WLANCfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/app/util/WLANCfg;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/app/view/PreviewView;->access$57(Lcom/app/view/PreviewView;Ljava/lang/String;)V

    .line 619
    :cond_1
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 620
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/view/PreviewView$MyControlThread;->startF:Z

    .line 600
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 601
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 604
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/view/PreviewView$MyControlThread;->startF:Z

    .line 605
    return-void
.end method
