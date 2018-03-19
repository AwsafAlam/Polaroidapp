.class Let/song/ui/widgets/ETTBTrim$2;
.super Ljava/lang/Object;
.source "ETTBTrim.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Let/song/ui/widgets/ETTBTrim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Let/song/ui/widgets/ETTBTrim;


# direct methods
.method constructor <init>(Let/song/ui/widgets/ETTBTrim;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Let/song/ui/widgets/ETTBTrim$2;->this$0:Let/song/ui/widgets/ETTBTrim;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Let/song/ui/widgets/ETTBTrim$2;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTBTrim;->access$1(Let/song/ui/widgets/ETTBTrim;)I

    move-result v0

    iget-object v1, p0, Let/song/ui/widgets/ETTBTrim$2;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v1}, Let/song/ui/widgets/ETTBTrim;->access$2(Let/song/ui/widgets/ETTBTrim;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Let/song/ui/widgets/ETTBTrim$2;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTBTrim;->access$1(Let/song/ui/widgets/ETTBTrim;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Let/song/ui/widgets/ETTBTrim;->access$3(Let/song/ui/widgets/ETTBTrim;I)V

    .line 92
    iget-object v0, p0, Let/song/ui/widgets/ETTBTrim$2;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTBTrim;->access$4(Let/song/ui/widgets/ETTBTrim;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/ETTBTrim$2;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v1}, Let/song/ui/widgets/ETTBTrim;->access$4(Let/song/ui/widgets/ETTBTrim;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    iget-object v2, p0, Let/song/ui/widgets/ETTBTrim$2;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v2}, Let/song/ui/widgets/ETTBTrim;->access$5(Let/song/ui/widgets/ETTBTrim;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 95
    :cond_0
    iget-object v0, p0, Let/song/ui/widgets/ETTBTrim$2;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTBTrim;->access$9(Let/song/ui/widgets/ETTBTrim;)Let/song/ui/widgets/ETTBTrim$OnClickListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Let/song/ui/widgets/ETTBTrim$2;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTBTrim;->access$9(Let/song/ui/widgets/ETTBTrim;)Let/song/ui/widgets/ETTBTrim$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/ETTBTrim$2;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v1}, Let/song/ui/widgets/ETTBTrim;->access$1(Let/song/ui/widgets/ETTBTrim;)I

    move-result v1

    invoke-interface {v0, v1}, Let/song/ui/widgets/ETTBTrim$OnClickListener;->leftClick(I)V

    goto :goto_0
.end method
