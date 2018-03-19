.class public Lcom/app/Interface/MyMediaCodec$YUVData;
.super Ljava/lang/Object;
.source "MyMediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/Interface/MyMediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "YUVData"
.end annotation


# instance fields
.field public dataU:[B

.field public dataV:[B

.field public dataY:[B

.field public dataYUV:[B

.field public dataYV12:[B

.field final synthetic this$0:Lcom/app/Interface/MyMediaCodec;


# direct methods
.method public constructor <init>(Lcom/app/Interface/MyMediaCodec;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/app/Interface/MyMediaCodec$YUVData;->this$0:Lcom/app/Interface/MyMediaCodec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
