.class Let/song/ui/libs/TCPSocket$WriteThread;
.super Ljava/lang/Object;
.source "TCPSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Let/song/ui/libs/TCPSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WriteThread"
.end annotation


# instance fields
.field final synthetic this$0:Let/song/ui/libs/TCPSocket;


# direct methods
.method constructor <init>(Let/song/ui/libs/TCPSocket;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Let/song/ui/libs/TCPSocket$WriteThread;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 136
    :goto_0
    :try_start_0
    iget-object v1, p0, Let/song/ui/libs/TCPSocket$WriteThread;->this$0:Let/song/ui/libs/TCPSocket;

    iget-boolean v1, v1, Let/song/ui/libs/TCPSocket;->isWork:Z

    if-nez v1, :cond_0

    .line 150
    :goto_1
    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Let/song/ui/libs/TCPSocket$WriteThread;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v1}, Let/song/ui/libs/TCPSocket;->access$4(Let/song/ui/libs/TCPSocket;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Let/song/ui/libs/TCPSocket$WriteThread;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v1}, Let/song/ui/libs/TCPSocket;->access$5(Let/song/ui/libs/TCPSocket;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Let/song/ui/libs/TCPSocket$WriteThread;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v1}, Let/song/ui/libs/TCPSocket;->access$5(Let/song/ui/libs/TCPSocket;)Ljava/io/OutputStream;

    move-result-object v2

    iget-object v1, p0, Let/song/ui/libs/TCPSocket$WriteThread;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v1}, Let/song/ui/libs/TCPSocket;->access$4(Let/song/ui/libs/TCPSocket;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 140
    iget-object v1, p0, Let/song/ui/libs/TCPSocket$WriteThread;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v1}, Let/song/ui/libs/TCPSocket;->access$5(Let/song/ui/libs/TCPSocket;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 142
    iget-object v1, p0, Let/song/ui/libs/TCPSocket$WriteThread;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v1}, Let/song/ui/libs/TCPSocket;->access$4(Let/song/ui/libs/TCPSocket;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 144
    :cond_1
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Let/song/ui/libs/TCPSocket$WriteThread;->this$0:Let/song/ui/libs/TCPSocket;

    iget-object v1, v1, Let/song/ui/libs/TCPSocket;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Let/song/ui/libs/TCPSocket$WriteThread;->this$0:Let/song/ui/libs/TCPSocket;

    iget-object v2, v2, Let/song/ui/libs/TCPSocket;->runTCPWriteThread:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1
.end method
