.class Lmacrochip/app/newpl1200/UDPServer$1;
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
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmacrochip/app/newpl1200/UDPServer;


# direct methods
.method constructor <init>(Lmacrochip/app/newpl1200/UDPServer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmacrochip/app/newpl1200/UDPServer$1;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer$1;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lmacrochip/app/newpl1200/UDPServer$UDPReceiveThread;

    iget-object v3, p0, Lmacrochip/app/newpl1200/UDPServer$1;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    invoke-direct {v2, v3}, Lmacrochip/app/newpl1200/UDPServer$UDPReceiveThread;-><init>(Lmacrochip/app/newpl1200/UDPServer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lmacrochip/app/newpl1200/UDPServer;->access$0(Lmacrochip/app/newpl1200/UDPServer;Ljava/lang/Thread;)V

    .line 31
    iget-object v0, p0, Lmacrochip/app/newpl1200/UDPServer$1;->this$0:Lmacrochip/app/newpl1200/UDPServer;

    invoke-static {v0}, Lmacrochip/app/newpl1200/UDPServer;->access$1(Lmacrochip/app/newpl1200/UDPServer;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 32
    return-void
.end method
