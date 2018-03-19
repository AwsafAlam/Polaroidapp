.class Let/song/ui/libs/TCPSocket$3;
.super Ljava/lang/Thread;
.source "TCPSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Let/song/ui/libs/TCPSocket;->Start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Let/song/ui/libs/TCPSocket;


# direct methods
.method constructor <init>(Let/song/ui/libs/TCPSocket;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Let/song/ui/libs/TCPSocket$3;->this$0:Let/song/ui/libs/TCPSocket;

    .line 55
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Let/song/ui/libs/TCPSocket$3;->this$0:Let/song/ui/libs/TCPSocket;

    new-instance v2, Ljava/net/Socket;

    iget-object v3, p0, Let/song/ui/libs/TCPSocket$3;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v3}, Let/song/ui/libs/TCPSocket;->access$8(Let/song/ui/libs/TCPSocket;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Let/song/ui/libs/TCPSocket$3;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v4}, Let/song/ui/libs/TCPSocket;->access$9(Let/song/ui/libs/TCPSocket;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v2}, Let/song/ui/libs/TCPSocket;->access$10(Let/song/ui/libs/TCPSocket;Ljava/net/Socket;)V

    .line 61
    iget-object v1, p0, Let/song/ui/libs/TCPSocket$3;->this$0:Let/song/ui/libs/TCPSocket;

    iget-object v2, p0, Let/song/ui/libs/TCPSocket$3;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v2}, Let/song/ui/libs/TCPSocket;->access$11(Let/song/ui/libs/TCPSocket;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v1, v2}, Let/song/ui/libs/TCPSocket;->access$12(Let/song/ui/libs/TCPSocket;Ljava/io/InputStream;)V

    .line 62
    iget-object v1, p0, Let/song/ui/libs/TCPSocket$3;->this$0:Let/song/ui/libs/TCPSocket;

    iget-object v2, p0, Let/song/ui/libs/TCPSocket$3;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v2}, Let/song/ui/libs/TCPSocket;->access$11(Let/song/ui/libs/TCPSocket;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v1, v2}, Let/song/ui/libs/TCPSocket;->access$13(Let/song/ui/libs/TCPSocket;Ljava/io/OutputStream;)V

    .line 63
    iget-object v1, p0, Let/song/ui/libs/TCPSocket$3;->this$0:Let/song/ui/libs/TCPSocket;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Let/song/ui/libs/TCPSocket$ReceiveThread;

    iget-object v4, p0, Let/song/ui/libs/TCPSocket$3;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-direct {v3, v4}, Let/song/ui/libs/TCPSocket$ReceiveThread;-><init>(Let/song/ui/libs/TCPSocket;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1, v2}, Let/song/ui/libs/TCPSocket;->access$0(Let/song/ui/libs/TCPSocket;Ljava/lang/Thread;)V

    .line 64
    iget-object v1, p0, Let/song/ui/libs/TCPSocket$3;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v1}, Let/song/ui/libs/TCPSocket;->access$1(Let/song/ui/libs/TCPSocket;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 65
    iget-object v1, p0, Let/song/ui/libs/TCPSocket$3;->this$0:Let/song/ui/libs/TCPSocket;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Let/song/ui/libs/TCPSocket$WriteThread;

    iget-object v4, p0, Let/song/ui/libs/TCPSocket$3;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-direct {v3, v4}, Let/song/ui/libs/TCPSocket$WriteThread;-><init>(Let/song/ui/libs/TCPSocket;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1, v2}, Let/song/ui/libs/TCPSocket;->access$2(Let/song/ui/libs/TCPSocket;Ljava/lang/Thread;)V

    .line 66
    iget-object v1, p0, Let/song/ui/libs/TCPSocket$3;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v1}, Let/song/ui/libs/TCPSocket;->access$3(Let/song/ui/libs/TCPSocket;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 67
    iget-object v1, p0, Let/song/ui/libs/TCPSocket$3;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v1}, Let/song/ui/libs/TCPSocket;->access$7(Let/song/ui/libs/TCPSocket;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Let/song/ui/libs/TCPSocket$3;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v1}, Let/song/ui/libs/TCPSocket;->access$7(Let/song/ui/libs/TCPSocket;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2af9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Let/song/ui/libs/TCPSocket$3;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v1}, Let/song/ui/libs/TCPSocket;->access$7(Let/song/ui/libs/TCPSocket;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Let/song/ui/libs/TCPSocket$3;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v1}, Let/song/ui/libs/TCPSocket;->access$7(Let/song/ui/libs/TCPSocket;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2afb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 76
    :cond_1
    iget-object v1, p0, Let/song/ui/libs/TCPSocket$3;->this$0:Let/song/ui/libs/TCPSocket;

    const/4 v2, 0x0

    iput-boolean v2, v1, Let/song/ui/libs/TCPSocket;->isWork:Z

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
