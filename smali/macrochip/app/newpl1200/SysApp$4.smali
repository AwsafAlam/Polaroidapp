.class Lmacrochip/app/newpl1200/SysApp$4;
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
    iput-object p1, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/16 v5, 0xf

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 517
    sget v0, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 519
    sget v0, Lcom/fh/lib/PlayInfo;->transMode:I

    if-eq v0, v2, :cond_0

    .line 521
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    new-instance v1, Lcom/app/util/WLANCfg;

    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v2}, Lmacrochip/app/newpl1200/SysApp;->access$16(Lmacrochip/app/newpl1200/SysApp;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/app/util/WLANCfg;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lmacrochip/app/newpl1200/SysApp;->access$17(Lmacrochip/app/newpl1200/SysApp;Lcom/app/util/WLANCfg;)V

    .line 522
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SysApp;->access$18(Lmacrochip/app/newpl1200/SysApp;)Lcom/app/util/WLANCfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/app/util/WLANCfg;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmacrochip/app/newpl1200/SysApp;->access$19(Lmacrochip/app/newpl1200/SysApp;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v0}, Lmacrochip/app/newpl1200/SysApp;->access$0(Lmacrochip/app/newpl1200/SysApp;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    iget-object v1, v1, Lmacrochip/app/newpl1200/SysApp;->checkSSID:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 524
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v0, v4}, Lmacrochip/app/newpl1200/SysApp;->access$20(Lmacrochip/app/newpl1200/SysApp;Z)V

    .line 525
    new-instance v0, Lcom/fh/lib/PlayInfo;

    invoke-direct {v0}, Lcom/fh/lib/PlayInfo;-><init>()V

    invoke-static {v0}, Lcom/fh/lib/FHSDK;->setPlayInfo(Lcom/fh/lib/PlayInfo;)I

    .line 552
    :goto_0
    return-void

    .line 529
    :cond_0
    sput v2, Lcom/fh/lib/PlayInfo;->transMode:I

    .line 530
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    new-array v1, v3, [B

    aput-byte v5, v1, v4

    invoke-virtual {v0, v1}, Lmacrochip/app/newpl1200/SysApp;->writeUDPCmd([B)V

    .line 531
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v0}, Lmacrochip/app/newpl1200/SysApp;->access$0(Lmacrochip/app/newpl1200/SysApp;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    iget-object v1, v1, Lmacrochip/app/newpl1200/SysApp;->checkDevType:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 536
    :cond_1
    sget v0, Lcom/fh/lib/PlayInfo;->udpDevType:I

    if-eqz v0, :cond_2

    .line 538
    const-string v0, "111111111111111111"

    invoke-static {v0}, Lcom/app/util/log;->e(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    new-instance v1, Lcom/app/util/WLANCfg;

    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v2}, Lmacrochip/app/newpl1200/SysApp;->access$16(Lmacrochip/app/newpl1200/SysApp;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/app/util/WLANCfg;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lmacrochip/app/newpl1200/SysApp;->access$17(Lmacrochip/app/newpl1200/SysApp;Lcom/app/util/WLANCfg;)V

    .line 541
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SysApp;->access$18(Lmacrochip/app/newpl1200/SysApp;)Lcom/app/util/WLANCfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/app/util/WLANCfg;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmacrochip/app/newpl1200/SysApp;->access$19(Lmacrochip/app/newpl1200/SysApp;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v0}, Lmacrochip/app/newpl1200/SysApp;->access$0(Lmacrochip/app/newpl1200/SysApp;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    iget-object v1, v1, Lmacrochip/app/newpl1200/SysApp;->checkSSID:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 543
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v0, v4}, Lmacrochip/app/newpl1200/SysApp;->access$20(Lmacrochip/app/newpl1200/SysApp;Z)V

    .line 544
    new-instance v0, Lcom/fh/lib/PlayInfo;

    invoke-direct {v0}, Lcom/fh/lib/PlayInfo;-><init>()V

    invoke-static {v0}, Lcom/fh/lib/FHSDK;->setPlayInfo(Lcom/fh/lib/PlayInfo;)I

    goto :goto_0

    .line 548
    :cond_2
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    new-array v1, v3, [B

    aput-byte v5, v1, v4

    invoke-virtual {v0, v1}, Lmacrochip/app/newpl1200/SysApp;->writeUDPCmd([B)V

    .line 549
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v0}, Lmacrochip/app/newpl1200/SysApp;->access$0(Lmacrochip/app/newpl1200/SysApp;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$4;->this$0:Lmacrochip/app/newpl1200/SysApp;

    iget-object v1, v1, Lmacrochip/app/newpl1200/SysApp;->checkDevType:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
