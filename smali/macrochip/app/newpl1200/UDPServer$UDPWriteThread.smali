.class Lmacrochip/app/newpl1200/UDPServer$UDPWriteThread;
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
    name = "UDPWriteThread"
.end annotation


# instance fields
.field final synthetic this$0:Lmacrochip/app/newpl1200/UDPServer;


# direct methods
.method constructor <init>(Lmacrochip/app/newpl1200/UDPServer;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lmacrochip/app/newpl1200/UDPServer$UDPWriteThread;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 124
    :goto_0
    :try_start_0
    iget-object v1, p0, Lmacrochip/app/newpl1200/UDPServer$UDPWriteThread;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    invoke-static {v1}, Lmacrochip/app/newpl1200/UDPServer;->access$5(Lmacrochip/app/newpl1200/UDPServer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    :goto_1
    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lmacrochip/app/newpl1200/UDPServer$UDPWriteThread;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    invoke-static {v1}, Lmacrochip/app/newpl1200/UDPServer;->access$8(Lmacrochip/app/newpl1200/UDPServer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 130
    iget-object v1, p0, Lmacrochip/app/newpl1200/UDPServer$UDPWriteThread;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    invoke-static {v1}, Lmacrochip/app/newpl1200/UDPServer;->access$6(Lmacrochip/app/newpl1200/UDPServer;)Ljava/net/DatagramSocket;

    move-result-object v2

    iget-object v1, p0, Lmacrochip/app/newpl1200/UDPServer$UDPWriteThread;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    invoke-static {v1}, Lmacrochip/app/newpl1200/UDPServer;->access$8(Lmacrochip/app/newpl1200/UDPServer;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/DatagramPacket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 131
    iget-object v1, p0, Lmacrochip/app/newpl1200/UDPServer$UDPWriteThread;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    invoke-static {v1}, Lmacrochip/app/newpl1200/UDPServer;->access$8(Lmacrochip/app/newpl1200/UDPServer;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 133
    :cond_1
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lmacrochip/app/newpl1200/UDPServer$UDPWriteThread;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    invoke-static {v1}, Lmacrochip/app/newpl1200/UDPServer;->access$7(Lmacrochip/app/newpl1200/UDPServer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lmacrochip/app/newpl1200/UDPServer$UDPWriteThread;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    iget-object v2, v2, Lmacrochip/app/newpl1200/UDPServer;->runUDPWriteThread:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1
.end method
