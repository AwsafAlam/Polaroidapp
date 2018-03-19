.class public Lmacrochip/app/newpl1200/UDPServer;
.super Ljava/lang/Object;
.source "UDPServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmacrochip/app/newpl1200/UDPServer$UDPReceiveThread;,
        Lmacrochip/app/newpl1200/UDPServer$UDPWriteThread;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "UDPServer"

.field public static final UDP_RECEIVE_DATA:I = 0x2711

.field public static final UDP_SERVER_INIT:I = 0x2712


# instance fields
.field private isWork:Z

.field private mAccesser:Landroid/os/Handler;

.field private mCmdPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/DatagramPacket;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mReceiveThread:Ljava/lang/Thread;

.field private mUDPSocket:Ljava/net/DatagramSocket;

.field private mWriteThread:Ljava/lang/Thread;

.field runUDPReceiveThread:Ljava/lang/Runnable;

.field runUDPWriteThread:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmacrochip/app/newpl1200/UDPServer;->isWork:Z

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mHandler:Landroid/os/Handler;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mCmdPool:Ljava/util/List;

    .line 27
    new-instance v0, Lmacrochip/app/newpl1200/UDPServer$1;

    invoke-direct {v0, p0}, Lmacrochip/app/newpl1200/UDPServer$1;-><init>(Lmacrochip/app/newpl1200/UDPServer;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->runUDPReceiveThread:Ljava/lang/Runnable;

    .line 34
    new-instance v0, Lmacrochip/app/newpl1200/UDPServer$2;

    invoke-direct {v0, p0}, Lmacrochip/app/newpl1200/UDPServer$2;-><init>(Lmacrochip/app/newpl1200/UDPServer;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->runUDPWriteThread:Ljava/lang/Runnable;

    .line 16
    return-void
.end method

.method private StartServer()V
    .locals 3

    .prologue
    .line 52
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lmacrochip/app/newpl1200/UDPServer;->mUDPSocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "ex":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmacrochip/app/newpl1200/UDPServer;->isWork:Z

    .line 56
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lmacrochip/app/newpl1200/UDPServer;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lmacrochip/app/newpl1200/UDPServer;->mReceiveThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$1(Lmacrochip/app/newpl1200/UDPServer;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mReceiveThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2(Lmacrochip/app/newpl1200/UDPServer;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lmacrochip/app/newpl1200/UDPServer;->mWriteThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$3(Lmacrochip/app/newpl1200/UDPServer;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mWriteThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$4(Lmacrochip/app/newpl1200/UDPServer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mAccesser:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lmacrochip/app/newpl1200/UDPServer;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lmacrochip/app/newpl1200/UDPServer;->isWork:Z

    return v0
.end method

.method static synthetic access$6(Lmacrochip/app/newpl1200/UDPServer;)Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mUDPSocket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic access$7(Lmacrochip/app/newpl1200/UDPServer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lmacrochip/app/newpl1200/UDPServer;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mCmdPool:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public Start()V
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmacrochip/app/newpl1200/UDPServer;->isWork:Z

    .line 43
    invoke-direct {p0}, Lmacrochip/app/newpl1200/UDPServer;->StartServer()V

    .line 44
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmacrochip/app/newpl1200/UDPServer$UDPReceiveThread;

    invoke-direct {v1, p0}, Lmacrochip/app/newpl1200/UDPServer$UDPReceiveThread;-><init>(Lmacrochip/app/newpl1200/UDPServer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mReceiveThread:Ljava/lang/Thread;

    .line 45
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mReceiveThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 46
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmacrochip/app/newpl1200/UDPServer$UDPWriteThread;

    invoke-direct {v1, p0}, Lmacrochip/app/newpl1200/UDPServer$UDPWriteThread;-><init>(Lmacrochip/app/newpl1200/UDPServer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mWriteThread:Ljava/lang/Thread;

    .line 47
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mWriteThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 48
    return-void
.end method

.method public Stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmacrochip/app/newpl1200/UDPServer;->isWork:Z

    .line 66
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmacrochip/app/newpl1200/UDPServer;->runUDPReceiveThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmacrochip/app/newpl1200/UDPServer;->runUDPWriteThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mReceiveThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mReceiveThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 70
    iput-object v2, p0, Lmacrochip/app/newpl1200/UDPServer;->mReceiveThread:Ljava/lang/Thread;

    .line 72
    :cond_0
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mWriteThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mWriteThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 74
    iput-object v2, p0, Lmacrochip/app/newpl1200/UDPServer;->mWriteThread:Ljava/lang/Thread;

    .line 76
    :cond_1
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mUDPSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mUDPSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 78
    iput-object v2, p0, Lmacrochip/app/newpl1200/UDPServer;->mUDPSocket:Ljava/net/DatagramSocket;

    .line 80
    :cond_2
    return-void
.end method

.method public addCmdP([BLjava/net/InetAddress;I)V
    .locals 3
    .param p1, "Msg"    # [B
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mUDPSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 147
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mCmdPool:Ljava/util/List;

    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, p1

    invoke-direct {v1, p1, v2, p2, p3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    return-void
.end method

.method public isRun()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mUDPSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer;->mUDPSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAccesser(Landroid/os/Handler;)V
    .locals 0
    .param p1, "accesser"    # Landroid/os/Handler;

    .prologue
    .line 142
    iput-object p1, p0, Lmacrochip/app/newpl1200/UDPServer;->mAccesser:Landroid/os/Handler;

    .line 143
    return-void
.end method
