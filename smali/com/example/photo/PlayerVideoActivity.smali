.class public Lcom/example/photo/PlayerVideoActivity;
.super Landroid/app/Activity;
.source "PlayerVideoActivity.java"


# instance fields
.field private mController:Landroid/widget/MediaController;

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

.field private mPath:Ljava/lang/String;

.field private mPlayIndex:I

.field private vv_video:Lcom/example/photo/FSVideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/example/photo/PlayerVideoActivity;->mDirList:Ljava/util/LinkedList;

    .line 18
    return-void
.end method

.method private CheckCurIndex(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    iget-object v1, p0, Lcom/example/photo/PlayerVideoActivity;->mDirList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 107
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/example/photo/PlayerVideoActivity;->mDirList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iput v0, p0, Lcom/example/photo/PlayerVideoActivity;->mPlayIndex:I

    .line 100
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private PlayVideo(I)V
    .locals 3
    .param p1, "set"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/example/photo/PlayerVideoActivity;->mDirList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 69
    iget v0, p0, Lcom/example/photo/PlayerVideoActivity;->mPlayIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/example/photo/PlayerVideoActivity;->mPlayIndex:I

    .line 70
    iget v0, p0, Lcom/example/photo/PlayerVideoActivity;->mPlayIndex:I

    iget-object v1, p0, Lcom/example/photo/PlayerVideoActivity;->mDirList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/photo/PlayerVideoActivity;->mPlayIndex:I

    .line 74
    :cond_0
    iget v0, p0, Lcom/example/photo/PlayerVideoActivity;->mPlayIndex:I

    if-gez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/example/photo/PlayerVideoActivity;->mDirList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/example/photo/PlayerVideoActivity;->mPlayIndex:I

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/example/photo/PlayerVideoActivity;->vv_video:Lcom/example/photo/FSVideoView;

    iget-object v0, p0, Lcom/example/photo/PlayerVideoActivity;->mDirList:Ljava/util/LinkedList;

    iget v2, p0, Lcom/example/photo/PlayerVideoActivity;->mPlayIndex:I

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/example/photo/FSVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/example/photo/PlayerVideoActivity;->vv_video:Lcom/example/photo/FSVideoView;

    invoke-virtual {v0}, Lcom/example/photo/FSVideoView;->start()V

    .line 81
    :cond_2
    return-void
.end method

.method private ScanVideoFiles()V
    .locals 6

    .prologue
    .line 84
    sget-object v0, Lmacrochip/app/newpl1200/SysApp;->SAVE_PATH:Ljava/lang/String;

    .line 85
    .local v0, "FILEPATH":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 89
    .local v2, "files":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_0
    array-length v4, v2

    if-lt v3, v4, :cond_1

    .line 97
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "ii":I
    :cond_0
    return-void

    .line 91
    .restart local v2    # "files":[Ljava/io/File;
    .restart local v3    # "ii":I
    :cond_1
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".avi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    iget-object v4, p0, Lcom/example/photo/PlayerVideoActivity;->mDirList:Ljava/util/LinkedList;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/example/photo/PlayerVideoActivity;I)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/example/photo/PlayerVideoActivity;->PlayVideo(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 28
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/example/photo/PlayerVideoActivity;->requestWindowFeature(I)Z

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/example/photo/PlayerVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 31
    invoke-virtual {p0}, Lcom/example/photo/PlayerVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 32
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/example/photo/PlayerVideoActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/example/photo/PlayerVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/example/photo/PlayerVideoActivity;->mPath:Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Lcom/example/photo/PlayerVideoActivity;->ScanVideoFiles()V

    .line 35
    iget-object v1, p0, Lcom/example/photo/PlayerVideoActivity;->mPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/example/photo/PlayerVideoActivity;->CheckCurIndex(Ljava/lang/String;)V

    .line 36
    const v1, 0x7f0b000f

    invoke-virtual {p0, v1}, Lcom/example/photo/PlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/example/photo/FSVideoView;

    iput-object v1, p0, Lcom/example/photo/PlayerVideoActivity;->vv_video:Lcom/example/photo/FSVideoView;

    .line 38
    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/example/photo/PlayerVideoActivity;->mController:Landroid/widget/MediaController;

    .line 39
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/example/photo/PlayerVideoActivity;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/example/photo/PlayerVideoActivity;->vv_video:Lcom/example/photo/FSVideoView;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/photo/FSVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/example/photo/PlayerVideoActivity;->vv_video:Lcom/example/photo/FSVideoView;

    iget-object v2, p0, Lcom/example/photo/PlayerVideoActivity;->mController:Landroid/widget/MediaController;

    invoke-virtual {v1, v2}, Lcom/example/photo/FSVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 46
    iget-object v1, p0, Lcom/example/photo/PlayerVideoActivity;->mController:Landroid/widget/MediaController;

    iget-object v2, p0, Lcom/example/photo/PlayerVideoActivity;->vv_video:Lcom/example/photo/FSVideoView;

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 48
    iget-object v1, p0, Lcom/example/photo/PlayerVideoActivity;->mController:Landroid/widget/MediaController;

    new-instance v2, Lcom/example/photo/PlayerVideoActivity$1;

    invoke-direct {v2, p0}, Lcom/example/photo/PlayerVideoActivity$1;-><init>(Lcom/example/photo/PlayerVideoActivity;)V

    .line 54
    new-instance v3, Lcom/example/photo/PlayerVideoActivity$2;

    invoke-direct {v3, p0}, Lcom/example/photo/PlayerVideoActivity$2;-><init>(Lcom/example/photo/PlayerVideoActivity;)V

    .line 48
    invoke-virtual {v1, v2, v3}, Landroid/widget/MediaController;->setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v1, p0, Lcom/example/photo/PlayerVideoActivity;->vv_video:Lcom/example/photo/FSVideoView;

    invoke-virtual {v1}, Lcom/example/photo/FSVideoView;->start()V

    .line 64
    :cond_0
    return-void
.end method
