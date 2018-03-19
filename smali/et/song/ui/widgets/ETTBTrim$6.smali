.class Let/song/ui/widgets/ETTBTrim$6;
.super Ljava/lang/Object;
.source "ETTBTrim.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Let/song/ui/widgets/ETTBTrim$6;->this$0:Let/song/ui/widgets/ETTBTrim;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Let/song/ui/widgets/ETTBTrim$6;->this$0:Let/song/ui/widgets/ETTBTrim;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Let/song/ui/widgets/ETTBTrim;->access$11(Let/song/ui/widgets/ETTBTrim;Z)V

    .line 150
    iget-object v0, p0, Let/song/ui/widgets/ETTBTrim$6;->this$0:Let/song/ui/widgets/ETTBTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTBTrim;->access$8(Let/song/ui/widgets/ETTBTrim;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/ETTBTrim$6;->this$0:Let/song/ui/widgets/ETTBTrim;

    iget-object v1, v1, Let/song/ui/widgets/ETTBTrim;->runnableLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    const/4 v0, 0x0

    return v0
.end method
