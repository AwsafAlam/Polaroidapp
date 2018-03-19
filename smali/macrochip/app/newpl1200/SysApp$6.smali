.class Lmacrochip/app/newpl1200/SysApp$6;
.super Ljava/lang/Object;
.source "SysApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmacrochip/app/newpl1200/SysApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmacrochip/app/newpl1200/SysApp;


# direct methods
.method constructor <init>(Lmacrochip/app/newpl1200/SysApp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmacrochip/app/newpl1200/SysApp$6;->this$0:Lmacrochip/app/newpl1200/SysApp;

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 591
    sget v0, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 593
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp$6;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v0}, Lmacrochip/app/newpl1200/SysApp;->udpSendTime()V

    .line 595
    :cond_0
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp$6;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v0}, Lmacrochip/app/newpl1200/SysApp;->access$0(Lmacrochip/app/newpl1200/SysApp;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$6;->this$0:Lmacrochip/app/newpl1200/SysApp;

    iget-object v1, v1, Lmacrochip/app/newpl1200/SysApp;->sendDevTime:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 596
    return-void
.end method
