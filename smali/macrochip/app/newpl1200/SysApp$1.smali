.class Lmacrochip/app/newpl1200/SysApp$1;
.super Landroid/os/Handler;
.source "SysApp.java"


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
    iput-object p1, p0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    .line 92
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 95
    const-string v12, ""

    .line 96
    .local v12, "tmpStr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    sparse-switch v14, :sswitch_data_0

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 99
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$0(Lmacrochip/app/newpl1200/SysApp;)Landroid/os/Handler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    iget-object v15, v15, Lmacrochip/app/newpl1200/SysApp;->checkDevType:Ljava/lang/Runnable;

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 102
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [B

    .line 103
    .local v13, "udpRec":[B
    const/16 v14, 0x14

    invoke-static {v13, v14}, Let/song/ui/libs/ETTool;->BytesToHexString([BI)Ljava/lang/String;

    move-result-object v12

    .line 105
    const-string v14, "564741"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 107
    const-string v14, "VGA"

    invoke-static {v14}, Lcom/app/util/log;->e(Ljava/lang/String;)V

    .line 108
    const/4 v14, 0x1

    sput v14, Lcom/fh/lib/PlayInfo;->udpDevType:I

    .line 110
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$1(Lmacrochip/app/newpl1200/SysApp;)Let/song/ui/libs/TCPSocket;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 112
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$1(Lmacrochip/app/newpl1200/SysApp;)Let/song/ui/libs/TCPSocket;

    move-result-object v14

    invoke-virtual {v14}, Let/song/ui/libs/TCPSocket;->Stop()V

    .line 113
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$2(Lmacrochip/app/newpl1200/SysApp;Let/song/ui/libs/TCPSocket;)V

    .line 115
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    new-instance v15, Let/song/ui/libs/TCPSocket;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lmacrochip/app/newpl1200/SysApp;->getDevAddrStr()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x22b8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lmacrochip/app/newpl1200/SysApp;->access$0(Lmacrochip/app/newpl1200/SysApp;)Landroid/os/Handler;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Let/song/ui/libs/TCPSocket;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$2(Lmacrochip/app/newpl1200/SysApp;Let/song/ui/libs/TCPSocket;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$1(Lmacrochip/app/newpl1200/SysApp;)Let/song/ui/libs/TCPSocket;

    move-result-object v14

    invoke-virtual {v14}, Let/song/ui/libs/TCPSocket;->Start()V

    goto :goto_0

    .line 118
    :cond_2
    const-string v14, "554450373230505955"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 120
    const/4 v14, 0x6

    sput v14, Lcom/fh/lib/PlayInfo;->udpDevType:I

    .line 121
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$0(Lmacrochip/app/newpl1200/SysApp;)Landroid/os/Handler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    iget-object v15, v15, Lmacrochip/app/newpl1200/SysApp;->sendDevTime:Ljava/lang/Runnable;

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$1(Lmacrochip/app/newpl1200/SysApp;)Let/song/ui/libs/TCPSocket;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 124
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$1(Lmacrochip/app/newpl1200/SysApp;)Let/song/ui/libs/TCPSocket;

    move-result-object v14

    invoke-virtual {v14}, Let/song/ui/libs/TCPSocket;->Stop()V

    .line 125
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$2(Lmacrochip/app/newpl1200/SysApp;Let/song/ui/libs/TCPSocket;)V

    .line 127
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    new-instance v15, Let/song/ui/libs/TCPSocket;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lmacrochip/app/newpl1200/SysApp;->getDevAddrStr()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x22b8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lmacrochip/app/newpl1200/SysApp;->access$0(Lmacrochip/app/newpl1200/SysApp;)Landroid/os/Handler;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Let/song/ui/libs/TCPSocket;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$2(Lmacrochip/app/newpl1200/SysApp;Let/song/ui/libs/TCPSocket;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$1(Lmacrochip/app/newpl1200/SysApp;)Let/song/ui/libs/TCPSocket;

    move-result-object v14

    invoke-virtual {v14}, Let/song/ui/libs/TCPSocket;->Start()V

    goto/16 :goto_0

    .line 131
    :cond_4
    const-string v14, "55445037323050"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "3130383050"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 133
    :cond_5
    const-string v14, "UDP720P"

    invoke-static {v14}, Lcom/app/util/log;->e(Ljava/lang/String;)V

    .line 135
    const/4 v14, 0x2

    sput v14, Lcom/fh/lib/PlayInfo;->udpDevType:I

    .line 136
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$0(Lmacrochip/app/newpl1200/SysApp;)Landroid/os/Handler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    iget-object v15, v15, Lmacrochip/app/newpl1200/SysApp;->sendDevTime:Ljava/lang/Runnable;

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$1(Lmacrochip/app/newpl1200/SysApp;)Let/song/ui/libs/TCPSocket;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$1(Lmacrochip/app/newpl1200/SysApp;)Let/song/ui/libs/TCPSocket;

    move-result-object v14

    invoke-virtual {v14}, Let/song/ui/libs/TCPSocket;->Stop()V

    .line 142
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$2(Lmacrochip/app/newpl1200/SysApp;Let/song/ui/libs/TCPSocket;)V

    .line 144
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    new-instance v15, Let/song/ui/libs/TCPSocket;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lmacrochip/app/newpl1200/SysApp;->getDevAddrStr()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x22b8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lmacrochip/app/newpl1200/SysApp;->access$0(Lmacrochip/app/newpl1200/SysApp;)Landroid/os/Handler;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Let/song/ui/libs/TCPSocket;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$2(Lmacrochip/app/newpl1200/SysApp;Let/song/ui/libs/TCPSocket;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$1(Lmacrochip/app/newpl1200/SysApp;)Let/song/ui/libs/TCPSocket;

    move-result-object v14

    invoke-virtual {v14}, Let/song/ui/libs/TCPSocket;->Start()V

    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v14}, Lmacrochip/app/newpl1200/SysApp;->getVersion()V

    goto/16 :goto_0

    .line 150
    :cond_7
    const-string v14, "37323050"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 152
    const-string v14, "RTSP 720P"

    invoke-static {v14}, Lcom/app/util/log;->e(Ljava/lang/String;)V

    .line 153
    const/4 v14, 0x4

    sput v14, Lcom/fh/lib/PlayInfo;->udpDevType:I

    .line 154
    const-string v14, "rtsp://192.168.0.1/0"

    sput-object v14, Lcom/fh/lib/PlayInfo;->RTSPUrl:Ljava/lang/String;

    .line 155
    const/4 v14, 0x4

    sput v14, Lcom/fh/lib/PlayInfo;->playType:I

    .line 156
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$1(Lmacrochip/app/newpl1200/SysApp;)Let/song/ui/libs/TCPSocket;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 158
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$1(Lmacrochip/app/newpl1200/SysApp;)Let/song/ui/libs/TCPSocket;

    move-result-object v14

    invoke-virtual {v14}, Let/song/ui/libs/TCPSocket;->Stop()V

    .line 159
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$2(Lmacrochip/app/newpl1200/SysApp;Let/song/ui/libs/TCPSocket;)V

    .line 161
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    new-instance v15, Let/song/ui/libs/TCPSocket;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lmacrochip/app/newpl1200/SysApp;->getDevAddrStr()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1f90

    move-object/from16 v0, p0

    iget-object v0, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lmacrochip/app/newpl1200/SysApp;->access$0(Lmacrochip/app/newpl1200/SysApp;)Landroid/os/Handler;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Let/song/ui/libs/TCPSocket;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$2(Lmacrochip/app/newpl1200/SysApp;Let/song/ui/libs/TCPSocket;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$1(Lmacrochip/app/newpl1200/SysApp;)Let/song/ui/libs/TCPSocket;

    move-result-object v14

    invoke-virtual {v14}, Let/song/ui/libs/TCPSocket;->Start()V

    goto/16 :goto_0

    .line 164
    :cond_9
    const-string v14, "3130383050"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 166
    const/4 v14, 0x5

    sput v14, Lcom/fh/lib/PlayInfo;->udpDevType:I

    .line 167
    const-string v14, "rtsp://192.168.0.1/0"

    sput-object v14, Lcom/fh/lib/PlayInfo;->RTSPUrl:Ljava/lang/String;

    .line 168
    const/4 v14, 0x4

    sput v14, Lcom/fh/lib/PlayInfo;->playType:I

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$1(Lmacrochip/app/newpl1200/SysApp;)Let/song/ui/libs/TCPSocket;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 171
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$1(Lmacrochip/app/newpl1200/SysApp;)Let/song/ui/libs/TCPSocket;

    move-result-object v14

    invoke-virtual {v14}, Let/song/ui/libs/TCPSocket;->Stop()V

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$2(Lmacrochip/app/newpl1200/SysApp;Let/song/ui/libs/TCPSocket;)V

    .line 174
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    new-instance v15, Let/song/ui/libs/TCPSocket;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lmacrochip/app/newpl1200/SysApp;->getDevAddrStr()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1f90

    move-object/from16 v0, p0

    iget-object v0, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lmacrochip/app/newpl1200/SysApp;->access$0(Lmacrochip/app/newpl1200/SysApp;)Landroid/os/Handler;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Let/song/ui/libs/TCPSocket;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$2(Lmacrochip/app/newpl1200/SysApp;Let/song/ui/libs/TCPSocket;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$1(Lmacrochip/app/newpl1200/SysApp;)Let/song/ui/libs/TCPSocket;

    move-result-object v14

    invoke-virtual {v14}, Let/song/ui/libs/TCPSocket;->Start()V

    .line 176
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v14}, Lmacrochip/app/newpl1200/SysApp;->rtspSendTime()V

    goto/16 :goto_0

    .line 178
    :cond_b
    const-string v14, "666c6173"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 180
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 182
    const-string v14, "26"

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 183
    .local v11, "tmpArr":[Ljava/lang/String;
    array-length v14, v11

    const/4 v15, 0x2

    if-ne v14, v15, :cond_c

    const/4 v14, 0x1

    aget-object v14, v11, v14

    const/4 v15, 0x0

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 186
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$3(Lmacrochip/app/newpl1200/SysApp;Z)V

    goto/16 :goto_0

    .line 191
    .end local v11    # "tmpArr":[Ljava/lang/String;
    :cond_d
    const-string v14, "6f6b697"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    array-length v14, v13

    const/16 v15, 0x14

    if-gt v14, v15, :cond_0

    .line 194
    :cond_e
    const-string v14, "70686f746f"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 196
    new-instance v6, Landroid/content/Intent;

    const-string v14, "et.song.sjrc.wifi.app.air.h264.REMOTE_PHOTO"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v6, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v14, v6}, Lmacrochip/app/newpl1200/SysApp;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 199
    .end local v6    # "i":Landroid/content/Intent;
    :cond_f
    const-string v14, "7265636f7264"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 201
    new-instance v6, Landroid/content/Intent;

    const-string v14, "et.song.sjrc.wifi.app.air.h264.REMOTE_RECORD"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .restart local v6    # "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v14, v6}, Lmacrochip/app/newpl1200/SysApp;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 218
    .end local v6    # "i":Landroid/content/Intent;
    :cond_10
    const-string v14, "6e6f6163740d0a"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 220
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$4(Lmacrochip/app/newpl1200/SysApp;I)V

    goto/16 :goto_0

    .line 222
    :cond_11
    const-string v14, "000001a5"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    array-length v14, v13

    const/16 v15, 0x14

    if-gt v14, v15, :cond_0

    .line 229
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$5(Lmacrochip/app/newpl1200/SysApp;)I

    move-result v14

    if-gtz v14, :cond_0

    .line 252
    const-string v14, "forceI"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 256
    const-string v14, "56322e"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 261
    :try_start_0
    invoke-static {v12}, Let/song/ui/libs/ETTool;->HexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 263
    .local v2, "btVer":[B
    const/4 v14, 0x1

    aget-byte v14, v2, v14

    mul-int/lit16 v14, v14, 0xff

    mul-int/lit16 v14, v14, 0xff

    const/4 v15, 0x3

    aget-byte v15, v2, v15

    mul-int/lit16 v15, v15, 0xff

    add-int/2addr v14, v15

    const/4 v15, 0x5

    aget-byte v15, v2, v15

    add-int/2addr v14, v15

    int-to-long v4, v14

    .line 265
    .local v4, "curVer":J
    const-wide/32 v8, 0x31cd3a

    .line 267
    .local v8, "minVer":J
    const-wide/32 v14, 0x31cd3a

    cmp-long v14, v4, v14

    if-ltz v14, :cond_13

    sget v14, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_13

    .line 269
    const/4 v14, 0x1

    sput v14, Lcom/fh/lib/PlayInfo;->transMode:I

    .line 273
    :cond_13
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "PlayInfo.transMode = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v15, Lcom/fh/lib/PlayInfo;->transMode:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/app/util/log;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 275
    .end local v2    # "btVer":[B
    .end local v4    # "curVer":J
    .end local v8    # "minVer":J
    :catch_0
    move-exception v3

    .line 277
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 282
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_14
    const-string v14, "56322e312e38"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 284
    const/4 v14, 0x1

    sput v14, Lcom/fh/lib/PlayInfo;->transMode:I

    goto/16 :goto_0

    .line 286
    :cond_15
    const-string v14, "56322e312e39"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 288
    const/4 v14, 0x1

    sput v14, Lcom/fh/lib/PlayInfo;->transMode:I

    goto/16 :goto_0

    .line 293
    .end local v13    # "udpRec":[B
    :sswitch_2
    const-string v14, "SysApp"

    const-string v15, "======TCP TCP_CONNECT_SUCCEED"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 296
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [B

    .line 297
    .local v7, "reData":[B
    const/16 v14, 0x14

    invoke-static {v7, v14}, Let/song/ui/libs/ETTool;->BytesToHexString([BI)Ljava/lang/String;

    move-result-object v12

    .line 299
    const-string v14, "4f4b"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 306
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$5(Lmacrochip/app/newpl1200/SysApp;)I

    move-result v14

    if-gtz v14, :cond_0

    .line 329
    const-string v14, "70686f746f"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$4(Lmacrochip/app/newpl1200/SysApp;I)V

    .line 332
    new-instance v6, Landroid/content/Intent;

    const-string v14, "et.song.sjrc.wifi.app.air.h264.REMOTE_PHOTO"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .restart local v6    # "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v14, v6}, Lmacrochip/app/newpl1200/SysApp;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 335
    .end local v6    # "i":Landroid/content/Intent;
    :cond_16
    const-string v14, "7265636f7264"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 337
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$4(Lmacrochip/app/newpl1200/SysApp;I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$6(Lmacrochip/app/newpl1200/SysApp;Z)V

    .line 339
    new-instance v6, Landroid/content/Intent;

    const-string v14, "et.song.sjrc.wifi.app.air.h264.REMOTE_RECORD"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .restart local v6    # "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v14, v6}, Lmacrochip/app/newpl1200/SysApp;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 356
    .end local v6    # "i":Landroid/content/Intent;
    :cond_17
    const-string v14, "6e6f6163740d0a"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 358
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$6(Lmacrochip/app/newpl1200/SysApp;Z)V

    .line 359
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$4(Lmacrochip/app/newpl1200/SysApp;I)V

    goto/16 :goto_0

    .line 361
    :cond_18
    const-string v14, "7265636f7274"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 363
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$4(Lmacrochip/app/newpl1200/SysApp;I)V

    .line 364
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    iget-boolean v14, v14, Lmacrochip/app/newpl1200/SysApp;->bStreamGet:Z

    if-eqz v14, :cond_0

    .line 369
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$6(Lmacrochip/app/newpl1200/SysApp;Z)V

    .line 370
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    iget-boolean v14, v14, Lmacrochip/app/newpl1200/SysApp;->mRemoteRecord:Z

    if-nez v14, :cond_0

    .line 372
    new-instance v6, Landroid/content/Intent;

    const-string v14, "et.song.sjrc.wifi.app.air.h264.REMOTE_RECORD_START"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .restart local v6    # "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v14, v6}, Lmacrochip/app/newpl1200/SysApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lmacrochip/app/newpl1200/SysApp;->mRemoteRecord:Z

    goto/16 :goto_0

    .line 377
    .end local v6    # "i":Landroid/content/Intent;
    :cond_19
    const-string v14, "73746f70"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 379
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$4(Lmacrochip/app/newpl1200/SysApp;I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$6(Lmacrochip/app/newpl1200/SysApp;Z)V

    .line 381
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    iget-boolean v14, v14, Lmacrochip/app/newpl1200/SysApp;->mRemoteRecord:Z

    if-eqz v14, :cond_0

    .line 383
    new-instance v6, Landroid/content/Intent;

    const-string v14, "et.song.sjrc.wifi.app.air.h264.REMOTE_RECORD_END"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .restart local v6    # "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v14, v6}, Lmacrochip/app/newpl1200/SysApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lmacrochip/app/newpl1200/SysApp;->mRemoteRecord:Z

    goto/16 :goto_0

    .line 388
    .end local v6    # "i":Landroid/content/Intent;
    :cond_1a
    const-string v14, "70686f7431"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 390
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$4(Lmacrochip/app/newpl1200/SysApp;I)V

    .line 391
    const-string v10, "phot1"

    .line 392
    .local v10, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$7(Lmacrochip/app/newpl1200/SysApp;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1b

    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$8(Lmacrochip/app/newpl1200/SysApp;)Z

    move-result v14

    if-nez v14, :cond_1b

    .line 394
    new-instance v6, Landroid/content/Intent;

    const-string v14, "et.song.sjrc.wifi.app.air.h264.REMOTE_PHOTO"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .restart local v6    # "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v14, v6}, Lmacrochip/app/newpl1200/SysApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 397
    .end local v6    # "i":Landroid/content/Intent;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14, v10}, Lmacrochip/app/newpl1200/SysApp;->access$9(Lmacrochip/app/newpl1200/SysApp;Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$6(Lmacrochip/app/newpl1200/SysApp;Z)V

    goto/16 :goto_0

    .line 400
    .end local v10    # "s":Ljava/lang/String;
    :cond_1c
    const-string v14, "70686f7432"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 402
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$4(Lmacrochip/app/newpl1200/SysApp;I)V

    .line 403
    const-string v10, "phot2"

    .line 405
    .restart local v10    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$7(Lmacrochip/app/newpl1200/SysApp;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1d

    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14}, Lmacrochip/app/newpl1200/SysApp;->access$8(Lmacrochip/app/newpl1200/SysApp;)Z

    move-result v14

    if-nez v14, :cond_1d

    .line 407
    new-instance v6, Landroid/content/Intent;

    const-string v14, "et.song.sjrc.wifi.app.air.h264.REMOTE_PHOTO"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .restart local v6    # "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v14, v6}, Lmacrochip/app/newpl1200/SysApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 410
    .end local v6    # "i":Landroid/content/Intent;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v14, v10}, Lmacrochip/app/newpl1200/SysApp;->access$9(Lmacrochip/app/newpl1200/SysApp;Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v14, v0, Lmacrochip/app/newpl1200/SysApp$1;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lmacrochip/app/newpl1200/SysApp;->access$6(Lmacrochip/app/newpl1200/SysApp;Z)V

    goto/16 :goto_0

    .line 415
    .end local v7    # "reData":[B
    .end local v10    # "s":Ljava/lang/String;
    :sswitch_4
    const-string v14, "SysApp"

    const-string v15, "======TCP TCP_CONNECT_ERROR"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 96
    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_1
        0x2712 -> :sswitch_0
        0x2af9 -> :sswitch_2
        0x2afa -> :sswitch_3
        0x2afb -> :sswitch_4
    .end sparse-switch
.end method
