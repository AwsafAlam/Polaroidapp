.class public Lcom/example/photo/PlayPhotoActivity$PhotosGalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlayPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/photo/PlayPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhotosGalleryAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/example/photo/PlayPhotoActivity;


# direct methods
.method constructor <init>(Lcom/example/photo/PlayPhotoActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/example/photo/PlayPhotoActivity$PhotosGalleryAdapter;->this$0:Lcom/example/photo/PlayPhotoActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/example/photo/PlayPhotoActivity$PhotosGalleryAdapter;->mContext:Landroid/content/Context;

    .line 114
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/example/photo/PlayPhotoActivity$PhotosGalleryAdapter;->this$0:Lcom/example/photo/PlayPhotoActivity;

    iget-object v0, v0, Lcom/example/photo/PlayPhotoActivity;->mDirList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 125
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 129
    const/4 v5, 0x0

    .line 130
    .local v5, "view":Lcom/example/photo/PhotosImageView;
    if-nez p2, :cond_0

    .line 131
    new-instance v5, Lcom/example/photo/PhotosImageView;

    .end local v5    # "view":Lcom/example/photo/PhotosImageView;
    iget-object v7, p0, Lcom/example/photo/PlayPhotoActivity$PhotosGalleryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/example/photo/PhotosImageView;-><init>(Landroid/content/Context;)V

    .line 132
    .restart local v5    # "view":Lcom/example/photo/PhotosImageView;
    new-instance v7, Landroid/widget/Gallery$LayoutParams;

    sget v8, Lcom/example/photo/PlayPhotoActivity;->SCREEN_WIDTH:I

    sget v9, Lcom/example/photo/PlayPhotoActivity;->SCREEN_HEIGHT:I

    invoke-direct {v7, v8, v9}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Lcom/example/photo/PhotosImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    move-object p2, v5

    .line 137
    :goto_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 138
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x2

    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 139
    iget-object v7, p0, Lcom/example/photo/PlayPhotoActivity$PhotosGalleryAdapter;->this$0:Lcom/example/photo/PlayPhotoActivity;

    iget-object v7, v7, Lcom/example/photo/PlayPhotoActivity;->mDirList:Ljava/util/LinkedList;

    invoke-virtual {v7, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 151
    :goto_1
    return-object p2

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    move-object v5, p2

    .line 135
    check-cast v5, Lcom/example/photo/PhotosImageView;

    goto :goto_0

    .line 143
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    iget-object v7, p0, Lcom/example/photo/PlayPhotoActivity$PhotosGalleryAdapter;->this$0:Lcom/example/photo/PlayPhotoActivity;

    invoke-static {v7, v0}, Lcom/example/photo/PlayPhotoActivity;->access$0(Lcom/example/photo/PlayPhotoActivity;Landroid/graphics/Bitmap;)F

    move-result v4

    .line 144
    .local v4, "scale":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v2, v7

    .line 145
    .local v2, "bitmapWidth":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v1, v7

    .line 147
    .local v1, "bitmapHeight":I
    const/4 v7, 0x1

    invoke-static {v0, v2, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 148
    .local v6, "zoomBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5, v2}, Lcom/example/photo/PhotosImageView;->setImageWidth(I)V

    .line 149
    invoke-virtual {v5, v1}, Lcom/example/photo/PhotosImageView;->setImageHeight(I)V

    .line 150
    invoke-virtual {v5, v6}, Lcom/example/photo/PhotosImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
