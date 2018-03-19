.class Lcom/app/view/PreviewView$33;
.super Landroid/os/Handler;
.source "PreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/view/PreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/view/PreviewView;


# direct methods
.method constructor <init>(Lcom/app/view/PreviewView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/view/PreviewView$33;->this$0:Lcom/app/view/PreviewView;

    .line 1935
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1938
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1987
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1940
    :pswitch_1
    iget-object v1, p0, Lcom/app/view/PreviewView$33;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$62(Lcom/app/view/PreviewView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1942
    iget-object v1, p0, Lcom/app/view/PreviewView$33;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$78(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v1

    invoke-virtual {v1}, Let/song/ui/widgets/ETButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 1944
    iget-object v1, p0, Lcom/app/view/PreviewView$33;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$63(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Let/song/ui/widgets/ETButton;->setVisibility(I)V

    .line 1945
    iget-object v1, p0, Lcom/app/view/PreviewView$33;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$63(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v1

    const/high16 v2, 0x7f040000

    invoke-virtual {v1, v2}, Let/song/ui/widgets/ETButton;->setBackgroundResource(I)V

    .line 1946
    iget-object v1, p0, Lcom/app/view/PreviewView$33;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$63(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v1

    invoke-virtual {v1}, Let/song/ui/widgets/ETButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1947
    .local v0, "animationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1950
    .end local v0    # "animationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    iget-object v1, p0, Lcom/app/view/PreviewView$33;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$62(Lcom/app/view/PreviewView;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1955
    :pswitch_2
    iget-object v1, p0, Lcom/app/view/PreviewView$33;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$81(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Let/song/ui/widgets/ETButton;->setEnabled(Z)V

    .line 1956
    iget-object v1, p0, Lcom/app/view/PreviewView$33;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$81(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v1

    const v2, 0x7f020028

    invoke-virtual {v1, v2}, Let/song/ui/widgets/ETButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1961
    :pswitch_3
    iget-object v1, p0, Lcom/app/view/PreviewView$33;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$82(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Let/song/ui/widgets/ETButton;->setEnabled(Z)V

    .line 1962
    iget-object v1, p0, Lcom/app/view/PreviewView$33;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1, v3}, Lcom/app/view/PreviewView;->access$83(Lcom/app/view/PreviewView;I)V

    goto :goto_0

    .line 1967
    :pswitch_4
    iget-object v1, p0, Lcom/app/view/PreviewView$33;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$84(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Let/song/ui/widgets/ETButton;->setEnabled(Z)V

    .line 1968
    iget-object v1, p0, Lcom/app/view/PreviewView$33;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1, v3}, Lcom/app/view/PreviewView;->access$85(Lcom/app/view/PreviewView;I)V

    goto :goto_0

    .line 1973
    :pswitch_5
    iget-object v1, p0, Lcom/app/view/PreviewView$33;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$86(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v1

    const v2, 0x7f020026

    invoke-virtual {v1, v2}, Let/song/ui/widgets/ETButton;->setBackgroundResource(I)V

    .line 1974
    iget-object v1, p0, Lcom/app/view/PreviewView$33;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$86(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Let/song/ui/widgets/ETButton;->setTag(Ljava/lang/Object;)V

    .line 1975
    iget-object v1, p0, Lcom/app/view/PreviewView$33;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1, v3}, Lcom/app/view/PreviewView;->access$87(Lcom/app/view/PreviewView;I)V

    goto/16 :goto_0

    .line 1980
    :pswitch_6
    iget-object v1, p0, Lcom/app/view/PreviewView$33;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$88(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Let/song/ui/widgets/ETButton;->setEnabled(Z)V

    .line 1981
    iget-object v1, p0, Lcom/app/view/PreviewView$33;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$88(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v1

    const v2, 0x7f020019

    invoke-virtual {v1, v2}, Let/song/ui/widgets/ETButton;->setBackgroundResource(I)V

    .line 1982
    iget-object v1, p0, Lcom/app/view/PreviewView$33;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1, v3}, Lcom/app/view/PreviewView;->access$89(Lcom/app/view/PreviewView;I)V

    goto/16 :goto_0

    .line 1938
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
