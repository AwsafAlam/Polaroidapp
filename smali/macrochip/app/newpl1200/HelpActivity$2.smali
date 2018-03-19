.class Lmacrochip/app/newpl1200/HelpActivity$2;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmacrochip/app/newpl1200/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmacrochip/app/newpl1200/HelpActivity;


# direct methods
.method constructor <init>(Lmacrochip/app/newpl1200/HelpActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 68
    move-object/from16 v0, p0

    iget-object v2, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    invoke-virtual {v2}, Lmacrochip/app/newpl1200/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    .line 69
    .local v15, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v0, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 71
    .local v16, "displayWidth":I
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 72
    .local v18, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v18

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 73
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 74
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 75
    move-object/from16 v0, p0

    iget-object v2, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    invoke-virtual {v2}, Lmacrochip/app/newpl1200/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v17

    .line 76
    .local v17, "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lmacrochip/app/newpl1200/HelpActivity;->access$0(Lmacrochip/app/newpl1200/HelpActivity;Landroid/graphics/Bitmap;)V

    .line 77
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 78
    .local v7, "matrixBall":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    invoke-static {v2}, Lmacrochip/app/newpl1200/HelpActivity;->access$1(Lmacrochip/app/newpl1200/HelpActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 80
    .local v20, "w":I
    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v3, v0

    div-float v19, v2, v3

    .line 82
    .local v19, "scaleWidth":F
    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v2, v2, v19

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v3, v3, v19

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 83
    move-object/from16 v0, p0

    iget-object v9, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    invoke-static {v2}, Lmacrochip/app/newpl1200/HelpActivity;->access$1(Lmacrochip/app/newpl1200/HelpActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    invoke-static {v5}, Lmacrochip/app/newpl1200/HelpActivity;->access$1(Lmacrochip/app/newpl1200/HelpActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 84
    move-object/from16 v0, p0

    iget-object v6, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    invoke-static {v6}, Lmacrochip/app/newpl1200/HelpActivity;->access$1(Lmacrochip/app/newpl1200/HelpActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    .line 83
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v9, v2}, Lmacrochip/app/newpl1200/HelpActivity;->access$0(Lmacrochip/app/newpl1200/HelpActivity;Landroid/graphics/Bitmap;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    invoke-static {v3}, Lmacrochip/app/newpl1200/HelpActivity;->access$1(Lmacrochip/app/newpl1200/HelpActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v2, Lmacrochip/app/newpl1200/HelpActivity;->globalWidth:I

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    invoke-static {v3}, Lmacrochip/app/newpl1200/HelpActivity;->access$1(Lmacrochip/app/newpl1200/HelpActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v2, Lmacrochip/app/newpl1200/HelpActivity;->globalHeight:I

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    iget v2, v2, Lmacrochip/app/newpl1200/HelpActivity;->globalHeight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    invoke-static {v3}, Lmacrochip/app/newpl1200/HelpActivity;->access$2(Lmacrochip/app/newpl1200/HelpActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    invoke-static {v3}, Lmacrochip/app/newpl1200/HelpActivity;->access$1(Lmacrochip/app/newpl1200/HelpActivity;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 89
    move-object/from16 v0, p0

    iget-object v3, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    invoke-static {v3}, Lmacrochip/app/newpl1200/HelpActivity;->access$1(Lmacrochip/app/newpl1200/HelpActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    invoke-static {v3}, Lmacrochip/app/newpl1200/HelpActivity;->access$2(Lmacrochip/app/newpl1200/HelpActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 88
    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lmacrochip/app/newpl1200/HelpActivity;->access$3(Lmacrochip/app/newpl1200/HelpActivity;Landroid/graphics/Bitmap;)V

    .line 94
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    iget-object v2, v2, Lmacrochip/app/newpl1200/HelpActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    iget-object v3, v3, Lmacrochip/app/newpl1200/HelpActivity;->mSetBitmap:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void

    .line 91
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    invoke-static {v3}, Lmacrochip/app/newpl1200/HelpActivity;->access$1(Lmacrochip/app/newpl1200/HelpActivity;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 92
    move-object/from16 v0, p0

    iget-object v3, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    invoke-static {v3}, Lmacrochip/app/newpl1200/HelpActivity;->access$1(Lmacrochip/app/newpl1200/HelpActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lmacrochip/app/newpl1200/HelpActivity$2;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    iget v12, v3, Lmacrochip/app/newpl1200/HelpActivity;->globalHeight:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 91
    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lmacrochip/app/newpl1200/HelpActivity;->access$3(Lmacrochip/app/newpl1200/HelpActivity;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
