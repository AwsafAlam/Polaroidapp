.class public Lmacrochip/app/newpl1200/SysApp;
.super Landroid/app/Application;
.source "SysApp.java"


# static fields
.field public static final DEV_TCP_PORT:I = 0x1f90

.field public static final DEV_TCP_PORT2:I = 0x22b8

.field private static final DEV_UDP_PORT:I = 0x1f90

.field public static final RECORD_END:Ljava/lang/String; = "et.song.sjrc.wifi.app.air.h264.REMOTE_RECORD_END"

.field public static final RECORD_START:Ljava/lang/String; = "et.song.sjrc.wifi.app.air.h264.REMOTE_RECORD_START"

.field public static final REMOTE_PHOTO:Ljava/lang/String; = "et.song.sjrc.wifi.app.air.h264.REMOTE_PHOTO"

.field public static final REMOTE_RECORD:Ljava/lang/String; = "et.song.sjrc.wifi.app.air.h264.REMOTE_RECORD"

.field public static SAVE_DATA_PATH:Ljava/lang/String; = null

.field public static SAVE_PATH:Ljava/lang/String; = null

.field protected static final TAG:Ljava/lang/String; = "SysApp"

.field private static final asciiTable:[C

.field private static final buf:[C

.field private static mMe:Lmacrochip/app/newpl1200/SysApp;


# instance fields
.field private SnapshotData:[B

.field private final TRANS_MODE_TCP:I

.field private final TRANS_MODE_UDP:I

.field private bFirstRecvPhot:Z

.field private bOffLine:Z

.field public bStreamGet:Z

.field checkAP:Ljava/lang/Runnable;

.field checkDevType:Ljava/lang/Runnable;

.field checkSSID:Ljava/lang/Runnable;

.field private go2CheckSSID:Z

.field private lastIp:[I

.field private mConfig:Lmacrochip/app/newpl1200/AppConfig;

.field private mContext:Landroid/content/Context;

.field private mCurSSID:Ljava/lang/String;

.field private mDevAddr:Ljava/net/InetAddress;

.field private mDevType:I

.field private mHandler:Landroid/os/Handler;

.field private mIPinfo:[I

.field private mIsPiratical:Z

.field private mIsRecvForceI:Z

.field private mRecSnapshotLen:I

.field public mRemoteRecord:Z

.field private mSnapshotLen:I

.field private mTcpSocket:Let/song/ui/libs/TCPSocket;

.field private mUdpSer:Lmacrochip/app/newpl1200/UDPServer;

.field private mWifiCfg:Lcom/app/util/WLANCfg;

.field private mWifiRSSI:I

.field private sendActiveCmd:Ljava/lang/Runnable;

.field private sendCheckWorkCmd:Ljava/lang/Runnable;

.field sendDevTime:Ljava/lang/Runnable;

.field private sendEndCmd:Ljava/lang/Runnable;

.field private sendRequestCmd:Ljava/lang/Runnable;

.field private strShotName:Ljava/lang/String;

.field private tcpSendCount:I

.field private transMode:I

.field private updataReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "/AirSnapshot/"

    sput-object v0, Lmacrochip/app/newpl1200/SysApp;->SAVE_DATA_PATH:Ljava/lang/String;

    .line 58
    const-string v0, ""

    sput-object v0, Lmacrochip/app/newpl1200/SysApp;->SAVE_PATH:Ljava/lang/String;

    .line 1064
    const/16 v0, 0x3e

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lmacrochip/app/newpl1200/SysApp;->asciiTable:[C

    .line 1067
    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    .line 1068
    return-void

    .line 1064
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    .line 1067
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 66
    new-instance v0, Lmacrochip/app/newpl1200/UDPServer;

    invoke-direct {v0}, Lmacrochip/app/newpl1200/UDPServer;-><init>()V

    iput-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mUdpSer:Lmacrochip/app/newpl1200/UDPServer;

    .line 68
    iput v1, p0, Lmacrochip/app/newpl1200/SysApp;->mDevType:I

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mIPinfo:[I

    .line 72
    iput v1, p0, Lmacrochip/app/newpl1200/SysApp;->mSnapshotLen:I

    .line 73
    iput v1, p0, Lmacrochip/app/newpl1200/SysApp;->mRecSnapshotLen:I

    .line 75
    iput-boolean v1, p0, Lmacrochip/app/newpl1200/SysApp;->mRemoteRecord:Z

    .line 76
    iput-boolean v1, p0, Lmacrochip/app/newpl1200/SysApp;->mIsPiratical:Z

    .line 77
    iput-boolean v1, p0, Lmacrochip/app/newpl1200/SysApp;->mIsRecvForceI:Z

    .line 79
    iput-object v3, p0, Lmacrochip/app/newpl1200/SysApp;->mCurSSID:Ljava/lang/String;

    .line 80
    iput-boolean v1, p0, Lmacrochip/app/newpl1200/SysApp;->bOffLine:Z

    .line 81
    iput-object v3, p0, Lmacrochip/app/newpl1200/SysApp;->mContext:Landroid/content/Context;

    .line 82
    iput v1, p0, Lmacrochip/app/newpl1200/SysApp;->TRANS_MODE_TCP:I

    .line 83
    iput v2, p0, Lmacrochip/app/newpl1200/SysApp;->TRANS_MODE_UDP:I

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lmacrochip/app/newpl1200/SysApp;->transMode:I

    .line 85
    const/16 v0, -0xc8

    iput v0, p0, Lmacrochip/app/newpl1200/SysApp;->mWifiRSSI:I

    .line 86
    iput v1, p0, Lmacrochip/app/newpl1200/SysApp;->tcpSendCount:I

    .line 87
    iput-boolean v2, p0, Lmacrochip/app/newpl1200/SysApp;->go2CheckSSID:Z

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->lastIp:[I

    .line 89
    const-string v0, "XXXX"

    iput-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->strShotName:Ljava/lang/String;

    .line 90
    iput-boolean v2, p0, Lmacrochip/app/newpl1200/SysApp;->bFirstRecvPhot:Z

    .line 91
    iput-boolean v1, p0, Lmacrochip/app/newpl1200/SysApp;->bStreamGet:Z

    .line 92
    new-instance v0, Lmacrochip/app/newpl1200/SysApp$1;

    invoke-direct {v0, p0}, Lmacrochip/app/newpl1200/SysApp$1;-><init>(Lmacrochip/app/newpl1200/SysApp;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mHandler:Landroid/os/Handler;

    .line 433
    new-instance v0, Lmacrochip/app/newpl1200/SysApp$2;

    invoke-direct {v0, p0}, Lmacrochip/app/newpl1200/SysApp$2;-><init>(Lmacrochip/app/newpl1200/SysApp;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->updataReceiver:Landroid/content/BroadcastReceiver;

    .line 475
    new-instance v0, Lmacrochip/app/newpl1200/SysApp$3;

    invoke-direct {v0, p0}, Lmacrochip/app/newpl1200/SysApp$3;-><init>(Lmacrochip/app/newpl1200/SysApp;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->checkAP:Ljava/lang/Runnable;

    .line 514
    new-instance v0, Lmacrochip/app/newpl1200/SysApp$4;

    invoke-direct {v0, p0}, Lmacrochip/app/newpl1200/SysApp$4;-><init>(Lmacrochip/app/newpl1200/SysApp;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->checkDevType:Ljava/lang/Runnable;

    .line 554
    new-instance v0, Lmacrochip/app/newpl1200/SysApp$5;

    invoke-direct {v0, p0}, Lmacrochip/app/newpl1200/SysApp$5;-><init>(Lmacrochip/app/newpl1200/SysApp;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->checkSSID:Ljava/lang/Runnable;

    .line 588
    new-instance v0, Lmacrochip/app/newpl1200/SysApp$6;

    invoke-direct {v0, p0}, Lmacrochip/app/newpl1200/SysApp$6;-><init>(Lmacrochip/app/newpl1200/SysApp;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->sendDevTime:Ljava/lang/Runnable;

    .line 599
    new-instance v0, Lmacrochip/app/newpl1200/SysApp$7;

    invoke-direct {v0, p0}, Lmacrochip/app/newpl1200/SysApp$7;-><init>(Lmacrochip/app/newpl1200/SysApp;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->sendActiveCmd:Ljava/lang/Runnable;

    .line 628
    new-instance v0, Lmacrochip/app/newpl1200/SysApp$8;

    invoke-direct {v0, p0}, Lmacrochip/app/newpl1200/SysApp$8;-><init>(Lmacrochip/app/newpl1200/SysApp;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->sendEndCmd:Ljava/lang/Runnable;

    .line 645
    new-instance v0, Lmacrochip/app/newpl1200/SysApp$9;

    invoke-direct {v0, p0}, Lmacrochip/app/newpl1200/SysApp$9;-><init>(Lmacrochip/app/newpl1200/SysApp;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->sendCheckWorkCmd:Ljava/lang/Runnable;

    .line 685
    new-instance v0, Lmacrochip/app/newpl1200/SysApp$10;

    invoke-direct {v0, p0}, Lmacrochip/app/newpl1200/SysApp$10;-><init>(Lmacrochip/app/newpl1200/SysApp;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->sendRequestCmd:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lmacrochip/app/newpl1200/SysApp;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lmacrochip/app/newpl1200/SysApp;)Let/song/ui/libs/TCPSocket;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mTcpSocket:Let/song/ui/libs/TCPSocket;

    return-object v0
.end method

.method static synthetic access$10(Lmacrochip/app/newpl1200/SysApp;[I)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lmacrochip/app/newpl1200/SysApp;->mIPinfo:[I

    return-void
.end method

.method static synthetic access$11(Lmacrochip/app/newpl1200/SysApp;)Lmacrochip/app/newpl1200/UDPServer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mUdpSer:Lmacrochip/app/newpl1200/UDPServer;

    return-object v0
.end method

.method static synthetic access$12(Lmacrochip/app/newpl1200/SysApp;)[I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mIPinfo:[I

    return-object v0
.end method

.method static synthetic access$13(Lmacrochip/app/newpl1200/SysApp;)[I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->lastIp:[I

    return-object v0
.end method

.method static synthetic access$14(Lmacrochip/app/newpl1200/SysApp;Ljava/net/InetAddress;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lmacrochip/app/newpl1200/SysApp;->mDevAddr:Ljava/net/InetAddress;

    return-void
.end method

.method static synthetic access$15(Lmacrochip/app/newpl1200/SysApp;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lmacrochip/app/newpl1200/SysApp;->go2CheckSSID:Z

    return v0
.end method

.method static synthetic access$16(Lmacrochip/app/newpl1200/SysApp;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$17(Lmacrochip/app/newpl1200/SysApp;Lcom/app/util/WLANCfg;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lmacrochip/app/newpl1200/SysApp;->mWifiCfg:Lcom/app/util/WLANCfg;

    return-void
.end method

.method static synthetic access$18(Lmacrochip/app/newpl1200/SysApp;)Lcom/app/util/WLANCfg;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mWifiCfg:Lcom/app/util/WLANCfg;

    return-object v0
.end method

.method static synthetic access$19(Lmacrochip/app/newpl1200/SysApp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lmacrochip/app/newpl1200/SysApp;->mCurSSID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lmacrochip/app/newpl1200/SysApp;Let/song/ui/libs/TCPSocket;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lmacrochip/app/newpl1200/SysApp;->mTcpSocket:Let/song/ui/libs/TCPSocket;

    return-void
.end method

.method static synthetic access$20(Lmacrochip/app/newpl1200/SysApp;Z)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lmacrochip/app/newpl1200/SysApp;->go2CheckSSID:Z

    return-void
.end method

.method static synthetic access$21(Lmacrochip/app/newpl1200/SysApp;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->sendActiveCmd:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$22(Lmacrochip/app/newpl1200/SysApp;)I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lmacrochip/app/newpl1200/SysApp;->tcpSendCount:I

    return v0
.end method

.method static synthetic access$23(Lmacrochip/app/newpl1200/SysApp;I)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lmacrochip/app/newpl1200/SysApp;->tcpSendCount:I

    return-void
.end method

.method static synthetic access$24(Lmacrochip/app/newpl1200/SysApp;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->sendCheckWorkCmd:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Lmacrochip/app/newpl1200/SysApp;Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lmacrochip/app/newpl1200/SysApp;->mIsPiratical:Z

    return-void
.end method

.method static synthetic access$4(Lmacrochip/app/newpl1200/SysApp;I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lmacrochip/app/newpl1200/SysApp;->transMode:I

    return-void
.end method

.method static synthetic access$5(Lmacrochip/app/newpl1200/SysApp;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lmacrochip/app/newpl1200/SysApp;->mSnapshotLen:I

    return v0
.end method

.method static synthetic access$6(Lmacrochip/app/newpl1200/SysApp;Z)V
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lmacrochip/app/newpl1200/SysApp;->bFirstRecvPhot:Z

    return-void
.end method

.method static synthetic access$7(Lmacrochip/app/newpl1200/SysApp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->strShotName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lmacrochip/app/newpl1200/SysApp;)Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lmacrochip/app/newpl1200/SysApp;->bFirstRecvPhot:Z

    return v0
.end method

.method static synthetic access$9(Lmacrochip/app/newpl1200/SysApp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lmacrochip/app/newpl1200/SysApp;->strShotName:Ljava/lang/String;

    return-void
.end method

.method private checkExpire(Ljava/lang/String;)Z
    .locals 6
    .param p1, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 1050
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1053
    .local v3, "format":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 1054
    .local v1, "date":Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1055
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v5

    if-le v4, v5, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v5

    if-le v4, v5, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-le v4, v5, :cond_0

    .line 1057
    const/4 v4, 0x1

    .line 1062
    .end local v0    # "curDate":Ljava/util/Date;
    .end local v1    # "date":Ljava/util/Date;
    :goto_0
    return v4

    .line 1059
    :catch_0
    move-exception v2

    .line 1060
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1062
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private createFilePath()V
    .locals 6

    .prologue
    .line 764
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "exSdPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lmacrochip/app/newpl1200/SysApp;->mContext:Landroid/content/Context;

    const/high16 v5, 0x7f080000

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lmacrochip/app/newpl1200/SysApp;->SAVE_DATA_PATH:Ljava/lang/String;

    .line 768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lmacrochip/app/newpl1200/SysApp;->SAVE_DATA_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, "sdSavePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 782
    .local v2, "vfile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 784
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 786
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lmacrochip/app/newpl1200/SysApp;->SAVE_PATH:Ljava/lang/String;

    .line 787
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fh/lib/FHSDK;->setShotPath(Ljava/lang/String;)V

    .line 788
    const-string v3, "SysApp"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SAVE_PATH:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lmacrochip/app/newpl1200/SysApp;->SAVE_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 759
    sget-object v0, Lmacrochip/app/newpl1200/SysApp;->mMe:Lmacrochip/app/newpl1200/SysApp;

    return-object v0
.end method

.method public static getAppResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 944
    sget-object v0, Lmacrochip/app/newpl1200/SysApp;->mMe:Lmacrochip/app/newpl1200/SysApp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 945
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmacrochip/app/newpl1200/SysApp;->mMe:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v0}, Lmacrochip/app/newpl1200/SysApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMe()Lmacrochip/app/newpl1200/SysApp;
    .locals 1

    .prologue
    .line 791
    sget-object v0, Lmacrochip/app/newpl1200/SysApp;->mMe:Lmacrochip/app/newpl1200/SysApp;

    return-object v0
.end method

.method public static getSDCardPath()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 948
    const/4 v9, 0x0

    .line 949
    .local v9, "sdcard_path":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 950
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 951
    .local v8, "sd_default":Ljava/lang/String;
    const-string v10, "text"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 953
    const/4 v10, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 957
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    .line 958
    .local v7, "runtime":Ljava/lang/Runtime;
    const-string v10, "mount"

    invoke-virtual {v7, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 959
    .local v6, "proc":Ljava/lang/Process;
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 960
    .local v3, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 962
    .local v4, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 963
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 996
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "proc":Ljava/lang/Process;
    .end local v7    # "runtime":Ljava/lang/Runtime;
    :goto_1
    const-string v10, "text"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    return-object v9

    .line 964
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "proc":Ljava/lang/Process;
    .restart local v7    # "runtime":Ljava/lang/Runtime;
    :cond_2
    :try_start_1
    const-string v10, "secure"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 966
    const-string v10, "asec"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 968
    const-string v10, "fat"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "/mnt/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 969
    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 970
    .local v1, "columns":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v10, v1

    if-le v10, v12, :cond_1

    .line 971
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v1, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 974
    const/4 v10, 0x1

    aget-object v9, v1, v10

    .line 976
    goto :goto_0

    .end local v1    # "columns":[Ljava/lang/String;
    :cond_3
    const-string v10, "fuse"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "/mnt/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 977
    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 978
    .restart local v1    # "columns":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v10, v1

    if-le v10, v12, :cond_1

    .line 979
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v1, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 982
    const/4 v10, 0x1

    aget-object v9, v1, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 986
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "proc":Ljava/lang/Process;
    .end local v7    # "runtime":Ljava/lang/Runtime;
    :catch_0
    move-exception v2

    .line 988
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static long2byte(I)[B
    .locals 3
    .param p0, "ip"    # I

    .prologue
    .line 897
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 898
    .local v0, "reData":[B
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 899
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 900
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 901
    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 902
    return-object v0
.end method

.method public static long2ip(I)Ljava/lang/String;
    .locals 3
    .param p0, "ip"    # I

    .prologue
    const/16 v2, 0x2e

    .line 886
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 887
    .local v0, "sb":Ljava/lang/StringBuffer;
    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 888
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 889
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 890
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 891
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 892
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 893
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 894
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public StartActive(Z)V
    .locals 4
    .param p1, "val"    # Z

    .prologue
    .line 906
    if-eqz p1, :cond_0

    .line 908
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp;->sendActiveCmd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 909
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp;->sendActiveCmd:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 915
    :goto_0
    return-void

    .line 913
    :cond_0
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp;->sendActiveCmd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public StartCheckWork(Z)V
    .locals 4
    .param p1, "val"    # Z

    .prologue
    .line 918
    const/4 v0, 0x0

    iput v0, p0, Lmacrochip/app/newpl1200/SysApp;->tcpSendCount:I

    .line 920
    if-eqz p1, :cond_0

    .line 922
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp;->sendCheckWorkCmd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 923
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp;->sendCheckWorkCmd:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 929
    :goto_0
    return-void

    .line 927
    :cond_0
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp;->sendCheckWorkCmd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public checkNetworkConnection()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 858
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lmacrochip/app/newpl1200/SysApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 860
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 862
    .local v2, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 864
    .local v1, "mobile":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 865
    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 868
    :cond_1
    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method public getConfig()Lmacrochip/app/newpl1200/AppConfig;
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mConfig:Lmacrochip/app/newpl1200/AppConfig;

    return-object v0
.end method

.method public getDevAddr()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mDevAddr:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getDevAddrStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mIPinfo:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Lmacrochip/app/newpl1200/SysApp;->long2ip(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevType()I
    .locals 1

    .prologue
    .line 820
    iget v0, p0, Lmacrochip/app/newpl1200/SysApp;->mDevType:I

    return v0
.end method

.method public getIPinfo()[I
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mIPinfo:[I

    return-object v0
.end method

.method public getIpInfo()[I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 872
    const/4 v4, 0x3

    new-array v1, v4, [I

    .line 873
    .local v1, "reData":[I
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lmacrochip/app/newpl1200/SysApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 874
    .local v3, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 875
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    aput v4, v1, v7

    .line 877
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 878
    .local v0, "di":Landroid/net/DhcpInfo;
    iget v4, v0, Landroid/net/DhcpInfo;->gateway:I

    aput v4, v1, v8

    .line 880
    const/4 v4, 0x2

    iget v5, v0, Landroid/net/DhcpInfo;->netmask:I

    aput v5, v1, v4

    .line 882
    const-string v4, "Airactivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IP val:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IP:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v7

    invoke-static {v6}, Lmacrochip/app/newpl1200/SysApp;->long2ip(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  Way val:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  Way:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v8

    invoke-static {v6}, Lmacrochip/app/newpl1200/SysApp;->long2ip(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    return-object v1
.end method

.method public getLocalAddrStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mIPinfo:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Lmacrochip/app/newpl1200/SysApp;->long2ip(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransMode()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lmacrochip/app/newpl1200/SysApp;->transMode:I

    return v0
.end method

.method public getUDPSer()Lmacrochip/app/newpl1200/UDPServer;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mUdpSer:Lmacrochip/app/newpl1200/UDPServer;

    return-object v0
.end method

.method public getVersion()V
    .locals 3

    .prologue
    .line 1353
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lmacrochip/app/newpl1200/SysApp;->writeUDPCmd([B)V

    .line 1354
    return-void
.end method

.method public getWifiRSSI()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lmacrochip/app/newpl1200/SysApp;->mWifiRSSI:I

    return v0
.end method

.method public isOffLine()Z
    .locals 1

    .prologue
    .line 581
    iget-boolean v0, p0, Lmacrochip/app/newpl1200/SysApp;->bOffLine:Z

    return v0
.end method

.method public isPiratical()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lmacrochip/app/newpl1200/SysApp;->mIsPiratical:Z

    return v0
.end method

.method public isSupportMediaCodecHardDecoder()Z
    .locals 10

    .prologue
    .line 1002
    const/4 v5, 0x0

    .line 1004
    .local v5, "isHardcode":Z
    new-instance v2, Ljava/io/File;

    const-string v9, "/system/etc/media_codecs.xml"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1005
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 1007
    .local v3, "inFile":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "inFile":Ljava/io/InputStream;
    .local v4, "inFile":Ljava/io/InputStream;
    move-object v3, v4

    .line 1012
    .end local v4    # "inFile":Ljava/io/InputStream;
    .restart local v3    # "inFile":Ljava/io/InputStream;
    :goto_0
    if-eqz v3, :cond_0

    .line 1015
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 1016
    .local v6, "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 1017
    .local v8, "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v9, "UTF-8"

    invoke-interface {v8, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1018
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1019
    .local v1, "eventType":I
    :goto_1
    const/4 v9, 0x1

    if-ne v1, v9, :cond_1

    .line 1041
    .end local v1    # "eventType":I
    .end local v6    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_2
    return v5

    .line 1020
    .restart local v1    # "eventType":I
    .restart local v6    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1021
    .local v7, "tagName":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 1035
    :cond_2
    :goto_3
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 1023
    :pswitch_0
    const-string v9, "MediaCodec"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1024
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "componentName":Ljava/lang/String;
    const-string v9, "OMX."

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1028
    const-string v9, "OMX.google."

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    if-nez v9, :cond_2

    .line 1030
    const/4 v5, 0x1

    goto :goto_3

    .line 1037
    .end local v0    # "componentName":Ljava/lang/String;
    .end local v1    # "eventType":I
    .end local v6    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v9

    goto :goto_2

    .line 1008
    :catch_1
    move-exception v9

    goto :goto_0

    .line 1021
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 701
    const-string v1, "SysApp"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    sput-object p0, Lmacrochip/app/newpl1200/SysApp;->mMe:Lmacrochip/app/newpl1200/SysApp;

    .line 703
    new-instance v1, Lmacrochip/app/newpl1200/AppConfig;

    invoke-direct {v1, p0}, Lmacrochip/app/newpl1200/AppConfig;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmacrochip/app/newpl1200/SysApp;->mConfig:Lmacrochip/app/newpl1200/AppConfig;

    .line 704
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp;->checkAP:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 705
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 706
    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 707
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp;->updataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lmacrochip/app/newpl1200/SysApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 709
    iput-object p0, p0, Lmacrochip/app/newpl1200/SysApp;->mContext:Landroid/content/Context;

    .line 740
    invoke-direct {p0}, Lmacrochip/app/newpl1200/SysApp;->createFilePath()V

    .line 741
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 742
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 935
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 936
    const-string v0, "SysApp"

    const-string v1, "System is running low on memory"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mUdpSer:Lmacrochip/app/newpl1200/UDPServer;

    invoke-virtual {v0}, Lmacrochip/app/newpl1200/UDPServer;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mUdpSer:Lmacrochip/app/newpl1200/UDPServer;

    invoke-virtual {v0}, Lmacrochip/app/newpl1200/UDPServer;->Stop()V

    .line 750
    :cond_0
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mTcpSocket:Let/song/ui/libs/TCPSocket;

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mTcpSocket:Let/song/ui/libs/TCPSocket;

    invoke-virtual {v0}, Let/song/ui/libs/TCPSocket;->Stop()V

    .line 754
    :cond_1
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->updataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lmacrochip/app/newpl1200/SysApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 755
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 756
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 757
    return-void
.end method

.method public requestIFrame()V
    .locals 2

    .prologue
    .line 1358
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp;->sendRequestCmd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1359
    return-void
.end method

.method public restartTCP()V
    .locals 4

    .prologue
    .line 838
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mTcpSocket:Let/song/ui/libs/TCPSocket;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mTcpSocket:Let/song/ui/libs/TCPSocket;

    invoke-virtual {v0}, Let/song/ui/libs/TCPSocket;->Stop()V

    .line 841
    const/4 v0, 0x0

    iput-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mTcpSocket:Let/song/ui/libs/TCPSocket;

    .line 843
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDevAddrStr() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmacrochip/app/newpl1200/SysApp;->getDevAddrStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/app/util/log;->e(Ljava/lang/String;)V

    .line 844
    sget v0, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    sget v0, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 846
    :cond_1
    new-instance v0, Let/song/ui/libs/TCPSocket;

    invoke-virtual {p0}, Lmacrochip/app/newpl1200/SysApp;->getDevAddrStr()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22b8

    iget-object v3, p0, Lmacrochip/app/newpl1200/SysApp;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Let/song/ui/libs/TCPSocket;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mTcpSocket:Let/song/ui/libs/TCPSocket;

    .line 847
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mTcpSocket:Let/song/ui/libs/TCPSocket;

    invoke-virtual {v0}, Let/song/ui/libs/TCPSocket;->Start()V

    .line 855
    :cond_2
    :goto_0
    return-void

    .line 849
    :cond_3
    sget v0, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    sget v0, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 851
    :cond_4
    new-instance v0, Let/song/ui/libs/TCPSocket;

    invoke-virtual {p0}, Lmacrochip/app/newpl1200/SysApp;->getDevAddrStr()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f90

    iget-object v3, p0, Lmacrochip/app/newpl1200/SysApp;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Let/song/ui/libs/TCPSocket;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mTcpSocket:Let/song/ui/libs/TCPSocket;

    .line 852
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mTcpSocket:Let/song/ui/libs/TCPSocket;

    invoke-virtual {v0}, Let/song/ui/libs/TCPSocket;->Start()V

    goto :goto_0
.end method

.method public rtspSendTime()V
    .locals 5

    .prologue
    .line 1342
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1343
    .local v1, "d":Ljava/util/Date;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "date -s \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v4

    add-int/lit16 v4, v4, 0x76c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Date;->getSeconds()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1345
    .local v2, "setDate":Ljava/lang/String;
    const/16 v3, 0x1d

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1346
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1347
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1348
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lmacrochip/app/newpl1200/SysApp;->writeUDPCmd([B)V

    .line 1349
    return-void
.end method

.method public sendUDPEndCmd()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp;->sendEndCmd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 625
    return-void
.end method

.method public setOffLine(Z)V
    .locals 0
    .param p1, "isOffLine"    # Z

    .prologue
    .line 585
    iput-boolean p1, p0, Lmacrochip/app/newpl1200/SysApp;->bOffLine:Z

    .line 586
    return-void
.end method

.method public tcpStartPhoto()V
    .locals 13

    .prologue
    .line 1104
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1105
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v10

    rem-int/lit8 v9, v10, 0x64

    .line 1106
    .local v9, "year":I
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v5

    .line 1107
    .local v5, "month":I
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v2

    .line 1108
    .local v2, "day":I
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v3

    .line 1109
    .local v3, "hour":I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v4

    .line 1110
    .local v4, "minite":I
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v6

    .line 1111
    .local v6, "second":I
    mul-int/lit16 v10, v3, 0x800

    mul-int/lit8 v11, v4, 0x20

    add-int/2addr v10, v11

    div-int/lit8 v11, v6, 0x2

    add-int v8, v10, v11

    .line 1112
    .local v8, "time1":I
    add-int/lit16 v10, v9, -0x7bc

    mul-int/lit16 v10, v10, 0x200

    mul-int/lit8 v11, v5, 0x20

    add-int/2addr v10, v11

    add-int v1, v10, v2

    .line 1114
    .local v1, "data1":I
    const/16 v10, 0x1b

    new-array v7, v10, [B

    .line 1115
    .local v7, "str":[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-byte v11, v7, v10

    .line 1116
    const/4 v10, 0x1

    const/4 v11, 0x1

    aput-byte v11, v7, v10

    .line 1117
    const/4 v10, 0x2

    const/4 v11, 0x2

    aput-byte v11, v7, v10

    .line 1118
    const/4 v10, 0x3

    const/4 v11, 0x3

    aput-byte v11, v7, v10

    .line 1119
    const/4 v10, 0x4

    const/4 v11, 0x4

    aput-byte v11, v7, v10

    .line 1120
    const/4 v10, 0x5

    const/4 v11, 0x5

    aput-byte v11, v7, v10

    .line 1121
    const/4 v10, 0x6

    const/4 v11, 0x6

    aput-byte v11, v7, v10

    .line 1122
    const/4 v10, 0x7

    const/4 v11, 0x7

    aput-byte v11, v7, v10

    .line 1123
    const/16 v10, 0x8

    const/16 v11, 0x8

    aput-byte v11, v7, v10

    .line 1124
    const/16 v10, 0x9

    const/16 v11, 0x9

    aput-byte v11, v7, v10

    .line 1125
    const/16 v10, 0xa

    const/16 v11, 0x11

    aput-byte v11, v7, v10

    .line 1126
    const/16 v10, 0xb

    const/16 v11, 0x11

    aput-byte v11, v7, v10

    .line 1127
    const/16 v10, 0xc

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    div-int/lit8 v12, v9, 0xa

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1128
    const/16 v10, 0xd

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    rem-int/lit8 v12, v9, 0xa

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1129
    const/16 v10, 0xe

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    aget-char v11, v11, v5

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1130
    const/16 v10, 0xf

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    aget-char v11, v11, v2

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1131
    const/16 v10, 0x10

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    aget-char v11, v11, v3

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1132
    const/16 v10, 0x11

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    div-int/lit8 v12, v4, 0xa

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1133
    const/16 v10, 0x12

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    rem-int/lit8 v12, v4, 0xa

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1134
    const/16 v10, 0x13

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->asciiTable:[C

    div-int/lit8 v12, v6, 0x2

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1135
    const/16 v10, 0x14

    const/16 v11, 0x4a

    aput-byte v11, v7, v10

    .line 1136
    const/16 v10, 0x15

    const/16 v11, 0x50

    aput-byte v11, v7, v10

    .line 1137
    const/16 v10, 0x16

    const/16 v11, 0x47

    aput-byte v11, v7, v10

    .line 1138
    const/16 v10, 0x17

    const v11, 0xff00

    and-int/2addr v11, v1

    shr-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1139
    const/16 v10, 0x18

    and-int/lit16 v11, v1, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1140
    const/16 v10, 0x19

    const v11, 0xff00

    and-int/2addr v11, v8

    shr-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1141
    const/16 v10, 0x1a

    and-int/lit16 v11, v8, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1142
    invoke-virtual {p0, v7}, Lmacrochip/app/newpl1200/SysApp;->writeTCPCmd([B)V

    .line 1143
    return-void
.end method

.method public tcpStartRecord()V
    .locals 13

    .prologue
    .line 1174
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1175
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v10

    rem-int/lit8 v9, v10, 0x64

    .line 1176
    .local v9, "year":I
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v5

    .line 1177
    .local v5, "month":I
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v2

    .line 1178
    .local v2, "day":I
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v3

    .line 1179
    .local v3, "hour":I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v4

    .line 1180
    .local v4, "minite":I
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v6

    .line 1181
    .local v6, "second":I
    mul-int/lit16 v10, v3, 0x800

    mul-int/lit8 v11, v4, 0x20

    add-int/2addr v10, v11

    div-int/lit8 v11, v6, 0x2

    add-int v8, v10, v11

    .line 1182
    .local v8, "time1":I
    add-int/lit16 v10, v9, -0x7bc

    mul-int/lit16 v10, v10, 0x200

    mul-int/lit8 v11, v5, 0x20

    add-int/2addr v10, v11

    add-int v1, v10, v2

    .line 1184
    .local v1, "data1":I
    const/16 v10, 0x17

    new-array v7, v10, [B

    .line 1185
    .local v7, "str":[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-byte v11, v7, v10

    .line 1186
    const/4 v10, 0x1

    const/4 v11, 0x1

    aput-byte v11, v7, v10

    .line 1187
    const/4 v10, 0x2

    const/4 v11, 0x2

    aput-byte v11, v7, v10

    .line 1188
    const/4 v10, 0x3

    const/4 v11, 0x3

    aput-byte v11, v7, v10

    .line 1189
    const/4 v10, 0x4

    const/4 v11, 0x4

    aput-byte v11, v7, v10

    .line 1190
    const/4 v10, 0x5

    const/4 v11, 0x5

    aput-byte v11, v7, v10

    .line 1191
    const/4 v10, 0x6

    const/4 v11, 0x6

    aput-byte v11, v7, v10

    .line 1192
    const/4 v10, 0x7

    const/4 v11, 0x7

    aput-byte v11, v7, v10

    .line 1193
    const/16 v10, 0x8

    const/16 v11, 0x8

    aput-byte v11, v7, v10

    .line 1194
    const/16 v10, 0x9

    const/16 v11, 0x9

    aput-byte v11, v7, v10

    .line 1195
    const/16 v10, 0xa

    const/16 v11, 0x12

    aput-byte v11, v7, v10

    .line 1196
    const/16 v10, 0xb

    const/16 v11, 0x12

    aput-byte v11, v7, v10

    .line 1197
    const/16 v10, 0xc

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    div-int/lit8 v12, v9, 0xa

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1198
    const/16 v10, 0xd

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    rem-int/lit8 v12, v9, 0xa

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1199
    const/16 v10, 0xe

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    aget-char v11, v11, v5

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1200
    const/16 v10, 0xf

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    aget-char v11, v11, v2

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1201
    const/16 v10, 0x10

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    aget-char v11, v11, v3

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1202
    const/16 v10, 0x11

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    div-int/lit8 v12, v4, 0xa

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1203
    const/16 v10, 0x12

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    rem-int/lit8 v12, v4, 0xa

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1204
    const/16 v10, 0x13

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->asciiTable:[C

    div-int/lit8 v12, v6, 0x2

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1205
    const/16 v10, 0x14

    const/16 v11, 0x41

    aput-byte v11, v7, v10

    .line 1206
    const/16 v10, 0x15

    const/16 v11, 0x56

    aput-byte v11, v7, v10

    .line 1207
    const/16 v10, 0x16

    const/16 v11, 0x49

    aput-byte v11, v7, v10

    .line 1208
    invoke-virtual {p0, v7}, Lmacrochip/app/newpl1200/SysApp;->writeTCPCmd([B)V

    .line 1209
    return-void
.end method

.method public tcpStopRecord()V
    .locals 12

    .prologue
    .line 1232
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1233
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v10

    rem-int/lit8 v9, v10, 0x64

    .line 1234
    .local v9, "year":I
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v5

    .line 1235
    .local v5, "month":I
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v2

    .line 1236
    .local v2, "day":I
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v3

    .line 1237
    .local v3, "hour":I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v4

    .line 1238
    .local v4, "minite":I
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v6

    .line 1239
    .local v6, "second":I
    mul-int/lit16 v10, v3, 0x800

    mul-int/lit8 v11, v4, 0x20

    add-int/2addr v10, v11

    div-int/lit8 v11, v6, 0x2

    add-int v8, v10, v11

    .line 1240
    .local v8, "time1":I
    add-int/lit16 v10, v9, -0x7bc

    mul-int/lit16 v10, v10, 0x200

    mul-int/lit8 v11, v5, 0x20

    add-int/2addr v10, v11

    add-int v1, v10, v2

    .line 1242
    .local v1, "data1":I
    const/16 v10, 0x10

    new-array v7, v10, [B

    .line 1243
    .local v7, "str":[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-byte v11, v7, v10

    .line 1244
    const/4 v10, 0x1

    const/4 v11, 0x1

    aput-byte v11, v7, v10

    .line 1245
    const/4 v10, 0x2

    const/4 v11, 0x2

    aput-byte v11, v7, v10

    .line 1246
    const/4 v10, 0x3

    const/4 v11, 0x3

    aput-byte v11, v7, v10

    .line 1247
    const/4 v10, 0x4

    const/4 v11, 0x4

    aput-byte v11, v7, v10

    .line 1248
    const/4 v10, 0x5

    const/4 v11, 0x5

    aput-byte v11, v7, v10

    .line 1249
    const/4 v10, 0x6

    const/4 v11, 0x6

    aput-byte v11, v7, v10

    .line 1250
    const/4 v10, 0x7

    const/4 v11, 0x7

    aput-byte v11, v7, v10

    .line 1251
    const/16 v10, 0x8

    const/16 v11, 0x8

    aput-byte v11, v7, v10

    .line 1252
    const/16 v10, 0x9

    const/16 v11, 0x9

    aput-byte v11, v7, v10

    .line 1253
    const/16 v10, 0xa

    const/16 v11, 0x13

    aput-byte v11, v7, v10

    .line 1254
    const/16 v10, 0xb

    const/16 v11, 0x13

    aput-byte v11, v7, v10

    .line 1255
    const/16 v10, 0xc

    const v11, 0xff00

    and-int/2addr v11, v1

    shr-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1256
    const/16 v10, 0xd

    and-int/lit16 v11, v1, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1257
    const/16 v10, 0xe

    const v11, 0xff00

    and-int/2addr v11, v8

    shr-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1258
    const/16 v10, 0xf

    and-int/lit16 v11, v8, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1259
    invoke-virtual {p0, v7}, Lmacrochip/app/newpl1200/SysApp;->writeTCPCmd([B)V

    .line 1260
    return-void
.end method

.method public udpSendTime()V
    .locals 14

    .prologue
    const/high16 v13, 0xff0000

    const v12, 0xff00

    const/high16 v11, -0x1000000

    .line 1264
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1289
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v9

    add-int/lit16 v8, v9, 0x76c

    .line 1290
    .local v8, "year":I
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v9

    add-int/lit8 v5, v9, 0x1

    .line 1291
    .local v5, "month":I
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v1

    .line 1292
    .local v1, "date":I
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v2

    .line 1293
    .local v2, "day":I
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v3

    .line 1294
    .local v3, "hour":I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v4

    .line 1295
    .local v4, "minite":I
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v6

    .line 1298
    .local v6, "second":I
    const/16 v9, 0x1d

    new-array v7, v9, [B

    .line 1299
    .local v7, "str":[B
    const/4 v9, 0x0

    const/16 v10, 0x26

    aput-byte v10, v7, v9

    .line 1300
    const/4 v9, 0x1

    and-int/lit16 v10, v8, 0xff

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1301
    const/4 v9, 0x2

    and-int v10, v8, v12

    shr-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1302
    const/4 v9, 0x3

    and-int v10, v8, v13

    shr-int/lit8 v10, v10, 0x10

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1303
    const/4 v9, 0x4

    and-int v10, v8, v11

    shr-int/lit8 v10, v10, 0x18

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1304
    const/4 v9, 0x5

    and-int/lit16 v10, v5, 0xff

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1305
    const/4 v9, 0x6

    and-int v10, v5, v12

    shr-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1306
    const/4 v9, 0x7

    and-int v10, v5, v13

    shr-int/lit8 v10, v10, 0x10

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1307
    const/16 v9, 0x8

    and-int v10, v5, v11

    shr-int/lit8 v10, v10, 0x18

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1309
    const/16 v9, 0x9

    and-int/lit16 v10, v1, 0xff

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1310
    const/16 v9, 0xa

    and-int v10, v1, v12

    shr-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1311
    const/16 v9, 0xb

    and-int v10, v1, v13

    shr-int/lit8 v10, v10, 0x10

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1312
    const/16 v9, 0xc

    and-int v10, v1, v11

    shr-int/lit8 v10, v10, 0x18

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1313
    const/16 v9, 0xd

    and-int/lit16 v10, v2, 0xff

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1314
    const/16 v9, 0xe

    and-int v10, v2, v12

    shr-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1315
    const/16 v9, 0xf

    and-int v10, v2, v13

    shr-int/lit8 v10, v10, 0x10

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1316
    const/16 v9, 0x10

    and-int v10, v2, v11

    shr-int/lit8 v10, v10, 0x18

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1318
    const/16 v9, 0x11

    and-int/lit16 v10, v3, 0xff

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1319
    const/16 v9, 0x12

    and-int v10, v3, v12

    shr-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1320
    const/16 v9, 0x13

    and-int v10, v3, v13

    shr-int/lit8 v10, v10, 0x10

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1321
    const/16 v9, 0x14

    and-int v10, v3, v11

    shr-int/lit8 v10, v10, 0x18

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1322
    const/16 v9, 0x15

    and-int/lit16 v10, v4, 0xff

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1323
    const/16 v9, 0x16

    and-int v10, v4, v12

    shr-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1324
    const/16 v9, 0x17

    and-int v10, v4, v13

    shr-int/lit8 v10, v10, 0x10

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1325
    const/16 v9, 0x18

    and-int v10, v4, v11

    shr-int/lit8 v10, v10, 0x18

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1327
    const/16 v9, 0x19

    and-int/lit16 v10, v6, 0xff

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1328
    const/16 v9, 0x1a

    and-int v10, v6, v12

    shr-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1329
    const/16 v9, 0x1b

    and-int v10, v6, v13

    shr-int/lit8 v10, v10, 0x10

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1330
    const/16 v9, 0x1c

    and-int v10, v6, v11

    shr-int/lit8 v10, v10, 0x18

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 1337
    invoke-virtual {p0, v7}, Lmacrochip/app/newpl1200/SysApp;->writeUDPCmd([B)V

    .line 1338
    return-void
.end method

.method public udpStartPhoto()V
    .locals 14

    .prologue
    const v13, 0xff00

    .line 1071
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1072
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v10

    rem-int/lit8 v9, v10, 0x64

    .line 1073
    .local v9, "year":I
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v5

    .line 1074
    .local v5, "month":I
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v2

    .line 1075
    .local v2, "day":I
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v3

    .line 1076
    .local v3, "hour":I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v4

    .line 1077
    .local v4, "minite":I
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v6

    .line 1078
    .local v6, "second":I
    mul-int/lit16 v10, v3, 0x800

    mul-int/lit8 v11, v4, 0x20

    add-int/2addr v10, v11

    div-int/lit8 v11, v6, 0x2

    add-int v8, v10, v11

    .line 1079
    .local v8, "time1":I
    add-int/lit16 v10, v9, -0x7bc

    mul-int/lit16 v10, v10, 0x200

    mul-int/lit8 v11, v5, 0x20

    add-int/2addr v10, v11

    add-int v1, v10, v2

    .line 1081
    .local v1, "data1":I
    const/16 v10, 0x10

    new-array v7, v10, [B

    .line 1082
    .local v7, "str":[B
    const/4 v10, 0x0

    const/16 v11, 0x11

    aput-byte v11, v7, v10

    .line 1083
    const/4 v10, 0x1

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    div-int/lit8 v12, v9, 0xa

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1084
    const/4 v10, 0x2

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    rem-int/lit8 v12, v9, 0xa

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1085
    const/4 v10, 0x3

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    aget-char v11, v11, v5

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1086
    const/4 v10, 0x4

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    aget-char v11, v11, v2

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1087
    const/4 v10, 0x5

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    aget-char v11, v11, v3

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1088
    const/4 v10, 0x6

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    div-int/lit8 v12, v4, 0xa

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1089
    const/4 v10, 0x7

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    rem-int/lit8 v12, v4, 0xa

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1090
    const/16 v10, 0x8

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->asciiTable:[C

    div-int/lit8 v12, v6, 0x2

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1091
    const/16 v10, 0x9

    const/16 v11, 0x4a

    aput-byte v11, v7, v10

    .line 1092
    const/16 v10, 0xa

    const/16 v11, 0x50

    aput-byte v11, v7, v10

    .line 1093
    const/16 v10, 0xb

    const/16 v11, 0x47

    aput-byte v11, v7, v10

    .line 1094
    const/16 v10, 0xc

    and-int v11, v1, v13

    shr-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1095
    const/16 v10, 0xd

    and-int/lit16 v11, v1, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1096
    const/16 v10, 0xe

    and-int v11, v8, v13

    shr-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1097
    const/16 v10, 0xf

    and-int/lit16 v11, v8, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1098
    invoke-virtual {p0, v7}, Lmacrochip/app/newpl1200/SysApp;->writeUDPCmd([B)V

    .line 1099
    return-void
.end method

.method public udpStartRecord()V
    .locals 13

    .prologue
    .line 1146
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1147
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v10

    rem-int/lit8 v9, v10, 0x64

    .line 1148
    .local v9, "year":I
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v5

    .line 1149
    .local v5, "month":I
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v2

    .line 1150
    .local v2, "day":I
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v3

    .line 1151
    .local v3, "hour":I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v4

    .line 1152
    .local v4, "minite":I
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v6

    .line 1153
    .local v6, "second":I
    mul-int/lit16 v10, v3, 0x800

    mul-int/lit8 v11, v4, 0x20

    add-int/2addr v10, v11

    div-int/lit8 v11, v6, 0x2

    add-int v8, v10, v11

    .line 1154
    .local v8, "time1":I
    add-int/lit16 v10, v9, -0x7bc

    mul-int/lit16 v10, v10, 0x200

    mul-int/lit8 v11, v5, 0x20

    add-int/2addr v10, v11

    add-int v1, v10, v2

    .line 1156
    .local v1, "data1":I
    const/16 v10, 0xc

    new-array v7, v10, [B

    .line 1157
    .local v7, "str":[B
    const/4 v10, 0x0

    const/16 v11, 0x12

    aput-byte v11, v7, v10

    .line 1158
    const/4 v10, 0x1

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    div-int/lit8 v12, v9, 0xa

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1159
    const/4 v10, 0x2

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    rem-int/lit8 v12, v9, 0xa

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1160
    const/4 v10, 0x3

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    aget-char v11, v11, v5

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1161
    const/4 v10, 0x4

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    aget-char v11, v11, v2

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1162
    const/4 v10, 0x5

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    aget-char v11, v11, v3

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1163
    const/4 v10, 0x6

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    div-int/lit8 v12, v4, 0xa

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1164
    const/4 v10, 0x7

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->buf:[C

    rem-int/lit8 v12, v4, 0xa

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1165
    const/16 v10, 0x8

    sget-object v11, Lmacrochip/app/newpl1200/SysApp;->asciiTable:[C

    div-int/lit8 v12, v6, 0x2

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1166
    const/16 v10, 0x9

    const/16 v11, 0x41

    aput-byte v11, v7, v10

    .line 1167
    const/16 v10, 0xa

    const/16 v11, 0x56

    aput-byte v11, v7, v10

    .line 1168
    const/16 v10, 0xb

    const/16 v11, 0x49

    aput-byte v11, v7, v10

    .line 1169
    invoke-virtual {p0, v7}, Lmacrochip/app/newpl1200/SysApp;->writeUDPCmd([B)V

    .line 1170
    return-void
.end method

.method public udpStopRecord()V
    .locals 13

    .prologue
    const v12, 0xff00

    .line 1212
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1213
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v10

    rem-int/lit8 v9, v10, 0x64

    .line 1214
    .local v9, "year":I
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v5

    .line 1215
    .local v5, "month":I
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v2

    .line 1216
    .local v2, "day":I
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v3

    .line 1217
    .local v3, "hour":I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v4

    .line 1218
    .local v4, "minite":I
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v6

    .line 1219
    .local v6, "second":I
    mul-int/lit16 v10, v3, 0x800

    mul-int/lit8 v11, v4, 0x20

    add-int/2addr v10, v11

    div-int/lit8 v11, v6, 0x2

    add-int v8, v10, v11

    .line 1220
    .local v8, "time1":I
    add-int/lit16 v10, v9, -0x7bc

    mul-int/lit16 v10, v10, 0x200

    mul-int/lit8 v11, v5, 0x20

    add-int/2addr v10, v11

    add-int v1, v10, v2

    .line 1222
    .local v1, "data1":I
    const/4 v10, 0x5

    new-array v7, v10, [B

    .line 1223
    .local v7, "str":[B
    const/4 v10, 0x0

    const/16 v11, 0x13

    aput-byte v11, v7, v10

    .line 1224
    const/4 v10, 0x1

    and-int v11, v1, v12

    shr-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1225
    const/4 v10, 0x2

    and-int/lit16 v11, v1, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1226
    const/4 v10, 0x3

    and-int v11, v8, v12

    shr-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1227
    const/4 v10, 0x4

    and-int/lit16 v11, v8, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 1228
    invoke-virtual {p0, v7}, Lmacrochip/app/newpl1200/SysApp;->writeUDPCmd([B)V

    .line 1229
    return-void
.end method

.method public writeTCPCmd(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 831
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mTcpSocket:Let/song/ui/libs/TCPSocket;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mTcpSocket:Let/song/ui/libs/TCPSocket;

    invoke-virtual {v0, p1}, Let/song/ui/libs/TCPSocket;->SendData(Ljava/lang/String;)V

    .line 835
    :cond_0
    return-void
.end method

.method public writeTCPCmd([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 824
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mTcpSocket:Let/song/ui/libs/TCPSocket;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mTcpSocket:Let/song/ui/libs/TCPSocket;

    invoke-virtual {v0, p1}, Let/song/ui/libs/TCPSocket;->SendData([B)V

    .line 828
    :cond_0
    return-void
.end method

.method public writeUDPCmd([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 815
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp;->mUdpSer:Lmacrochip/app/newpl1200/UDPServer;

    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp;->mDevAddr:Ljava/net/InetAddress;

    const/16 v2, 0x1f90

    invoke-virtual {v0, p1, v1, v2}, Lmacrochip/app/newpl1200/UDPServer;->addCmdP([BLjava/net/InetAddress;I)V

    .line 816
    return-void
.end method
