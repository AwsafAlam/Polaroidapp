.class public Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;
.super Landroid/widget/BaseAdapter;
.source "SnapshotActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmacrochip/app/newpl1200/SnapshotActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mFileData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTSx:I

.field private mTSy:I

.field final synthetic this$0:Lmacrochip/app/newpl1200/SnapshotActivity;


# direct methods
.method public constructor <init>(Lmacrochip/app/newpl1200/SnapshotActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;>;"
    const/4 v1, 0x0

    .line 464
    iput-object p1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->mFileData:Ljava/util/List;

    .line 462
    iput v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->mTSx:I

    .line 463
    iput v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->mTSy:I

    .line 465
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 466
    iput-object p3, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->mFileData:Ljava/util/List;

    .line 467
    return-void
.end method

.method static synthetic access$1(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;I)V
    .locals 0

    .prologue
    .line 462
    iput p1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->mTSx:I

    return-void
.end method

.method static synthetic access$2(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;I)V
    .locals 0

    .prologue
    .line 463
    iput p1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->mTSy:I

    return-void
.end method

.method static synthetic access$3(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;)I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->mTSy:I

    return v0
.end method

.method static synthetic access$4(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;)I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->mTSx:I

    return v0
.end method

.method static synthetic access$5(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;)Lmacrochip/app/newpl1200/SnapshotActivity;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->mFileData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->getItem(I)Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 478
    iget-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->mFileData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 479
    iget-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->mFileData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;

    .line 481
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 474
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 485
    if-nez p2, :cond_0

    .line 486
    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    invoke-virtual {v2}, Lmacrochip/app/newpl1200/SnapshotActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 487
    const v3, 0x7f030016

    const/4 v4, 0x0

    .line 486
    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 488
    new-instance v2, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;

    invoke-direct {v2, p0, p2}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;-><init>(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;Landroid/view/View;)V

    .line 490
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;

    .line 491
    .local v0, "holder":Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->getItem(I)Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;

    move-result-object v1

    .line 492
    .local v1, "item":Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;
    iget-object v2, v0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v1, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v2, v0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;->date:Landroid/widget/TextView;

    iget-object v3, v1, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->DTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v2, v0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v1}, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->getSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v2, v1, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->Image:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 497
    iget-object v2, v0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    invoke-virtual {v3}, Lmacrochip/app/newpl1200/SnapshotActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 503
    :goto_0
    iget-object v2, v0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;->iconLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 504
    new-instance v2, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$1;

    invoke-direct {v2, p0, v1}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$1;-><init>(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    iget-object v2, v0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;->delIcon:Let/song/ui/widgets/ETButton;

    new-instance v3, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$2;

    invoke-direct {v3, p0, v1}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$2;-><init>(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;)V

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    new-instance v2, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;

    invoke-direct {v2, p0, v0}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$3;-><init>(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 565
    return-object p2

    .line 501
    :cond_1
    iget-object v2, v0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, v1, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->Image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
