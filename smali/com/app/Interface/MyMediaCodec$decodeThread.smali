.class Lcom/app/Interface/MyMediaCodec$decodeThread;
.super Ljava/lang/Object;
.source "MyMediaCodec.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/Interface/MyMediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "decodeThread"
.end annotation


# instance fields
.field firstTest:Z

.field final synthetic this$0:Lcom/app/Interface/MyMediaCodec;


# direct methods
.method constructor <init>(Lcom/app/Interface/MyMediaCodec;)V
    .locals 1

    .prologue
    .line 257
    iput-object p1, p0, Lcom/app/Interface/MyMediaCodec$decodeThread;->this$0:Lcom/app/Interface/MyMediaCodec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/Interface/MyMediaCodec$decodeThread;->firstTest:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 261
    :goto_0
    iget-object v3, p0, Lcom/app/Interface/MyMediaCodec$decodeThread;->this$0:Lcom/app/Interface/MyMediaCodec;

    iget-boolean v3, v3, Lcom/app/Interface/MyMediaCodec;->threadStartF:Z

    if-nez v3, :cond_0

    .line 308
    iget-object v3, p0, Lcom/app/Interface/MyMediaCodec$decodeThread;->this$0:Lcom/app/Interface/MyMediaCodec;

    iget-object v3, v3, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    iput-object v7, v3, Lcom/app/Interface/MyMediaCodec$YUVData;->dataY:[B

    .line 309
    iget-object v3, p0, Lcom/app/Interface/MyMediaCodec$decodeThread;->this$0:Lcom/app/Interface/MyMediaCodec;

    iget-object v3, v3, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    iput-object v7, v3, Lcom/app/Interface/MyMediaCodec$YUVData;->dataU:[B

    .line 310
    iget-object v3, p0, Lcom/app/Interface/MyMediaCodec$decodeThread;->this$0:Lcom/app/Interface/MyMediaCodec;

    iget-object v3, v3, Lcom/app/Interface/MyMediaCodec;->mYUVData:Lcom/app/Interface/MyMediaCodec$YUVData;

    iput-object v7, v3, Lcom/app/Interface/MyMediaCodec$YUVData;->dataV:[B

    .line 312
    return-void

    .line 263
    :cond_0
    iget-object v3, p0, Lcom/app/Interface/MyMediaCodec$decodeThread;->this$0:Lcom/app/Interface/MyMediaCodec;

    iget-object v3, v3, Lcom/app/Interface/MyMediaCodec;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    sget v4, Lcom/fh/lib/PlayInfo;->frameCacheNum:I

    if-ge v3, v4, :cond_1

    .line 266
    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 274
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v2, 0x0

    .line 275
    .local v2, "q":Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;
    iget-object v3, p0, Lcom/app/Interface/MyMediaCodec$decodeThread;->this$0:Lcom/app/Interface/MyMediaCodec;

    iget-object v3, v3, Lcom/app/Interface/MyMediaCodec;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "q":Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;
    check-cast v2, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;

    .line 276
    .restart local v2    # "q":Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;
    if-eqz v2, :cond_2

    .line 279
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    iget v3, v2, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->mBufLen:I

    add-int/lit8 v3, v3, -0x4

    if-lt v1, v3, :cond_4

    .line 296
    .end local v1    # "index":I
    :cond_2
    :goto_2
    monitor-enter p0

    .line 297
    :try_start_1
    iget-object v3, p0, Lcom/app/Interface/MyMediaCodec$decodeThread;->this$0:Lcom/app/Interface/MyMediaCodec;

    invoke-virtual {v3}, Lcom/app/Interface/MyMediaCodec;->outputFrame()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-gez v3, :cond_3

    .line 300
    const-wide/16 v4, 0xa

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    :cond_3
    :goto_3
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 281
    .restart local v1    # "index":I
    :cond_4
    iget-object v3, v2, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->mDataBuf:[B

    add-int/lit8 v4, v1, 0x0

    aget-byte v3, v3, v4

    if-nez v3, :cond_5

    iget-object v3, v2, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->mDataBuf:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-nez v3, :cond_5

    iget-object v3, v2, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->mDataBuf:[B

    add-int/lit8 v4, v1, 0x2

    aget-byte v3, v3, v4

    if-eq v3, v8, :cond_7

    .line 282
    :cond_5
    iget-object v3, v2, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->mDataBuf:[B

    add-int/lit8 v4, v1, 0x0

    aget-byte v3, v3, v4

    if-nez v3, :cond_6

    iget-object v3, v2, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->mDataBuf:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-nez v3, :cond_6

    iget-object v3, v2, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->mDataBuf:[B

    add-int/lit8 v4, v1, 0x2

    aget-byte v3, v3, v4

    if-nez v3, :cond_6

    iget-object v3, v2, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->mDataBuf:[B

    add-int/lit8 v4, v1, 0x3

    aget-byte v3, v3, v4

    if-eq v3, v8, :cond_7

    .line 279
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 286
    :cond_7
    iget v3, v2, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->mFrameType:I

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/app/Interface/MyMediaCodec$decodeThread;->firstTest:Z

    if-eqz v3, :cond_8

    .line 289
    iget-object v3, p0, Lcom/app/Interface/MyMediaCodec$decodeThread;->this$0:Lcom/app/Interface/MyMediaCodec;

    iget-object v4, v2, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->mDataBuf:[B

    iget v5, v2, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->mBufLen:I

    invoke-static {v3, v4, v5}, Lcom/app/Interface/MyMediaCodec;->access$2(Lcom/app/Interface/MyMediaCodec;[BI)I

    .line 292
    :cond_8
    iget-object v3, p0, Lcom/app/Interface/MyMediaCodec$decodeThread;->this$0:Lcom/app/Interface/MyMediaCodec;

    iget-object v4, v2, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->mDataBuf:[B

    iget v5, v2, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->mBufLen:I

    sub-int/2addr v5, v1

    iget v6, v2, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->mFrameType:I

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/app/Interface/MyMediaCodec;->inputFrame([BIII)V

    goto :goto_2

    .line 301
    .end local v1    # "index":I
    :catch_1
    move-exception v0

    .line 303
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method
