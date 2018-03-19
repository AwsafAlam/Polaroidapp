.class Let/song/ui/libs/TCPSocket$1;
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
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Let/song/ui/libs/TCPSocket;


# direct methods
.method constructor <init>(Let/song/ui/libs/TCPSocket;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Let/song/ui/libs/TCPSocket$1;->this$0:Let/song/ui/libs/TCPSocket;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Let/song/ui/libs/TCPSocket$1;->this$0:Let/song/ui/libs/TCPSocket;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Let/song/ui/libs/TCPSocket$ReceiveThread;

    iget-object v3, p0, Let/song/ui/libs/TCPSocket$1;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-direct {v2, v3}, Let/song/ui/libs/TCPSocket$ReceiveThread;-><init>(Let/song/ui/libs/TCPSocket;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Let/song/ui/libs/TCPSocket;->access$0(Let/song/ui/libs/TCPSocket;Ljava/lang/Thread;)V

    .line 36
    iget-object v0, p0, Let/song/ui/libs/TCPSocket$1;->this$0:Let/song/ui/libs/TCPSocket;

    invoke-static {v0}, Let/song/ui/libs/TCPSocket;->access$1(Let/song/ui/libs/TCPSocket;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    return-void
.end method
