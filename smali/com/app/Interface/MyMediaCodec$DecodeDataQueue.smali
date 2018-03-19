.class public Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;
.super Ljava/lang/Object;
.source "MyMediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/Interface/MyMediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecodeDataQueue"
.end annotation


# instance fields
.field public mBufLen:I

.field public mDataBuf:[B

.field public mFrameNo:I

.field public mFrameType:I

.field public mStreamType:I

.field public mVideoHeight:I

.field public mVideoWidth:I

.field final synthetic this$0:Lcom/app/Interface/MyMediaCodec;


# direct methods
.method public constructor <init>(Lcom/app/Interface/MyMediaCodec;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/app/Interface/MyMediaCodec$DecodeDataQueue;->this$0:Lcom/app/Interface/MyMediaCodec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
