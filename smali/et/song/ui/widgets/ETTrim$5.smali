.class Let/song/ui/widgets/ETTrim$5;
.super Ljava/lang/Object;
.source "ETTrim.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Let/song/ui/widgets/ETTrim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Let/song/ui/widgets/ETTrim;


# direct methods
.method constructor <init>(Let/song/ui/widgets/ETTrim;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Let/song/ui/widgets/ETTrim$5;->this$0:Let/song/ui/widgets/ETTrim;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Let/song/ui/widgets/ETTrim$5;->this$0:Let/song/ui/widgets/ETTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTrim;->access$1(Let/song/ui/widgets/ETTrim;)I

    move-result v0

    iget-object v1, p0, Let/song/ui/widgets/ETTrim$5;->this$0:Let/song/ui/widgets/ETTrim;

    invoke-static {v1}, Let/song/ui/widgets/ETTrim;->access$7(Let/song/ui/widgets/ETTrim;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Let/song/ui/widgets/ETTrim$5;->this$0:Let/song/ui/widgets/ETTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTrim;->access$1(Let/song/ui/widgets/ETTrim;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Let/song/ui/widgets/ETTrim;->access$3(Let/song/ui/widgets/ETTrim;I)V

    .line 136
    iget-object v0, p0, Let/song/ui/widgets/ETTrim$5;->this$0:Let/song/ui/widgets/ETTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTrim;->access$4(Let/song/ui/widgets/ETTrim;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/ETTrim$5;->this$0:Let/song/ui/widgets/ETTrim;

    invoke-static {v1}, Let/song/ui/widgets/ETTrim;->access$4(Let/song/ui/widgets/ETTrim;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    iget-object v2, p0, Let/song/ui/widgets/ETTrim$5;->this$0:Let/song/ui/widgets/ETTrim;

    invoke-static {v2}, Let/song/ui/widgets/ETTrim;->access$5(Let/song/ui/widgets/ETTrim;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 138
    :cond_0
    iget-object v0, p0, Let/song/ui/widgets/ETTrim$5;->this$0:Let/song/ui/widgets/ETTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTrim;->access$9(Let/song/ui/widgets/ETTrim;)Let/song/ui/widgets/ETTrim$OnClickListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Let/song/ui/widgets/ETTrim$5;->this$0:Let/song/ui/widgets/ETTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTrim;->access$9(Let/song/ui/widgets/ETTrim;)Let/song/ui/widgets/ETTrim$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/ETTrim$5;->this$0:Let/song/ui/widgets/ETTrim;

    invoke-static {v1}, Let/song/ui/widgets/ETTrim;->access$1(Let/song/ui/widgets/ETTrim;)I

    move-result v1

    invoke-interface {v0, v1}, Let/song/ui/widgets/ETTrim$OnClickListener;->rightClick(I)V

    goto :goto_0
.end method
