.class Lcom/app/Interface/MyMediaCodec$1;
.super Ljava/lang/Object;
.source "MyMediaCodec.java"

# interfaces
.implements Lcom/fh/lib/Define$StreamDataCallBackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/Interface/MyMediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/Interface/MyMediaCodec;


# direct methods
.method constructor <init>(Lcom/app/Interface/MyMediaCodec;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/Interface/MyMediaCodec$1;->this$0:Lcom/app/Interface/MyMediaCodec;

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public StreamDataCallBack(IILcom/fh/lib/Define$FrameHead;[BI)V
    .locals 5
    .param p1, "playHandle"    # I
    .param p2, "streamType"    # I
    .param p3, "frameHead"    # Lcom/fh/lib/Define$FrameHead;
    .param p4, "buf"    # [B
    .param p5, "dataLen"    # I

    .prologue
    .line 521
    iget-object v2, p0, Lcom/app/Interface/MyMediaCodec$1;->this$0:Lcom/app/Interface/MyMediaCodec;

    iget v3, p3, Lcom/fh/lib/Define$FrameHead;->width:I

    iput v3, v2, Lcom/app/Interface/MyMediaCodec;->mVideoWidth:I

    .line 522
    iget-object v2, p0, Lcom/app/Interface/MyMediaCodec$1;->this$0:Lcom/app/Interface/MyMediaCodec;

    iget v3, p3, Lcom/fh/lib/Define$FrameHead;->height:I

    iput v3, v2, Lcom/app/Interface/MyMediaCodec;->mVideoHeight:I

    .line 524
    new-instance v1, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;

    iget-object v2, p0, Lcom/app/Interface/MyMediaCodec$1;->this$0:Lcom/app/Interface/MyMediaCodec;

    invoke-direct {v1, v2}, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;-><init>(Lcom/app/Interface/MyMediaCodec;)V

    .line 525
    .local v1, "q":Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;
    iput-object p4, v1, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->mDataBuf:[B

    .line 526
    iget-object v2, p0, Lcom/app/Interface/MyMediaCodec$1;->this$0:Lcom/app/Interface/MyMediaCodec;

    invoke-static {v2}, Lcom/app/Interface/MyMediaCodec;->access$0(Lcom/app/Interface/MyMediaCodec;)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v4}, Lcom/app/Interface/MyMediaCodec;->access$1(Lcom/app/Interface/MyMediaCodec;I)V

    iput v3, v1, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->mFrameNo:I

    .line 527
    iput p5, v1, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->mBufLen:I

    .line 528
    iget v2, p3, Lcom/fh/lib/Define$FrameHead;->frameType:I

    iput v2, v1, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->mFrameType:I

    .line 529
    iget v2, p3, Lcom/fh/lib/Define$FrameHead;->width:I

    iput v2, v1, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->mVideoWidth:I

    .line 530
    iget v2, p3, Lcom/fh/lib/Define$FrameHead;->height:I

    iput v2, v1, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->mVideoHeight:I

    .line 532
    :try_start_0
    iget-object v2, p0, Lcom/app/Interface/MyMediaCodec$1;->this$0:Lcom/app/Interface/MyMediaCodec;

    iget-object v2, v2, Lcom/app/Interface/MyMediaCodec;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_0
    return-void

    .line 533
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
