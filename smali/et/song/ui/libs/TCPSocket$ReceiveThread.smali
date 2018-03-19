.class Let/song/ui/libs/TCPSocket$ReceiveThread;
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
    name = "ReceiveThread"
.end annotation


# instance fields
.field final synthetic this$0:Let/song/ui/libs/TCPSocket;


# direct methods
.method constructor <init>(Let/song/ui/libs/TCPSocket;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Let/song/ui/libs/TCPSocket$ReceiveThread;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 156
    const/4 v4, 0x0

    .line 157
    .local v4, "temp":I
    const/high16 v5, 0x40000

    :try_start_0
    new-array v0, v5, [B

    .line 158
    .local v0, "byteBuffer":[B
    :cond_0
    :goto_0
    iget-object v5, p0, Let/song/ui/libs/TCPSocket$ReceiveThread;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v5}, Let/song/ui/libs/TCPSocket;->access$6(Let/song/ui/libs/TCPSocket;)Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Let/song/ui/libs/TCPSocket$ReceiveThread;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v5}, Let/song/ui/libs/TCPSocket;->access$6(Let/song/ui/libs/TCPSocket;)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 175
    .end local v0    # "byteBuffer":[B
    :cond_1
    :goto_1
    return-void

    .line 160
    .restart local v0    # "byteBuffer":[B
    :cond_2
    iget-object v5, p0, Let/song/ui/libs/TCPSocket$ReceiveThread;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v5}, Let/song/ui/libs/TCPSocket;->access$7(Let/song/ui/libs/TCPSocket;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_0

    if-lez v4, :cond_0

    .line 162
    new-array v3, v4, [B

    .line 163
    .local v3, "redata":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 166
    .local v2, "msg":Landroid/os/Message;
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 167
    const/16 v5, 0x2afa

    iput v5, v2, Landroid/os/Message;->what:I

    .line 168
    iget-object v5, p0, Let/song/ui/libs/TCPSocket$ReceiveThread;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v5}, Let/song/ui/libs/TCPSocket;->access$7(Let/song/ui/libs/TCPSocket;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    .end local v0    # "byteBuffer":[B
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "redata":[B
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Let/song/ui/libs/TCPSocket$ReceiveThread;->this$0:Let/song/ui/libs/TCPSocket;

    iget-object v5, v5, Let/song/ui/libs/TCPSocket;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Let/song/ui/libs/TCPSocket$ReceiveThread;->this$0:Let/song/ui/libs/TCPSocket;

    iget-object v6, v6, Let/song/ui/libs/TCPSocket;->runTCPReceiveThread:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1
.end method
