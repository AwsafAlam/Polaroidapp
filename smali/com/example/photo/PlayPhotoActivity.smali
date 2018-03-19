.class public Lcom/example/photo/PlayPhotoActivity;
.super Landroid/app/Activity;
.source "PlayPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/photo/PlayPhotoActivity$PhotosGalleryAdapter;
    }
.end annotation


# static fields
.field public static SCREEN_HEIGHT:I

.field public static SCREEN_WIDTH:I


# instance fields
.field private mAdapter:Lcom/example/photo/PlayPhotoActivity$PhotosGalleryAdapter;

.field private mCurrentItem:I

.field mDirList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mGallery:Lcom/example/photo/PhotosGallery;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/example/photo/PlayPhotoActivity;->mDirList:Ljava/util/LinkedList;

    .line 25
    return-void
.end method

.method private CheckCurIndex(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    iget-object v1, p0, Lcom/example/photo/PlayPhotoActivity;->mDirList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 76
    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/example/photo/PlayPhotoActivity;->mDirList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iput v0, p0, Lcom/example/photo/PlayPhotoActivity;->mCurrentItem:I

    .line 69
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ScanPhotoFiles()V
    .locals 7

    .prologue
    .line 52
    sget-object v0, Lmacrochip/app/newpl1200/SysApp;->SAVE_PATH:Ljava/lang/String;

    .line 53
    .local v0, "FILEPATH":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 57
    .local v2, "files":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_0
    array-length v5, v2

    if-lt v3, v5, :cond_1

    .line 66
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "ii":I
    :cond_0
    return-void

    .line 59
    .restart local v2    # "files":[Ljava/io/File;
    .restart local v3    # "ii":I
    :cond_1
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "name":Ljava/lang/String;
    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ".bmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 62
    :cond_2
    iget-object v5, p0, Lcom/example/photo/PlayPhotoActivity;->mDirList:Ljava/util/LinkedList;

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/example/photo/PlayPhotoActivity;Landroid/graphics/Bitmap;)F
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/example/photo/PlayPhotoActivity;->getScale(Landroid/graphics/Bitmap;)F

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/example/photo/PlayPhotoActivity;I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/example/photo/PlayPhotoActivity;->mCurrentItem:I

    return-void
.end method

.method private findViewById()V
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/example/photo/PlayPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/example/photo/PhotosGallery;

    iput-object v0, p0, Lcom/example/photo/PlayPhotoActivity;->mGallery:Lcom/example/photo/PhotosGallery;

    .line 79
    return-void
.end method

.method private getScale(Landroid/graphics/Bitmap;)F
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 156
    sget v2, Lcom/example/photo/PlayPhotoActivity;->SCREEN_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 157
    .local v1, "scaleWidth":F
    sget v2, Lcom/example/photo/PlayPhotoActivity;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 158
    .local v0, "scaleHeight":F
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    new-instance v0, Lcom/example/photo/PlayPhotoActivity$PhotosGalleryAdapter;

    invoke-direct {v0, p0, p0}, Lcom/example/photo/PlayPhotoActivity$PhotosGalleryAdapter;-><init>(Lcom/example/photo/PlayPhotoActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/photo/PlayPhotoActivity;->mAdapter:Lcom/example/photo/PlayPhotoActivity$PhotosGalleryAdapter;

    .line 103
    iget-object v0, p0, Lcom/example/photo/PlayPhotoActivity;->mGallery:Lcom/example/photo/PhotosGallery;

    invoke-virtual {v0, v1}, Lcom/example/photo/PhotosGallery;->setHorizontalFadingEdgeEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/example/photo/PlayPhotoActivity;->mGallery:Lcom/example/photo/PhotosGallery;

    invoke-virtual {v0, v1}, Lcom/example/photo/PhotosGallery;->setVerticalFadingEdgeEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/example/photo/PlayPhotoActivity;->mGallery:Lcom/example/photo/PhotosGallery;

    iget-object v1, p0, Lcom/example/photo/PlayPhotoActivity;->mAdapter:Lcom/example/photo/PlayPhotoActivity$PhotosGalleryAdapter;

    invoke-virtual {v0, v1}, Lcom/example/photo/PhotosGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 106
    iget-object v0, p0, Lcom/example/photo/PlayPhotoActivity;->mGallery:Lcom/example/photo/PhotosGallery;

    iget v1, p0, Lcom/example/photo/PlayPhotoActivity;->mCurrentItem:I

    invoke-virtual {v0, v1}, Lcom/example/photo/PhotosGallery;->setSelection(I)V

    .line 107
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/example/photo/PlayPhotoActivity;->mGallery:Lcom/example/photo/PhotosGallery;

    new-instance v1, Lcom/example/photo/PlayPhotoActivity$1;

    invoke-direct {v1, p0}, Lcom/example/photo/PlayPhotoActivity$1;-><init>(Lcom/example/photo/PlayPhotoActivity;)V

    invoke-virtual {v0, v1}, Lcom/example/photo/PhotosGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/example/photo/PlayPhotoActivity;->mGallery:Lcom/example/photo/PhotosGallery;

    new-instance v1, Lcom/example/photo/PlayPhotoActivity$2;

    invoke-direct {v1, p0}, Lcom/example/photo/PlayPhotoActivity$2;-><init>(Lcom/example/photo/PlayPhotoActivity;)V

    invoke-virtual {v0, v1}, Lcom/example/photo/PhotosGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 35
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/example/photo/PlayPhotoActivity;->requestWindowFeature(I)Z

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/example/photo/PlayPhotoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 38
    invoke-virtual {p0}, Lcom/example/photo/PlayPhotoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 39
    invoke-virtual {p0}, Lcom/example/photo/PlayPhotoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 40
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Lcom/example/photo/PlayPhotoActivity;->SCREEN_WIDTH:I

    .line 41
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    sput v1, Lcom/example/photo/PlayPhotoActivity;->SCREEN_HEIGHT:I

    .line 42
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/example/photo/PlayPhotoActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/example/photo/PlayPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/example/photo/PlayPhotoActivity;->mPath:Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lcom/example/photo/PlayPhotoActivity;->ScanPhotoFiles()V

    .line 45
    iget-object v1, p0, Lcom/example/photo/PlayPhotoActivity;->mPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/example/photo/PlayPhotoActivity;->CheckCurIndex(Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lcom/example/photo/PlayPhotoActivity;->findViewById()V

    .line 47
    invoke-direct {p0}, Lcom/example/photo/PlayPhotoActivity;->setListener()V

    .line 48
    invoke-direct {p0}, Lcom/example/photo/PlayPhotoActivity;->init()V

    .line 49
    return-void
.end method
