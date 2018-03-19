.class public Let/song/ui/libs/ETAsync;
.super Ljava/lang/Object;
.source "ETAsync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Let/song/ui/libs/ETAsync$ImageCallback;
    }
.end annotation


# static fields
.field private static mCallBack:Let/song/ui/libs/ETAsync$ImageCallback;

.field static final mHandler:Landroid/os/Handler;


# instance fields
.field private imageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputStream:Ljava/io/InputStream;

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Let/song/ui/libs/ETAsync$1;

    invoke-direct {v0}, Let/song/ui/libs/ETAsync$1;-><init>()V

    sput-object v0, Let/song/ui/libs/ETAsync;->mHandler:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    sput-object v0, Let/song/ui/libs/ETAsync;->mCallBack:Let/song/ui/libs/ETAsync$ImageCallback;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Let/song/ui/libs/ETAsync;->imageCache:Ljava/util/HashMap;

    .line 29
    return-void
.end method

.method static synthetic access$0()Let/song/ui/libs/ETAsync$ImageCallback;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Let/song/ui/libs/ETAsync;->mCallBack:Let/song/ui/libs/ETAsync$ImageCallback;

    return-object v0
.end method

.method static synthetic access$1(Let/song/ui/libs/ETAsync;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Let/song/ui/libs/ETAsync;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$2(Let/song/ui/libs/ETAsync;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Let/song/ui/libs/ETAsync;->imageCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3(Let/song/ui/libs/ETAsync;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Let/song/ui/libs/ETAsync;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public static readInputStream(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 66
    .local v1, "buffer":[B
    const/4 v3, -0x1

    .line 67
    .local v3, "length":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 71
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 72
    .local v2, "data":[B
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 73
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 74
    return-object v2

    .line 68
    .end local v2    # "data":[B
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public loadDrawable(Ljava/io/InputStream;Ljava/lang/String;Let/song/ui/libs/ETAsync$ImageCallback;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "imageCallback"    # Let/song/ui/libs/ETAsync$ImageCallback;

    .prologue
    .line 33
    sput-object p3, Let/song/ui/libs/ETAsync;->mCallBack:Let/song/ui/libs/ETAsync$ImageCallback;

    .line 34
    iput-object p1, p0, Let/song/ui/libs/ETAsync;->mInputStream:Ljava/io/InputStream;

    .line 35
    iput-object p2, p0, Let/song/ui/libs/ETAsync;->mTag:Ljava/lang/String;

    .line 36
    iget-object v2, p0, Let/song/ui/libs/ETAsync;->imageCache:Ljava/util/HashMap;

    iget-object v3, p0, Let/song/ui/libs/ETAsync;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Let/song/ui/libs/ETAsync;->imageCache:Ljava/util/HashMap;

    iget-object v3, p0, Let/song/ui/libs/ETAsync;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 38
    .local v1, "softReference":Ljava/lang/ref/SoftReference;
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 39
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 60
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "softReference":Ljava/lang/ref/SoftReference;
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v2, Let/song/ui/libs/ETAsync$2;

    invoke-direct {v2, p0}, Let/song/ui/libs/ETAsync$2;-><init>(Let/song/ui/libs/ETAsync;)V

    .line 59
    invoke-virtual {v2}, Let/song/ui/libs/ETAsync$2;->start()V

    .line 60
    const/4 v0, 0x0

    goto :goto_0
.end method
