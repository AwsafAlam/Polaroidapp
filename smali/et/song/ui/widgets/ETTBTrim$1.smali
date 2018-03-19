.class Let/song/ui/widgets/ETTBTrim$1;
.super Ljava/lang/Object;
.source "ETTBTrim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Let/song/ui/widgets/ETTBTrim;
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
    iput-object p1, p0, Let/song/ui/widgets/ETTBTrim$1;->this$0:Let/song/ui/widgets/ETTBTrim;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Let/song/ui/widgets/ETTBTrim$1;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTBTrim;->access$0(Let/song/ui/widgets/ETTBTrim;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Let/song/ui/widgets/ETTBTrim$1;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTBTrim;->access$1(Let/song/ui/widgets/ETTBTrim;)I

    move-result v0

    iget-object v1, p0, Let/song/ui/widgets/ETTBTrim$1;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v1}, Let/song/ui/widgets/ETTBTrim;->access$2(Let/song/ui/widgets/ETTBTrim;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Let/song/ui/widgets/ETTBTrim$1;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTBTrim;->access$1(Let/song/ui/widgets/ETTBTrim;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Let/song/ui/widgets/ETTBTrim;->access$3(Let/song/ui/widgets/ETTBTrim;I)V

    .line 217
    iget-object v0, p0, Let/song/ui/widgets/ETTBTrim$1;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTBTrim;->access$4(Let/song/ui/widgets/ETTBTrim;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/ETTBTrim$1;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v1}, Let/song/ui/widgets/ETTBTrim;->access$4(Let/song/ui/widgets/ETTBTrim;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    iget-object v2, p0, Let/song/ui/widgets/ETTBTrim$1;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v2}, Let/song/ui/widgets/ETTBTrim;->access$5(Let/song/ui/widgets/ETTBTrim;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 226
    :cond_0
    :goto_0
    iget-object v0, p0, Let/song/ui/widgets/ETTBTrim$1;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTBTrim;->access$8(Let/song/ui/widgets/ETTBTrim;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Let/song/ui/widgets/ETTBTrim$1;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTBTrim;->access$6(Let/song/ui/widgets/ETTBTrim;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Let/song/ui/widgets/ETTBTrim$1;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTBTrim;->access$1(Let/song/ui/widgets/ETTBTrim;)I

    move-result v0

    iget-object v1, p0, Let/song/ui/widgets/ETTBTrim$1;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v1}, Let/song/ui/widgets/ETTBTrim;->access$7(Let/song/ui/widgets/ETTBTrim;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Let/song/ui/widgets/ETTBTrim$1;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTBTrim;->access$1(Let/song/ui/widgets/ETTBTrim;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Let/song/ui/widgets/ETTBTrim;->access$3(Let/song/ui/widgets/ETTBTrim;I)V

    .line 223
    iget-object v0, p0, Let/song/ui/widgets/ETTBTrim$1;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTBTrim;->access$4(Let/song/ui/widgets/ETTBTrim;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/ETTBTrim$1;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v1}, Let/song/ui/widgets/ETTBTrim;->access$4(Let/song/ui/widgets/ETTBTrim;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    iget-object v2, p0, Let/song/ui/widgets/ETTBTrim$1;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v2}, Let/song/ui/widgets/ETTBTrim;->access$5(Let/song/ui/widgets/ETTBTrim;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_0
.end method
