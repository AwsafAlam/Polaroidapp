.class Lmacrochip/app/newpl1200/SysApp$3;
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
    iput-object p1, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 478
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v2}, Lmacrochip/app/newpl1200/SysApp;->getIpInfo()[I

    move-result-object v2

    invoke-static {v1, v2}, Lmacrochip/app/newpl1200/SysApp;->access$10(Lmacrochip/app/newpl1200/SysApp;[I)V

    .line 479
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SysApp;->access$12(Lmacrochip/app/newpl1200/SysApp;)[I

    move-result-object v1

    aget v1, v1, v3

    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v2}, Lmacrochip/app/newpl1200/SysApp;->access$13(Lmacrochip/app/newpl1200/SysApp;)[I

    move-result-object v2

    aget v2, v2, v3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SysApp;->access$12(Lmacrochip/app/newpl1200/SysApp;)[I

    move-result-object v1

    aget v1, v1, v4

    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v2}, Lmacrochip/app/newpl1200/SysApp;->access$13(Lmacrochip/app/newpl1200/SysApp;)[I

    move-result-object v2

    aget v2, v2, v4

    if-eq v1, v2, :cond_1

    .line 485
    :cond_0
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SysApp;->access$13(Lmacrochip/app/newpl1200/SysApp;)[I

    move-result-object v1

    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v2}, Lmacrochip/app/newpl1200/SysApp;->access$12(Lmacrochip/app/newpl1200/SysApp;)[I

    move-result-object v2

    aget v2, v2, v3

    aput v2, v1, v3

    .line 486
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SysApp;->access$13(Lmacrochip/app/newpl1200/SysApp;)[I

    move-result-object v1

    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v2}, Lmacrochip/app/newpl1200/SysApp;->access$12(Lmacrochip/app/newpl1200/SysApp;)[I

    move-result-object v2

    aget v2, v2, v4

    aput v2, v1, v4

    .line 487
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SysApp;->access$11(Lmacrochip/app/newpl1200/SysApp;)Lmacrochip/app/newpl1200/UDPServer;

    move-result-object v1

    invoke-virtual {v1}, Lmacrochip/app/newpl1200/UDPServer;->Stop()V

    .line 489
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SysApp;->access$12(Lmacrochip/app/newpl1200/SysApp;)[I

    move-result-object v1

    aget v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SysApp;->access$12(Lmacrochip/app/newpl1200/SysApp;)[I

    move-result-object v1

    aget v1, v1, v4

    if-eqz v1, :cond_1

    .line 491
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SysApp;->access$11(Lmacrochip/app/newpl1200/SysApp;)Lmacrochip/app/newpl1200/UDPServer;

    move-result-object v1

    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v2}, Lmacrochip/app/newpl1200/SysApp;->access$0(Lmacrochip/app/newpl1200/SysApp;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmacrochip/app/newpl1200/UDPServer;->setAccesser(Landroid/os/Handler;)V

    .line 492
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SysApp;->access$11(Lmacrochip/app/newpl1200/SysApp;)Lmacrochip/app/newpl1200/UDPServer;

    move-result-object v1

    invoke-virtual {v1}, Lmacrochip/app/newpl1200/UDPServer;->Start()V

    .line 494
    :try_start_0
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v2}, Lmacrochip/app/newpl1200/SysApp;->access$12(Lmacrochip/app/newpl1200/SysApp;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Lmacrochip/app/newpl1200/SysApp;->long2byte(I)[B

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v1, v2}, Lmacrochip/app/newpl1200/SysApp;->access$14(Lmacrochip/app/newpl1200/SysApp;Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_0
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v1}, Lmacrochip/app/newpl1200/SysApp;->getLocalAddrStr()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/fh/lib/PlayInfo;->udpIpAddr:Ljava/lang/String;

    .line 499
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v1}, Lmacrochip/app/newpl1200/SysApp;->getLocalAddrStr()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/fh/lib/PlayInfo;->RTSPUrl:Ljava/lang/String;

    .line 500
    const/16 v1, 0x22b8

    sput v1, Lcom/fh/lib/PlayInfo;->udpPort:I

    .line 501
    sput v4, Lcom/fh/lib/PlayInfo;->playType:I

    .line 509
    :cond_1
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SysApp;->access$15(Lmacrochip/app/newpl1200/SysApp;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 510
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SysApp;->access$0(Lmacrochip/app/newpl1200/SysApp;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$3;->this$0:Lmacrochip/app/newpl1200/SysApp;

    iget-object v2, v2, Lmacrochip/app/newpl1200/SysApp;->checkAP:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 512
    :cond_2
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/net/UnknownHostException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0
.end method
