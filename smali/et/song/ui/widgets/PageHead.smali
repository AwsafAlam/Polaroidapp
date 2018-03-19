.class public Let/song/ui/widgets/PageHead;
.super Landroid/widget/RelativeLayout;
.source "PageHead.java"


# instance fields
.field public LeftBnt:Landroid/widget/ImageView;

.field public RightBnt:Landroid/widget/ImageView;

.field public TitleView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Let/song/ui/widgets/PageHead;->InitView()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object p1, p0, Let/song/ui/widgets/PageHead;->mContext:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Let/song/ui/widgets/PageHead;->InitView()V

    .line 27
    return-void
.end method

.method private InitView()V
    .locals 4

    .prologue
    .line 30
    iget-object v2, p0, Let/song/ui/widgets/PageHead;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 31
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03002d

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 32
    .local v1, "layout":Landroid/view/View;
    const v2, 0x7f0b00c7

    invoke-virtual {p0, v2}, Let/song/ui/widgets/PageHead;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Let/song/ui/widgets/PageHead;->LeftBnt:Landroid/widget/ImageView;

    .line 33
    const v2, 0x7f0b00c9

    invoke-virtual {p0, v2}, Let/song/ui/widgets/PageHead;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Let/song/ui/widgets/PageHead;->RightBnt:Landroid/widget/ImageView;

    .line 34
    const v2, 0x7f0b00c8

    invoke-virtual {p0, v2}, Let/song/ui/widgets/PageHead;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Let/song/ui/widgets/PageHead;->TitleView:Landroid/widget/TextView;

    .line 35
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Let/song/ui/widgets/PageHead;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Let/song/ui/widgets/PageHead;->title:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Let/song/ui/widgets/PageHead;->TitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method
