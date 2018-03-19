.class Lmacrochip/app/newpl1200/SysApp$7;
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
    iput-object p1, p0, Lmacrochip/app/newpl1200/SysApp$7;->this$0:Lmacrochip/app/newpl1200/SysApp;

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 604
    sget v3, Lcom/fh/lib/PlayInfo;->transMode:I

    if-ne v3, v4, :cond_0

    .line 618
    :goto_0
    return-void

    .line 608
    :cond_0
    :try_start_0
    iget-object v3, p0, Lmacrochip/app/newpl1200/SysApp$7;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v3}, Lmacrochip/app/newpl1200/SysApp;->access$12(Lmacrochip/app/newpl1200/SysApp;)[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Lmacrochip/app/newpl1200/SysApp;->long2byte(I)[B

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    .line 609
    .local v2, "mDevAddr":Ljava/net/InetAddress;
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 610
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 611
    iget-object v3, p0, Lmacrochip/app/newpl1200/SysApp$7;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v3}, Lmacrochip/app/newpl1200/SysApp;->access$12(Lmacrochip/app/newpl1200/SysApp;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Lmacrochip/app/newpl1200/SysApp;->long2byte(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 612
    iget-object v3, p0, Lmacrochip/app/newpl1200/SysApp$7;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v3}, Lmacrochip/app/newpl1200/SysApp;->access$11(Lmacrochip/app/newpl1200/SysApp;)Lmacrochip/app/newpl1200/UDPServer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/16 v5, 0x1f90

    invoke-virtual {v3, v4, v2, v5}, Lmacrochip/app/newpl1200/UDPServer;->addCmdP([BLjava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "mDevAddr":Ljava/net/InetAddress;
    :goto_1
    iget-object v3, p0, Lmacrochip/app/newpl1200/SysApp$7;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v3}, Lmacrochip/app/newpl1200/SysApp;->access$0(Lmacrochip/app/newpl1200/SysApp;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lmacrochip/app/newpl1200/SysApp$7;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v4}, Lmacrochip/app/newpl1200/SysApp;->access$21(Lmacrochip/app/newpl1200/SysApp;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 613
    :catch_0
    move-exception v1

    .line 615
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
