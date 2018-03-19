.class public Lmacrochip/app/newpl1200/SnapshotActivity;
.super Landroid/app/Activity;
.source "SnapshotActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ResourceAsColor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;,
        Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;
    }
.end annotation


# instance fields
.field private btn_back:Landroid/widget/ImageView;

.field private isPicPage:Z

.field public mContext:Landroid/content/Context;

.field private mSnapShotList:Landroid/widget/ListView;

.field private mSnapshotAdapter:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

.field private mSnapshotData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTabIds:[I

.field mTabImage:[I

.field mTabImage1:[I

.field mTabPages:[Landroid/view/View;

.field mTabTitle:[I

.field private mTabhostView:Landroid/widget/TabHost;

.field private mVideoAdapter:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

.field private mVideoData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoList:Landroid/widget/ListView;

.field private moreCfgObj:Lmacrochip/app/newpl1200/MoreCfg;

.field private tvDelete:Landroid/widget/TextView;

.field tvDeleteClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabPages:[Landroid/view/View;

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabTitle:[I

    .line 58
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabIds:[I

    .line 59
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabImage:[I

    .line 60
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabImage1:[I

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mSnapshotData:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mVideoData:Ljava/util/List;

    .line 67
    new-instance v0, Lmacrochip/app/newpl1200/MoreCfg;

    invoke-direct {v0}, Lmacrochip/app/newpl1200/MoreCfg;-><init>()V

    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->moreCfgObj:Lmacrochip/app/newpl1200/MoreCfg;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->isPicPage:Z

    .line 183
    new-instance v0, Lmacrochip/app/newpl1200/SnapshotActivity$1;

    invoke-direct {v0, p0}, Lmacrochip/app/newpl1200/SnapshotActivity$1;-><init>(Lmacrochip/app/newpl1200/SnapshotActivity;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->tvDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 54
    return-void

    .line 57
    :array_0
    .array-data 4
        0x7f08002e
        0x7f08002f
    .end array-data

    .line 58
    :array_1
    .array-data 4
        0x7f0b0011
        0x7f0b0013
    .end array-data

    .line 59
    :array_2
    .array-data 4
        0x7f02002c
        0x7f02003e
    .end array-data

    .line 60
    :array_3
    .array-data 4
        0x7f02002d
        0x7f02003f
    .end array-data
.end method

.method private DeleteFile(Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;)V
    .locals 3
    .param p1, "file"    # Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;

    .prologue
    .line 361
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->Path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 365
    iget v1, p1, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->Type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 367
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mSnapshotData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 368
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mSnapshotAdapter:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    invoke-virtual {v1}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->notifyDataSetChanged()V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget v1, p1, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->Type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 372
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mVideoData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 373
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mVideoAdapter:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    invoke-virtual {v1}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private ListItemClick(Ljava/lang/String;)V
    .locals 6
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 320
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "filename":Ljava/lang/String;
    const/4 v2, 0x0

    .line 322
    .local v2, "setIntent":Landroid/content/Intent;
    const-string v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".png"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".bmp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 324
    :cond_0
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "setIntent":Landroid/content/Intent;
    const-class v3, Lcom/example/photo/PlayPhotoActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    .restart local v2    # "setIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 355
    const-string v3, "path"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    invoke-virtual {p0, v2}, Lmacrochip/app/newpl1200/SnapshotActivity;->startActivity(Landroid/content/Intent;)V

    .line 358
    :cond_2
    return-void

    .line 326
    :cond_3
    const-string v3, ".mp4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, ".avi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 328
    :cond_4
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "setIntent":Landroid/content/Intent;
    const-class v3, Lcom/example/photo/PlayerVideoActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    .restart local v2    # "setIntent":Landroid/content/Intent;
    goto :goto_0

    .line 334
    :cond_5
    const-string v3, ".h264"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    const/4 v3, 0x3

    sput v3, Lcom/fh/lib/PlayInfo;->playType:I

    .line 337
    sput-object p1, Lcom/fh/lib/PlayInfo;->pbRecFilePath:Ljava/lang/String;

    .line 338
    const-string v3, "xx"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "path = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/fh/lib/PlayInfo;->pbRecFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    sget v3, Lcom/fh/lib/PlayInfo;->decodeType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 344
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lmacrochip/app/newpl1200/VideoPlayBySDL;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 345
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lmacrochip/app/newpl1200/SnapshotActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 349
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lmacrochip/app/newpl1200/VideoPlayByOpengl;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 350
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lmacrochip/app/newpl1200/SnapshotActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private RefreshListData()V
    .locals 8

    .prologue
    .line 299
    iget-object v4, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mSnapshotData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 300
    iget-object v4, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mVideoData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 301
    new-instance v0, Ljava/io/File;

    sget-object v4, Lmacrochip/app/newpl1200/SysApp;->SAVE_PATH:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 303
    .local v3, "subFile":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_0
    array-length v4, v3

    if-lt v2, v4, :cond_0

    .line 317
    return-void

    .line 305
    :cond_0
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 306
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "filename":Ljava/lang/String;
    const-string v4, ".mp4"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ".avi"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ".h264"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 309
    :cond_1
    iget-object v4, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mVideoData:Ljava/util/List;

    new-instance v5, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;

    aget-object v6, v3, v2

    const/4 v7, 0x2

    invoke-direct {v5, p0, v6, v7}, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;-><init>(Lmacrochip/app/newpl1200/SnapshotActivity;Ljava/io/File;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v1    # "filename":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    .restart local v1    # "filename":Ljava/lang/String;
    :cond_3
    const-string v4, ".jpg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, ".png"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, ".bmp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 313
    :cond_4
    iget-object v4, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mSnapshotData:Ljava/util/List;

    new-instance v5, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;

    aget-object v6, v3, v2

    const/4 v7, 0x1

    invoke-direct {v5, p0, v6, v7}, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;-><init>(Lmacrochip/app/newpl1200/SnapshotActivity;Ljava/io/File;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic access$0(Lmacrochip/app/newpl1200/SnapshotActivity;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lmacrochip/app/newpl1200/SnapshotActivity;->deleteData()V

    return-void
.end method

.method static synthetic access$1(Lmacrochip/app/newpl1200/SnapshotActivity;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->isPicPage:Z

    return v0
.end method

.method static synthetic access$10(Lmacrochip/app/newpl1200/SnapshotActivity;)Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabhostView:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$11(Lmacrochip/app/newpl1200/SnapshotActivity;Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->isPicPage:Z

    return-void
.end method

.method static synthetic access$2(Lmacrochip/app/newpl1200/SnapshotActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mSnapshotData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lmacrochip/app/newpl1200/SnapshotActivity;)Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mSnapshotAdapter:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lmacrochip/app/newpl1200/SnapshotActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mVideoData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lmacrochip/app/newpl1200/SnapshotActivity;)Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mVideoAdapter:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lmacrochip/app/newpl1200/SnapshotActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->tvDelete:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lmacrochip/app/newpl1200/SnapshotActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lmacrochip/app/newpl1200/SnapshotActivity;->ListItemClick(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lmacrochip/app/newpl1200/SnapshotActivity;Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;)V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lmacrochip/app/newpl1200/SnapshotActivity;->DeleteFile(Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;)V

    return-void
.end method

.method static synthetic access$9(Lmacrochip/app/newpl1200/SnapshotActivity;I)I
    .locals 1

    .prologue
    .line 591
    invoke-direct {p0, p1}, Lmacrochip/app/newpl1200/SnapshotActivity;->dp2px(I)I

    move-result v0

    return v0
.end method

.method private deleteData()V
    .locals 5

    .prologue
    .line 164
    new-instance v0, Ljava/io/File;

    sget-object v4, Lmacrochip/app/newpl1200/SysApp;->SAVE_PATH:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 166
    .local v3, "subFile":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_0
    array-length v4, v3

    if-lt v2, v4, :cond_0

    .line 181
    return-void

    .line 167
    :cond_0
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 168
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "filename":Ljava/lang/String;
    const-string v4, ".mp4"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ".avi"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ".h264"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 170
    :cond_1
    iget-boolean v4, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->isPicPage:Z

    if-nez v4, :cond_2

    .line 171
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 166
    .end local v1    # "filename":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .restart local v1    # "filename":Ljava/lang/String;
    :cond_3
    const-string v4, ".jpg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, ".png"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, ".bmp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    :cond_4
    iget-boolean v4, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->isPicPage:Z

    if-eqz v4, :cond_2

    .line 177
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private dp2px(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 592
    const/4 v0, 0x1

    int-to-float v1, p1

    .line 593
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/SnapshotActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 592
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0b00ca

    const/16 v2, 0x400

    .line 74
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmacrochip/app/newpl1200/SnapshotActivity;->requestWindowFeature(I)Z

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    iput-object p0, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {}, Lcom/app/util/MyApplication;->getInstance()Lcom/app/util/MyApplication;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/app/util/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 80
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/SnapshotActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 81
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/SnapshotActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 82
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lmacrochip/app/newpl1200/SnapshotActivity;->setContentView(I)V

    .line 83
    const v1, 0x7f0b0015

    invoke-virtual {p0, v1}, Lmacrochip/app/newpl1200/SnapshotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->tvDelete:Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->tvDelete:Landroid/widget/TextView;

    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->tvDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->tvDelete:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    const v1, 0x7f0b0002

    invoke-virtual {p0, v1}, Lmacrochip/app/newpl1200/SnapshotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->btn_back:Landroid/widget/ImageView;

    .line 87
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->btn_back:Landroid/widget/ImageView;

    new-instance v2, Lmacrochip/app/newpl1200/SnapshotActivity$2;

    invoke-direct {v2, p0}, Lmacrochip/app/newpl1200/SnapshotActivity$2;-><init>(Lmacrochip/app/newpl1200/SnapshotActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v1, 0x7f0b0010

    invoke-virtual {p0, v1}, Lmacrochip/app/newpl1200/SnapshotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    iput-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabhostView:Landroid/widget/TabHost;

    .line 108
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabhostView:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->setup()V

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabPages:[Landroid/view/View;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 126
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabhostView:Landroid/widget/TabHost;

    new-instance v2, Lmacrochip/app/newpl1200/SnapshotActivity$3;

    invoke-direct {v2, p0}, Lmacrochip/app/newpl1200/SnapshotActivity$3;-><init>(Lmacrochip/app/newpl1200/SnapshotActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 153
    const v1, 0x7f0b0012

    invoke-virtual {p0, v1}, Lmacrochip/app/newpl1200/SnapshotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mSnapShotList:Landroid/widget/ListView;

    .line 154
    const v1, 0x7f0b0014

    invoke-virtual {p0, v1}, Lmacrochip/app/newpl1200/SnapshotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mVideoList:Landroid/widget/ListView;

    .line 155
    invoke-direct {p0}, Lmacrochip/app/newpl1200/SnapshotActivity;->RefreshListData()V

    .line 156
    new-instance v1, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mSnapshotData:Ljava/util/List;

    invoke-direct {v1, p0, p0, v2}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;-><init>(Lmacrochip/app/newpl1200/SnapshotActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mSnapshotAdapter:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    .line 157
    new-instance v1, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mVideoData:Ljava/util/List;

    invoke-direct {v1, p0, p0, v2}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;-><init>(Lmacrochip/app/newpl1200/SnapshotActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mVideoAdapter:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    .line 158
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mSnapShotList:Landroid/widget/ListView;

    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mSnapshotAdapter:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mVideoList:Landroid/widget/ListView;

    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mVideoAdapter:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabPages:[Landroid/view/View;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 111
    const v3, 0x7f03002e

    const/4 v4, 0x0

    .line 110
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    .line 112
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabPages:[Landroid/view/View;

    aget-object v1, v1, v0

    const v2, 0x7f0b00cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 113
    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabTitle:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 114
    if-nez v0, :cond_1

    .line 115
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabPages:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 116
    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabImage1:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabPages:[Landroid/view/View;

    aget-object v1, v1, v0

    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 122
    :goto_1
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabhostView:Landroid/widget/TabHost;

    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabhostView:Landroid/widget/TabHost;

    .line 123
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/SnapshotActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabTitle:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 124
    iget-object v3, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabPages:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    iget-object v3, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabIds:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 122
    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 119
    :cond_1
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabPages:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 120
    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabImage:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 235
    if-ne p1, v4, :cond_4

    .line 236
    sget v2, Lcom/fh/lib/PlayInfo;->udpDevType:I

    if-eq v2, v4, :cond_0

    sget v2, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 238
    :cond_0
    sput v4, Lcom/fh/lib/PlayInfo;->playType:I

    .line 271
    :goto_0
    sget v2, Lcom/fh/lib/PlayInfo;->decodeType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 272
    sget v2, Lcom/fh/lib/PlayInfo;->decodeType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 274
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lmacrochip/app/newpl1200/VideoPlayBySDL;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lmacrochip/app/newpl1200/SnapshotActivity;->startActivity(Landroid/content/Intent;)V

    .line 282
    :goto_1
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/SnapshotActivity;->finish()V

    .line 294
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_2
    return v1

    .line 242
    :cond_2
    sput v1, Lcom/fh/lib/PlayInfo;->playType:I

    .line 243
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmacrochip/app/newpl1200/SysApp;->StartActive(Z)V

    goto :goto_0

    .line 279
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lmacrochip/app/newpl1200/VideoPlayByOpengl;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lmacrochip/app/newpl1200/SnapshotActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 285
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    const/16 v2, 0x52

    if-ne p1, v2, :cond_6

    .line 286
    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->tvDelete:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v3, v2, :cond_5

    .line 287
    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->tvDelete:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 289
    :cond_5
    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity;->tvDelete:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 294
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_2
.end method
