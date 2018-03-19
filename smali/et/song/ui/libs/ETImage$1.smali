.class Let/song/ui/libs/ETImage$1;
.super Ljava/lang/Object;
.source "ETImage.java"

# interfaces
.implements Let/song/ui/libs/ETAsync$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Let/song/ui/libs/ETImage;->getNetImageThumbnail(Ljava/io/InputStream;Landroid/widget/ImageView;II)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$height:I

.field private final synthetic val$view:Landroid/widget/ImageView;

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(IILandroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Let/song/ui/libs/ETImage$1;->val$width:I

    iput p2, p0, Let/song/ui/libs/ETImage$1;->val$height:I

    iput-object p3, p0, Let/song/ui/libs/ETImage$1;->val$view:Landroid/widget/ImageView;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    const/4 v5, 0x0

    .line 97
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 98
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 99
    array-length v2, p1

    invoke-static {p1, v5, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 101
    const/4 v2, -0x1

    iget v3, p0, Let/song/ui/libs/ETImage$1;->val$width:I

    iget v4, p0, Let/song/ui/libs/ETImage$1;->val$height:I

    mul-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Let/song/ui/libs/ETImage;->access$0(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 102
    array-length v2, p1

    invoke-static {p1, v5, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    iget v2, p0, Let/song/ui/libs/ETImage$1;->val$width:I

    iget v3, p0, Let/song/ui/libs/ETImage$1;->val$height:I

    .line 104
    const/4 v4, 0x2

    .line 103
    invoke-static {v0, v2, v3, v4}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    iget-object v2, p0, Let/song/ui/libs/ETImage$1;->val$view:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Let/song/ui/libs/ETImage$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    :cond_0
    return-void
.end method
