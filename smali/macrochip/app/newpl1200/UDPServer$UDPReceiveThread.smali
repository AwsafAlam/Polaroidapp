.class Lmacrochip/app/newpl1200/UDPServer$UDPReceiveThread;
.super Ljava/lang/Object;
.source "UDPServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmacrochip/app/newpl1200/UDPServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UDPReceiveThread"
.end annotation


# instance fields
.field final synthetic this$0:Lmacrochip/app/newpl1200/UDPServer;


# direct methods
.method constructor <init>(Lmacrochip/app/newpl1200/UDPServer;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lmacrochip/app/newpl1200/UDPServer$UDPReceiveThread;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 86
    const/high16 v5, 0x40000

    new-array v2, v5, [B

    .line 87
    .local v2, "message":[B
    new-instance v0, Ljava/net/DatagramPacket;

    .line 88
    array-length v5, v2

    .line 87
    invoke-direct {v0, v2, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 90
    .local v0, "dataPacket":Ljava/net/DatagramPacket;
    iget-object v5, p0, Lmacrochip/app/newpl1200/UDPServer$UDPReceiveThread;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    invoke-static {v5}, Lmacrochip/app/newpl1200/UDPServer;->access$4(Lmacrochip/app/newpl1200/UDPServer;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 92
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 93
    .local v3, "msg":Landroid/os/Message;
    const/16 v5, 0x2712

    iput v5, v3, Landroid/os/Message;->what:I

    .line 94
    iget-object v5, p0, Lmacrochip/app/newpl1200/UDPServer$UDPReceiveThread;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    invoke-static {v5}, Lmacrochip/app/newpl1200/UDPServer;->access$4(Lmacrochip/app/newpl1200/UDPServer;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    .end local v3    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Lmacrochip/app/newpl1200/UDPServer$UDPReceiveThread;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    invoke-static {v5}, Lmacrochip/app/newpl1200/UDPServer;->access$5(Lmacrochip/app/newpl1200/UDPServer;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 118
    :goto_1
    return-void

    .line 98
    :cond_1
    iget-object v5, p0, Lmacrochip/app/newpl1200/UDPServer$UDPReceiveThread;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    invoke-static {v5}, Lmacrochip/app/newpl1200/UDPServer;->access$6(Lmacrochip/app/newpl1200/UDPServer;)Ljava/net/DatagramSocket;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 99
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    new-array v4, v5, [B

    .line 100
    .local v4, "recData":[B
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {v5, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget-object v5, p0, Lmacrochip/app/newpl1200/UDPServer$UDPReceiveThread;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    invoke-static {v5}, Lmacrochip/app/newpl1200/UDPServer;->access$4(Lmacrochip/app/newpl1200/UDPServer;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 104
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 105
    .restart local v3    # "msg":Landroid/os/Message;
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    const/16 v5, 0x2711

    iput v5, v3, Landroid/os/Message;->what:I

    .line 107
    iget-object v5, p0, Lmacrochip/app/newpl1200/UDPServer$UDPReceiveThread;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    invoke-static {v5}, Lmacrochip/app/newpl1200/UDPServer;->access$4(Lmacrochip/app/newpl1200/UDPServer;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "recData":[B
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lmacrochip/app/newpl1200/UDPServer$UDPReceiveThread;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    invoke-static {v5}, Lmacrochip/app/newpl1200/UDPServer;->access$7(Lmacrochip/app/newpl1200/UDPServer;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lmacrochip/app/newpl1200/UDPServer$UDPReceiveThread;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    iget-object v6, v6, Lmacrochip/app/newpl1200/UDPServer;->runUDPReceiveThread:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1
.end method
