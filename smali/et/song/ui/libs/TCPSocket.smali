.class public Let/song/ui/libs/TCPSocket;
.super Ljava/lang/Object;
.source "TCPSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Let/song/ui/libs/TCPSocket$ReceiveThread;,
        Let/song/ui/libs/TCPSocket$WriteThread;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TCPSocket"


# instance fields
.field public isWork:Z

.field private mAccesser:Landroid/os/Handler;

.field private mCmdPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public mHandler:Landroid/os/Handler;

.field private mHost:Ljava/lang/String;

.field private mInStream:Ljava/io/InputStream;

.field private mOutStream:Ljava/io/OutputStream;

.field private mPort:I

.field private mReceiveThread:Ljava/lang/Thread;

.field private mSocket:Ljava/net/Socket;

.field private mWriteThread:Ljava/lang/Thread;

.field runTCPReceiveThread:Ljava/lang/Runnable;

.field runTCPWriteThread:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Let/song/ui/libs/TCPSocket;->mCmdPool:Ljava/util/List;

    .line 24
    iput-object v1, p0, Let/song/ui/libs/TCPSocket;->mSocket:Ljava/net/Socket;

    .line 25
    iput-object v1, p0, Let/song/ui/libs/TCPSocket;->mInStream:Ljava/io/InputStream;

    .line 26
    iput-object v1, p0, Let/song/ui/libs/TCPSocket;->mOutStream:Ljava/io/OutputStream;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Let/song/ui/libs/TCPSocket;->mHandler:Landroid/os/Handler;

    .line 32
    new-instance v0, Let/song/ui/libs/TCPSocket$1;

    invoke-direct {v0, p0}, Let/song/ui/libs/TCPSocket$1;-><init>(Let/song/ui/libs/TCPSocket;)V

    iput-object v0, p0, Let/song/ui/libs/TCPSocket;->runTCPReceiveThread:Ljava/lang/Runnable;

    .line 39
    new-instance v0, Let/song/ui/libs/TCPSocket$2;

    invoke-direct {v0, p0}, Let/song/ui/libs/TCPSocket$2;-><init>(Let/song/ui/libs/TCPSocket;)V

    iput-object v0, p0, Let/song/ui/libs/TCPSocket;->runTCPWriteThread:Ljava/lang/Runnable;

    .line 48
    iput-object p1, p0, Let/song/ui/libs/TCPSocket;->mHost:Ljava/lang/String;

    .line 49
    iput p2, p0, Let/song/ui/libs/TCPSocket;->mPort:I

    .line 50
    iput-object p3, p0, Let/song/ui/libs/TCPSocket;->mAccesser:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method static synthetic access$0(Let/song/ui/libs/TCPSocket;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Let/song/ui/libs/TCPSocket;->mReceiveThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$1(Let/song/ui/libs/TCPSocket;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Let/song/ui/libs/TCPSocket;->mReceiveThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$10(Let/song/ui/libs/TCPSocket;Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Let/song/ui/libs/TCPSocket;->mSocket:Ljava/net/Socket;

    return-void
.end method

.method static synthetic access$11(Let/song/ui/libs/TCPSocket;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Let/song/ui/libs/TCPSocket;->mSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$12(Let/song/ui/libs/TCPSocket;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Let/song/ui/libs/TCPSocket;->mInStream:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$13(Let/song/ui/libs/TCPSocket;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Let/song/ui/libs/TCPSocket;->mOutStream:Ljava/io/OutputStream;

    return-void
.end method

.method static synthetic access$2(Let/song/ui/libs/TCPSocket;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Let/song/ui/libs/TCPSocket;->mWriteThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$3(Let/song/ui/libs/TCPSocket;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Let/song/ui/libs/TCPSocket;->mWriteThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$4(Let/song/ui/libs/TCPSocket;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Let/song/ui/libs/TCPSocket;->mCmdPool:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Let/song/ui/libs/TCPSocket;)Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Let/song/ui/libs/TCPSocket;->mOutStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$6(Let/song/ui/libs/TCPSocket;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Let/song/ui/libs/TCPSocket;->mInStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$7(Let/song/ui/libs/TCPSocket;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Let/song/ui/libs/TCPSocket;->mAccesser:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Let/song/ui/libs/TCPSocket;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Let/song/ui/libs/TCPSocket;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Let/song/ui/libs/TCPSocket;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Let/song/ui/libs/TCPSocket;->mPort:I

    return v0
.end method


# virtual methods
.method public SendData(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Let/song/ui/libs/TCPSocket;->mCmdPool:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public SendData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 100
    iget-object v0, p0, Let/song/ui/libs/TCPSocket;->mCmdPool:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public Start()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Let/song/ui/libs/TCPSocket;->isWork:Z

    .line 55
    new-instance v0, Let/song/ui/libs/TCPSocket$3;

    invoke-direct {v0, p0}, Let/song/ui/libs/TCPSocket$3;-><init>(Let/song/ui/libs/TCPSocket;)V

    .line 81
    invoke-virtual {v0}, Let/song/ui/libs/TCPSocket$3;->start()V

    .line 82
    return-void
.end method

.method public Stop()V
    .locals 2

    .prologue
    .line 86
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Let/song/ui/libs/TCPSocket;->isWork:Z

    .line 87
    iget-object v1, p0, Let/song/ui/libs/TCPSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Let/song/ui/libs/TCPSocket;->mSocket:Ljava/net/Socket;

    .line 89
    iget-object v1, p0, Let/song/ui/libs/TCPSocket;->mReceiveThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Let/song/ui/libs/TCPSocket;->mReceiveThread:Ljava/lang/Thread;

    .line 91
    iget-object v1, p0, Let/song/ui/libs/TCPSocket;->mWriteThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Let/song/ui/libs/TCPSocket;->mWriteThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAccesser()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Let/song/ui/libs/TCPSocket;->mAccesser:Landroid/os/Handler;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Let/song/ui/libs/TCPSocket;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Let/song/ui/libs/TCPSocket;->mPort:I

    return v0
.end method

.method public setAccesser(Landroid/os/Handler;)V
    .locals 0
    .param p1, "mAccesser"    # Landroid/os/Handler;

    .prologue
    .line 128
    iput-object p1, p0, Let/song/ui/libs/TCPSocket;->mAccesser:Landroid/os/Handler;

    .line 129
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHost"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Let/song/ui/libs/TCPSocket;->mHost:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "mPort"    # I

    .prologue
    .line 120
    iput p1, p0, Let/song/ui/libs/TCPSocket;->mPort:I

    .line 121
    return-void
.end method
