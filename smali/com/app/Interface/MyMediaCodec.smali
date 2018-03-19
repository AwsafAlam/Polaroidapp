.class public Lcom/app/Interface/MyMediaCodec;
.super Ljava/lang/Object;
.source "MyMediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;,
        Lcom/app/Interface/MyMediaCodec$PlayThread;,
        Lcom/app/Interface/MyMediaCodec$YUVData;,
        Lcom/app/Interface/MyMediaCodec$decodeThread;
    }
.end annotation


# static fields
.field public static SHOW_MODE_3D:I

.field public static SHOW_MODE_FULLSCREEN:I

.field public static SHOW_MODE_NORMAL:I

.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/app/Interface/MyMediaCodec;


# instance fields
.field public curVideoHeight:I

.field public curVideoWidth:I

.field private forceIframe:Z

.field public fun:Lcom/fh/lib/Define$StreamDataCallBackInterface;

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field public isUpdateShowRect:Z

.field private lastPPSData:[B

.field private lastSPSData:[B

.field protected mDecodeThread:Ljava/lang/Thread;

.field private mFrameNo:I

.field public mFrameRender:Lcom/android/opengles/GLFrameRenderer;

.field public mLastVideoHeight:I

.field public mLastVideoWidth:I

.field private mSurface:Landroid/view/Surface;

.field public mVideoHeight:I

.field public mVideoWidth:I

.field public mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

.field private mediaCodec:Landroid/media/MediaCodec;

.field private mediaCodecStartF:Z

.field private mediaFormat:Landroid/media/MediaFormat;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private playHandle:I

.field private ppsData:[B

.field final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;",
            ">;"
        }
    .end annotation
.end field

.field private showMode:I

.field private spsData:[B

.field protected threadStartF:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "MediaCodecInterface"

    sput-object v0, Lcom/app/Interface/MyMediaCodec;->TAG:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/app/Interface/MyMediaCodec;->SHOW_MODE_NORMAL:I

    .line 61
    const/4 v0, 0x1

    sput v0, Lcom/app/Interface/MyMediaCodec;->SHOW_MODE_FULLSCREEN:I

    .line 62
    const/4 v0, 0x2

    sput v0, Lcom/app/Interface/MyMediaCodec;->SHOW_MODE_3D:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v3, p0, Lcom/app/Interface/MyMediaCodec;->mSurface:Landroid/view/Surface;

    .line 39
    iput-boolean v2, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodecStartF:Z

    .line 43
    iput v2, p0, Lcom/app/Interface/MyMediaCodec;->mFrameNo:I

    .line 44
    iput-boolean v2, p0, Lcom/app/Interface/MyMediaCodec;->forceIframe:Z

    .line 46
    iput-boolean v2, p0, Lcom/app/Interface/MyMediaCodec;->threadStartF:Z

    .line 48
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/app/Interface/MyMediaCodec;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/Interface/MyMediaCodec;->isUpdateShowRect:Z

    .line 57
    iput-object v3, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    .line 59
    iput v2, p0, Lcom/app/Interface/MyMediaCodec;->showMode:I

    .line 517
    new-instance v0, Lcom/app/Interface/MyMediaCodec$1;

    invoke-direct {v0, p0}, Lcom/app/Interface/MyMediaCodec$1;-><init>(Lcom/app/Interface/MyMediaCodec;)V

    iput-object v0, p0, Lcom/app/Interface/MyMediaCodec;->fun:Lcom/fh/lib/Define$StreamDataCallBackInterface;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/app/Interface/MyMediaCodec;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/app/Interface/MyMediaCodec;->mFrameNo:I

    return v0
.end method

.method static synthetic access$1(Lcom/app/Interface/MyMediaCodec;I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/app/Interface/MyMediaCodec;->mFrameNo:I

    return-void
.end method

.method static synthetic access$2(Lcom/app/Interface/MyMediaCodec;[BI)I
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/app/Interface/MyMediaCodec;->getSPSAndPPS([BI)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/app/Interface/MyMediaCodec;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/app/Interface/MyMediaCodec;->instance:Lcom/app/Interface/MyMediaCodec;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/app/Interface/MyMediaCodec;

    invoke-direct {v0}, Lcom/app/Interface/MyMediaCodec;-><init>()V

    sput-object v0, Lcom/app/Interface/MyMediaCodec;->instance:Lcom/app/Interface/MyMediaCodec;

    .line 89
    :cond_0
    sget-object v0, Lcom/app/Interface/MyMediaCodec;->instance:Lcom/app/Interface/MyMediaCodec;

    return-object v0
.end method

.method private getSPSAndPPS([BI)I
    .locals 16
    .param p1, "buf"    # [B
    .param p2, "bufLen"    # I

    .prologue
    .line 154
    const/4 v9, 0x0

    .local v9, "sameSPS":Z
    const/4 v8, 0x0

    .line 155
    .local v8, "samePPS":Z
    const/4 v4, 0x0

    .local v4, "offset":I
    const/4 v2, 0x0

    .line 156
    .local v2, "index":I
    const/4 v12, 0x3

    new-array v5, v12, [I

    fill-array-data v5, :array_0

    .line 157
    .local v5, "pos":[I
    const/4 v10, 0x0

    .local v10, "spsLen":I
    const/4 v6, 0x0

    .line 158
    .local v6, "ppsLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    move/from16 v0, p2

    if-lt v1, v0, :cond_4

    move v2, v3

    .line 173
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :cond_0
    :goto_1
    const/4 v1, 0x0

    :goto_2
    const/4 v12, 0x3

    if-lt v1, v12, :cond_6

    .line 180
    const/4 v12, 0x0

    aget v11, v5, v12

    .line 181
    .local v11, "spsOffset":I
    const/4 v12, 0x1

    aget v7, v5, v12

    .line 182
    .local v7, "ppsOffset":I
    const/4 v12, 0x7

    add-int/lit8 v13, v11, 0x4

    aget-byte v13, p1, v13

    and-int/lit8 v13, v13, 0x1f

    if-ne v12, v13, :cond_1

    const/16 v12, 0x8

    add-int/lit8 v13, v7, 0x4

    aget-byte v13, p1, v13

    and-int/lit8 v13, v13, 0x1f

    if-ne v12, v13, :cond_1

    .line 184
    const/4 v12, 0x1

    aget v12, v5, v12

    const/4 v13, 0x0

    aget v13, v5, v13

    sub-int v10, v12, v13

    .line 185
    const/4 v12, 0x2

    aget v12, v5, v12

    const/4 v13, 0x1

    aget v13, v5, v13

    sub-int v6, v12, v13

    .line 188
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/app/Interface/MyMediaCodec;->lastSPSData:[B

    if-nez v12, :cond_2

    .line 190
    new-array v12, v10, [B

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/app/Interface/MyMediaCodec;->lastSPSData:[B

    .line 192
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/app/Interface/MyMediaCodec;->lastPPSData:[B

    if-nez v12, :cond_3

    .line 194
    new-array v12, v6, [B

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/app/Interface/MyMediaCodec;->lastPPSData:[B

    .line 198
    :cond_3
    const/4 v9, 0x1

    .line 199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/app/Interface/MyMediaCodec;->lastSPSData:[B

    array-length v12, v12

    if-ne v10, v12, :cond_a

    .line 201
    const/4 v1, 0x0

    :goto_3
    if-lt v1, v10, :cond_8

    .line 215
    :goto_4
    const/4 v8, 0x1

    .line 216
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/app/Interface/MyMediaCodec;->lastPPSData:[B

    array-length v12, v12

    if-ne v6, v12, :cond_d

    .line 218
    const/4 v1, 0x0

    :goto_5
    if-lt v1, v6, :cond_b

    .line 232
    :goto_6
    if-eqz v9, :cond_e

    if-eqz v8, :cond_e

    .line 233
    const/4 v12, 0x0

    .line 251
    .end local v7    # "ppsOffset":I
    .end local v11    # "spsOffset":I
    :goto_7
    return v12

    .line 160
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_4
    aget-byte v12, p1, v1

    if-nez v12, :cond_5

    add-int/lit8 v12, v1, 0x1

    aget-byte v12, p1, v12

    if-nez v12, :cond_5

    add-int/lit8 v12, v1, 0x2

    aget-byte v12, p1, v12

    if-nez v12, :cond_5

    const/4 v12, 0x1

    add-int/lit8 v13, v1, 0x3

    aget-byte v13, p1, v13

    if-ne v12, v13, :cond_5

    .line 162
    aput v1, v5, v3

    .line 163
    const/4 v12, 0x2

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    if-eq v12, v3, :cond_0

    .line 158
    :goto_8
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto/16 :goto_0

    .line 168
    :cond_5
    add-int/lit8 v12, p2, -0x1

    add-int/lit8 v13, v1, 0x3

    if-ne v12, v13, :cond_11

    move v2, v3

    .line 170
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto/16 :goto_1

    .line 175
    :cond_6
    aget v12, v5, v1

    if-gez v12, :cond_7

    .line 177
    const/4 v12, -0x1

    goto :goto_7

    .line 173
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 203
    .restart local v7    # "ppsOffset":I
    .restart local v11    # "spsOffset":I
    :cond_8
    add-int v12, v11, v1

    aget-byte v12, p1, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/app/Interface/MyMediaCodec;->lastSPSData:[B

    aget-byte v13, v13, v1

    if-eq v12, v13, :cond_9

    .line 205
    const/4 v9, 0x0

    .line 206
    goto :goto_4

    .line 201
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 212
    :cond_a
    const/4 v9, 0x0

    goto :goto_4

    .line 220
    :cond_b
    add-int v12, v7, v1

    aget-byte v12, p1, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/app/Interface/MyMediaCodec;->lastPPSData:[B

    aget-byte v13, v13, v1

    if-eq v12, v13, :cond_c

    .line 222
    const/4 v8, 0x0

    .line 223
    goto :goto_6

    .line 218
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 229
    :cond_d
    const/4 v8, 0x0

    goto :goto_6

    .line 236
    :cond_e
    new-array v12, v10, [B

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/app/Interface/MyMediaCodec;->spsData:[B

    .line 237
    new-array v12, v6, [B

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/app/Interface/MyMediaCodec;->ppsData:[B

    .line 238
    const/4 v1, 0x0

    :goto_9
    if-lt v1, v10, :cond_f

    .line 242
    const/4 v1, 0x0

    :goto_a
    if-lt v1, v6, :cond_10

    .line 246
    new-array v12, v10, [B

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/app/Interface/MyMediaCodec;->lastSPSData:[B

    .line 247
    new-array v12, v6, [B

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/app/Interface/MyMediaCodec;->lastPPSData:[B

    .line 248
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/app/Interface/MyMediaCodec;->spsData:[B

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/Interface/MyMediaCodec;->lastSPSData:[B

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/app/Interface/MyMediaCodec;->ppsData:[B

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/Interface/MyMediaCodec;->lastPPSData:[B

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/app/Interface/MyMediaCodec;->openMediaCodec()V

    .line 251
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 240
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/app/Interface/MyMediaCodec;->spsData:[B

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 244
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/app/Interface/MyMediaCodec;->ppsData:[B

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v7, v12, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .end local v2    # "index":I
    .end local v7    # "ppsOffset":I
    .end local v11    # "spsOffset":I
    .restart local v3    # "index":I
    :cond_11
    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto/16 :goto_8

    .line 156
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 6
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 545
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    .line 546
    .local v3, "numCodecs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 560
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 547
    :cond_1
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 549
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_3

    .line 546
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    :cond_3
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 554
    .local v4, "types":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 555
    aget-object v5, v4, v2

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 554
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public checkFrame(II)V
    .locals 1
    .param p1, "frameWidth"    # I
    .param p2, "frameHeight"    # I

    .prologue
    .line 504
    iget v0, p0, Lcom/app/Interface/MyMediaCodec;->curVideoWidth:I

    if-ne v0, p1, :cond_0

    .line 505
    iget v0, p0, Lcom/app/Interface/MyMediaCodec;->curVideoHeight:I

    if-ne v0, p2, :cond_0

    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/Interface/MyMediaCodec;->isUpdateShowRect:Z

    .line 515
    :goto_0
    return-void

    .line 511
    :cond_0
    iput p1, p0, Lcom/app/Interface/MyMediaCodec;->curVideoWidth:I

    .line 512
    iput p2, p0, Lcom/app/Interface/MyMediaCodec;->curVideoHeight:I

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/Interface/MyMediaCodec;->isUpdateShowRect:Z

    goto :goto_0
.end method

.method public cleanQueue()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 565
    return-void
.end method

.method public closeMediaCodec()V
    .locals 2

    .prologue
    .line 344
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodecStartF:Z

    .line 345
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/app/Interface/MyMediaCodec;->mSurface:Landroid/view/Surface;

    .line 346
    iget-object v1, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 349
    iget-object v1, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 350
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodec:Landroid/media/MediaCodec;

    .line 353
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/app/Interface/MyMediaCodec;->lastSPSData:[B

    .line 354
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/app/Interface/MyMediaCodec;->lastPPSData:[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public getShowMode()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/app/Interface/MyMediaCodec;->showMode:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/app/Interface/MyMediaCodec;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/app/Interface/MyMediaCodec;->mVideoWidth:I

    return v0
.end method

.method public init(Lcom/android/opengles/GLFrameRenderer;)V
    .locals 6
    .param p1, "mFrameRender"    # Lcom/android/opengles/GLFrameRenderer;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/app/Interface/MyMediaCodec;->mFrameRender:Lcom/android/opengles/GLFrameRenderer;

    .line 112
    sget v3, Lcom/app/Interface/MyMediaCodec;->SHOW_MODE_FULLSCREEN:I

    invoke-virtual {p0, v3}, Lcom/app/Interface/MyMediaCodec;->setShowMode(I)V

    .line 114
    sget v3, Lcom/fh/lib/PlayInfo;->decodeType:I

    if-nez v3, :cond_0

    .line 137
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v3, p0, Lcom/app/Interface/MyMediaCodec;->fun:Lcom/fh/lib/Define$StreamDataCallBackInterface;

    invoke-static {v3}, Lcom/fh/lib/FHSDK;->registerStreamDataCallBack(Lcom/fh/lib/Define$StreamDataCallBackInterface;)V

    .line 120
    new-instance v3, Lcom/app/Interface/MyMediaCodec$YUVData;

    invoke-direct {v3, p0}, Lcom/app/Interface/MyMediaCodec$YUVData;-><init>(Lcom/app/Interface/MyMediaCodec;)V

    iput-object v3, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    .line 122
    const/16 v2, 0x780

    .line 123
    .local v2, "videoWidth":I
    const/16 v1, 0x438

    .line 125
    .local v1, "videoHeight":I
    :try_start_0
    const-string v3, "video/avc"

    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_1
    const-string v3, "video/avc"

    invoke-static {v3, v2, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/app/Interface/MyMediaCodec;->mediaFormat:Landroid/media/MediaFormat;

    .line 132
    iget-object v3, p0, Lcom/app/Interface/MyMediaCodec;->mediaFormat:Landroid/media/MediaFormat;

    const-string v4, "color-format"

    const/16 v5, 0x15

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 134
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/app/Interface/MyMediaCodec$decodeThread;

    invoke-direct {v4, p0}, Lcom/app/Interface/MyMediaCodec$decodeThread;-><init>(Lcom/app/Interface/MyMediaCodec;)V

    const-string v5, "decodeThread"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/app/Interface/MyMediaCodec;->mDecodeThread:Ljava/lang/Thread;

    .line 135
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/app/Interface/MyMediaCodec;->threadStartF:Z

    .line 136
    iget-object v3, p0, Lcom/app/Interface/MyMediaCodec;->mDecodeThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public inputFrame([BIII)V
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "dataLen"    # I
    .param p4, "frameType"    # I

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodecStartF:Z

    if-nez v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 372
    .local v1, "inputBufferIndex":I
    if-ltz v1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v8, v0, v1

    .line 376
    .local v8, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 377
    invoke-virtual {v8, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 380
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    .end local v1    # "inputBufferIndex":I
    .end local v8    # "inputBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v7

    .line 384
    .local v7, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public openMediaCodec()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 317
    iget-boolean v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodecStartF:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "csd-0"

    iget-object v2, p0, Lcom/app/Interface/MyMediaCodec;->spsData:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 320
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "csd-1"

    iget-object v2, p0, Lcom/app/Interface/MyMediaCodec;->ppsData:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 339
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "csd-0"

    iget-object v2, p0, Lcom/app/Interface/MyMediaCodec;->spsData:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 325
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "csd-1"

    iget-object v2, p0, Lcom/app/Interface/MyMediaCodec;->ppsData:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 326
    sget v0, Lcom/fh/lib/PlayInfo;->decodeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 328
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/app/Interface/MyMediaCodec;->mediaFormat:Landroid/media/MediaFormat;

    iget-object v2, p0, Lcom/app/Interface/MyMediaCodec;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 335
    :goto_1
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 336
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/app/Interface/MyMediaCodec;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 337
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/app/Interface/MyMediaCodec;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodecStartF:Z

    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/app/Interface/MyMediaCodec;->mediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto :goto_1
.end method

.method public outputFrame()I
    .locals 14

    .prologue
    const/4 v13, -0x1

    .line 391
    const/4 v12, 0x0

    .line 392
    .local v12, "ret":I
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    move v0, v13

    .line 475
    :goto_0
    return v0

    .line 398
    :cond_0
    :try_start_0
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 399
    .local v7, "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v7, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v11

    .line 401
    .local v11, "outputBufferIndex":I
    packed-switch v11, :pswitch_data_0

    .line 415
    sget v0, Lcom/fh/lib/PlayInfo;->decodeType:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    .line 417
    iget v1, p0, Lcom/app/Interface/MyMediaCodec;->mVideoWidth:I

    .local v1, "w":I
    iget v2, p0, Lcom/app/Interface/MyMediaCodec;->mVideoHeight:I

    .line 418
    .local v2, "h":I
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    iget-object v0, v0, Lcom/app/Interface/MyMediaCodec$YUVData;->dataY:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    iget-object v0, v0, Lcom/app/Interface/MyMediaCodec$YUVData;->dataU:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    iget-object v0, v0, Lcom/app/Interface/MyMediaCodec$YUVData;->dataV:[B

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    mul-int v3, v1, v2

    new-array v3, v3, [B

    iput-object v3, v0, Lcom/app/Interface/MyMediaCodec$YUVData;->dataY:[B

    .line 421
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    mul-int v3, v1, v2

    mul-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    iput-object v3, v0, Lcom/app/Interface/MyMediaCodec$YUVData;->dataU:[B

    .line 422
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    mul-int v3, v1, v2

    mul-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    iput-object v3, v0, Lcom/app/Interface/MyMediaCodec$YUVData;->dataV:[B

    .line 424
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    mul-int v3, v1, v2

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    iput-object v3, v0, Lcom/app/Interface/MyMediaCodec$YUVData;->dataYV12:[B

    .line 425
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    mul-int v3, v1, v2

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    iput-object v3, v0, Lcom/app/Interface/MyMediaCodec$YUVData;->dataYUV:[B

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v6, v0, v11

    .line 429
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    iget v0, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 430
    iget v0, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v3

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 431
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    iget-object v0, v0, Lcom/app/Interface/MyMediaCodec$YUVData;->dataYV12:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    iget-object v4, v4, Lcom/app/Interface/MyMediaCodec$YUVData;->dataYV12:[B

    array-length v4, v4

    invoke-virtual {v6, v0, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 432
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v10

    .line 433
    .local v10, "f":Landroid/media/MediaFormat;
    const-string v0, "color-format"

    invoke-virtual {v10, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    .line 435
    .local v8, "color":I
    const/16 v0, 0x15

    if-ne v8, v0, :cond_4

    .line 444
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    iget-object v0, v0, Lcom/app/Interface/MyMediaCodec$YUVData;->dataYV12:[B

    iget-object v3, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    iget-object v3, v3, Lcom/app/Interface/MyMediaCodec$YUVData;->dataY:[B

    iget-object v4, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    iget-object v4, v4, Lcom/app/Interface/MyMediaCodec$YUVData;->dataU:[B

    iget-object v5, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    iget-object v5, v5, Lcom/app/Interface/MyMediaCodec$YUVData;->dataV:[B

    invoke-static/range {v0 .. v5}, Lcom/fh/lib/FHSDK;->yuv420sp2yuv([BII[B[B[B)Z

    .line 447
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mFrameRender:Lcom/android/opengles/GLFrameRenderer;

    if-eqz v0, :cond_3

    .line 449
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mFrameRender:Lcom/android/opengles/GLFrameRenderer;

    iget-object v0, v0, Lcom/android/opengles/GLFrameRenderer;->dataFun:Lcom/fh/lib/Define$YUVDataCallBackInterface;

    invoke-interface {v0, v1, v2}, Lcom/fh/lib/Define$YUVDataCallBackInterface;->update(II)V

    .line 450
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mFrameRender:Lcom/android/opengles/GLFrameRenderer;

    iget-object v0, v0, Lcom/android/opengles/GLFrameRenderer;->dataFun:Lcom/fh/lib/Define$YUVDataCallBackInterface;

    iget-object v3, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    iget-object v3, v3, Lcom/app/Interface/MyMediaCodec$YUVData;->dataY:[B

    iget-object v4, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    iget-object v4, v4, Lcom/app/Interface/MyMediaCodec$YUVData;->dataU:[B

    iget-object v5, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    iget-object v5, v5, Lcom/app/Interface/MyMediaCodec$YUVData;->dataV:[B

    invoke-interface {v0, v3, v4, v5}, Lcom/fh/lib/Define$YUVDataCallBackInterface;->update([B[B[B)V

    .line 465
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v8    # "color":I
    .end local v10    # "f":Landroid/media/MediaFormat;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x1

    invoke-virtual {v0, v11, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_2
    move v0, v12

    .line 475
    goto/16 :goto_0

    .line 404
    :pswitch_0
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/app/Interface/MyMediaCodec;->outputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 470
    .end local v7    # "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v11    # "outputBufferIndex":I
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/IllegalStateException;
    move v0, v13

    .line 472
    goto/16 :goto_0

    .line 408
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    .restart local v7    # "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v11    # "outputBufferIndex":I
    :pswitch_1
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/app/Interface/MyMediaCodec;->outputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 412
    :pswitch_2
    const/4 v12, -0x1

    .line 413
    goto :goto_2

    .line 455
    .restart local v1    # "w":I
    .restart local v2    # "h":I
    .restart local v6    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v8    # "color":I
    .restart local v10    # "f":Landroid/media/MediaFormat;
    :cond_3
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    iget-object v0, v0, Lcom/app/Interface/MyMediaCodec$YUVData;->dataY:[B

    iget-object v3, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    iget-object v3, v3, Lcom/app/Interface/MyMediaCodec$YUVData;->dataU:[B

    iget-object v4, p0, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    iget-object v4, v4, Lcom/app/Interface/MyMediaCodec$YUVData;->dataV:[B

    invoke-static {v0, v3, v4, v1, v2}, Lcom/fh/lib/FHSDK;->send2Sdl([B[B[BII)Z

    goto :goto_1

    .line 461
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "unSupport color Format :"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/app/util/log;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 401
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setShowMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/app/Interface/MyMediaCodec;->showMode:I

    .line 95
    return-void
.end method

.method public startPlay(Landroid/view/Surface;)V
    .locals 3
    .param p1, "mSurface"    # Landroid/view/Surface;

    .prologue
    .line 496
    iget-object v1, p0, Lcom/app/Interface/MyMediaCodec;->mSurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    .line 497
    iput-object p1, p0, Lcom/app/Interface/MyMediaCodec;->mSurface:Landroid/view/Surface;

    .line 498
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/app/Interface/MyMediaCodec$PlayThread;

    invoke-direct {v1, p0}, Lcom/app/Interface/MyMediaCodec$PlayThread;-><init>(Lcom/app/Interface/MyMediaCodec;)V

    const-string v2, "PlayThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 499
    .local v0, "mPlayThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 500
    return-void
.end method

.method public stopPlay()V
    .locals 0

    .prologue
    .line 480
    invoke-static {}, Lcom/fh/lib/FHSDK;->stopPlay()Z

    .line 481
    return-void
.end method

.method public unInit()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/app/Interface/MyMediaCodec;->stopPlay()V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/Interface/MyMediaCodec;->threadStartF:Z

    .line 144
    iget-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mDecodeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/Interface/MyMediaCodec;->mDecodeThread:Ljava/lang/Thread;

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/app/Interface/MyMediaCodec;->closeMediaCodec()V

    .line 150
    return-void
.end method
