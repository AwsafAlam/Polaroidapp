.class Lmacrochip/app/newpl1200/SysApp$9;
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
    iput-object p1, p0, Lmacrochip/app/newpl1200/SysApp$9;->this$0:Lmacrochip/app/newpl1200/SysApp;

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x1

    .line 649
    :try_start_0
    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$9;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v2}, Lmacrochip/app/newpl1200/SysApp;->access$12(Lmacrochip/app/newpl1200/SysApp;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Lmacrochip/app/newpl1200/SysApp;->long2byte(I)[B

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 650
    .local v1, "mDevAddr":Ljava/net/InetAddress;
    const/4 v2, -0x1

    iget-object v3, p0, Lmacrochip/app/newpl1200/SysApp$9;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v3}, Lmacrochip/app/newpl1200/SysApp;->getTransMode()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$9;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v2}, Lmacrochip/app/newpl1200/SysApp;->access$22(Lmacrochip/app/newpl1200/SysApp;)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3

    .line 652
    sget v2, Lcom/fh/lib/PlayInfo;->udpDevType:I

    if-ne v2, v4, :cond_2

    .line 654
    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$9;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const-string v3, "remote\r\n"

    invoke-virtual {v2, v3}, Lmacrochip/app/newpl1200/SysApp;->writeTCPCmd(Ljava/lang/String;)V

    .line 659
    :goto_0
    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$9;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v2}, Lmacrochip/app/newpl1200/SysApp;->access$22(Lmacrochip/app/newpl1200/SysApp;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lmacrochip/app/newpl1200/SysApp;->access$23(Lmacrochip/app/newpl1200/SysApp;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    .end local v1    # "mDevAddr":Ljava/net/InetAddress;
    :cond_0
    :goto_1
    sget v2, Lcom/fh/lib/PlayInfo;->transMode:I

    if-eq v2, v6, :cond_1

    .line 681
    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$9;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v2}, Lmacrochip/app/newpl1200/SysApp;->access$0(Lmacrochip/app/newpl1200/SysApp;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lmacrochip/app/newpl1200/SysApp$9;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v3}, Lmacrochip/app/newpl1200/SysApp;->access$24(Lmacrochip/app/newpl1200/SysApp;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 682
    :cond_1
    return-void

    .line 657
    .restart local v1    # "mDevAddr":Ljava/net/InetAddress;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$9;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/16 v3, 0xc

    new-array v3, v3, [B

    const/4 v4, 0x1

    const/4 v5, 0x1

    aput-byte v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aput-byte v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aput-byte v5, v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x4

    aput-byte v5, v3, v4

    const/4 v4, 0x5

    const/4 v5, 0x5

    aput-byte v5, v3, v4

    const/4 v4, 0x6

    const/4 v5, 0x6

    aput-byte v5, v3, v4

    const/4 v4, 0x7

    const/4 v5, 0x7

    aput-byte v5, v3, v4

    const/16 v4, 0x8

    const/16 v5, 0x8

    aput-byte v5, v3, v4

    const/16 v4, 0x9

    const/16 v5, 0x9

    aput-byte v5, v3, v4

    const/16 v4, 0xa

    const/16 v5, 0x25

    aput-byte v5, v3, v4

    const/16 v4, 0xb

    const/16 v5, 0x25

    aput-byte v5, v3, v4

    invoke-virtual {v2, v3}, Lmacrochip/app/newpl1200/SysApp;->writeTCPCmd([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 675
    .end local v1    # "mDevAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 661
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "mDevAddr":Ljava/net/InetAddress;
    :cond_3
    const/4 v2, -0x1

    :try_start_2
    iget-object v3, p0, Lmacrochip/app/newpl1200/SysApp$9;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v3}, Lmacrochip/app/newpl1200/SysApp;->getTransMode()I

    move-result v3

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$9;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v2}, Lmacrochip/app/newpl1200/SysApp;->getTransMode()I

    move-result v2

    if-ne v6, v2, :cond_5

    .line 663
    :cond_4
    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$9;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v2}, Lmacrochip/app/newpl1200/SysApp;->access$11(Lmacrochip/app/newpl1200/SysApp;)Lmacrochip/app/newpl1200/UDPServer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/16 v5, 0x25

    aput-byte v5, v3, v4

    const/16 v4, 0x1f90

    invoke-virtual {v2, v3, v1, v4}, Lmacrochip/app/newpl1200/UDPServer;->addCmdP([BLjava/net/InetAddress;I)V

    goto :goto_1

    .line 665
    :cond_5
    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$9;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v2}, Lmacrochip/app/newpl1200/SysApp;->getTransMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 667
    sget v2, Lcom/fh/lib/PlayInfo;->udpDevType:I

    if-ne v2, v4, :cond_6

    .line 669
    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$9;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const-string v3, "remote\r\n"

    invoke-virtual {v2, v3}, Lmacrochip/app/newpl1200/SysApp;->writeTCPCmd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 672
    :cond_6
    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$9;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/16 v3, 0xc

    new-array v3, v3, [B

    const/4 v4, 0x1

    const/4 v5, 0x1

    aput-byte v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aput-byte v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aput-byte v5, v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x4

    aput-byte v5, v3, v4

    const/4 v4, 0x5

    const/4 v5, 0x5

    aput-byte v5, v3, v4

    const/4 v4, 0x6

    const/4 v5, 0x6

    aput-byte v5, v3, v4

    const/4 v4, 0x7

    const/4 v5, 0x7

    aput-byte v5, v3, v4

    const/16 v4, 0x8

    const/16 v5, 0x8

    aput-byte v5, v3, v4

    const/16 v4, 0x9

    const/16 v5, 0x9

    aput-byte v5, v3, v4

    const/16 v4, 0xa

    const/16 v5, 0x25

    aput-byte v5, v3, v4

    const/16 v4, 0xb

    const/16 v5, 0x25

    aput-byte v5, v3, v4

    invoke-virtual {v2, v3}, Lmacrochip/app/newpl1200/SysApp;->writeTCPCmd([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method
