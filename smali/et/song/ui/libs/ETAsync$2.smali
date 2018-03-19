.class Let/song/ui/libs/ETAsync$2;
.super Ljava/lang/Thread;
.source "ETAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Let/song/ui/libs/ETAsync;->loadDrawable(Ljava/io/InputStream;Ljava/lang/String;Let/song/ui/libs/ETAsync$ImageCallback;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Let/song/ui/libs/ETAsync;


# direct methods
.method constructor <init>(Let/song/ui/libs/ETAsync;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Let/song/ui/libs/ETAsync$2;->this$0:Let/song/ui/libs/ETAsync;

    .line 43
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 48
    :try_start_0
    iget-object v4, p0, Let/song/ui/libs/ETAsync$2;->this$0:Let/song/ui/libs/ETAsync;

    invoke-static {v4}, Let/song/ui/libs/ETAsync;->access$1(Let/song/ui/libs/ETAsync;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Let/song/ui/libs/ETAsync;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 49
    .local v1, "data":[B
    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v4, p0, Let/song/ui/libs/ETAsync$2;->this$0:Let/song/ui/libs/ETAsync;

    invoke-static {v4}, Let/song/ui/libs/ETAsync;->access$2(Let/song/ui/libs/ETAsync;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Let/song/ui/libs/ETAsync$2;->this$0:Let/song/ui/libs/ETAsync;

    invoke-static {v5}, Let/song/ui/libs/ETAsync;->access$3(Let/song/ui/libs/ETAsync;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v4, Let/song/ui/libs/ETAsync;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 52
    .local v3, "message":Landroid/os/Message;
    sget-object v4, Let/song/ui/libs/ETAsync;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "data":[B
    .end local v3    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
