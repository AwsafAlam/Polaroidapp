.class Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SnapshotActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public date:Landroid/widget/TextView;

.field public delIcon:Let/song/ui/widgets/ETButton;

.field public icon:Landroid/widget/ImageView;

.field public iconLayout:Landroid/widget/RelativeLayout;

.field public size:Landroid/widget/TextView;

.field final synthetic this$1:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 574
    iput-object p1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    const v0, 0x7f0b0048

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 575
    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 578
    const v0, 0x7f0b0049

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 577
    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 580
    const v0, 0x7f0b004a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 579
    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;->size:Landroid/widget/TextView;

    .line 582
    const v0, 0x7f0b0030

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 581
    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 584
    const v0, 0x7f0b004b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 583
    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;->iconLayout:Landroid/widget/RelativeLayout;

    .line 586
    const v0, 0x7f0b004c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Let/song/ui/widgets/ETButton;

    .line 585
    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$ViewHolder;->delIcon:Let/song/ui/widgets/ETButton;

    .line 587
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 588
    return-void
.end method
