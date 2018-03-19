.class Let/song/ui/widgets/ETRightRocker$1;
.super Landroid/os/Handler;
.source "ETRightRocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Let/song/ui/widgets/ETRightRocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Let/song/ui/widgets/ETRightRocker;


# direct methods
.method constructor <init>(Let/song/ui/widgets/ETRightRocker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Let/song/ui/widgets/ETRightRocker$1;->this$0:Let/song/ui/widgets/ETRightRocker;

    .line 226
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 229
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 275
    :goto_0
    :pswitch_0
    return-void

    .line 232
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Let/song/ui/widgets/ETRightRocker$trackPoint;

    .line 236
    .local v0, "q":Let/song/ui/widgets/ETRightRocker$trackPoint;
    iget-object v1, p0, Let/song/ui/widgets/ETRightRocker$1;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v1}, Let/song/ui/widgets/ETRightRocker;->access$0(Let/song/ui/widgets/ETRightRocker;)[I

    move-result-object v1

    iget v2, v0, Let/song/ui/widgets/ETRightRocker$trackPoint;->x:F

    iget-object v3, p0, Let/song/ui/widgets/ETRightRocker$1;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v3}, Let/song/ui/widgets/ETRightRocker;->access$1(Let/song/ui/widgets/ETRightRocker;)[I

    move-result-object v3

    aget v3, v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v4

    .line 237
    iget-object v1, p0, Let/song/ui/widgets/ETRightRocker$1;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v1}, Let/song/ui/widgets/ETRightRocker;->access$0(Let/song/ui/widgets/ETRightRocker;)[I

    move-result-object v1

    iget-object v2, p0, Let/song/ui/widgets/ETRightRocker$1;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v2}, Let/song/ui/widgets/ETRightRocker;->access$1(Let/song/ui/widgets/ETRightRocker;)[I

    move-result-object v2

    aget v2, v2, v5

    int-to-float v2, v2

    iget v3, v0, Let/song/ui/widgets/ETRightRocker$trackPoint;->y:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v5

    .line 241
    iget-object v1, p0, Let/song/ui/widgets/ETRightRocker$1;->this$0:Let/song/ui/widgets/ETRightRocker;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Let/song/ui/widgets/ETRightRocker;->access$2(Let/song/ui/widgets/ETRightRocker;I)V

    .line 242
    iget-object v1, p0, Let/song/ui/widgets/ETRightRocker$1;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-virtual {v1}, Let/song/ui/widgets/ETRightRocker;->invalidate()V

    goto :goto_0

    .line 258
    .end local v0    # "q":Let/song/ui/widgets/ETRightRocker$trackPoint;
    :pswitch_2
    iget-object v1, p0, Let/song/ui/widgets/ETRightRocker$1;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v1}, Let/song/ui/widgets/ETRightRocker;->access$0(Let/song/ui/widgets/ETRightRocker;)[I

    move-result-object v1

    aput v4, v1, v4

    .line 259
    iget-object v1, p0, Let/song/ui/widgets/ETRightRocker$1;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v1}, Let/song/ui/widgets/ETRightRocker;->access$0(Let/song/ui/widgets/ETRightRocker;)[I

    move-result-object v1

    aput v4, v1, v5

    .line 261
    iget-object v1, p0, Let/song/ui/widgets/ETRightRocker$1;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v1}, Let/song/ui/widgets/ETRightRocker;->access$3(Let/song/ui/widgets/ETRightRocker;)[I

    move-result-object v1

    aput v4, v1, v4

    .line 263
    iget-object v1, p0, Let/song/ui/widgets/ETRightRocker$1;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v1}, Let/song/ui/widgets/ETRightRocker;->access$4(Let/song/ui/widgets/ETRightRocker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Let/song/ui/widgets/ETRightRocker$1;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v1}, Let/song/ui/widgets/ETRightRocker;->access$3(Let/song/ui/widgets/ETRightRocker;)[I

    move-result-object v1

    aput v4, v1, v5

    .line 267
    :cond_0
    iget-object v1, p0, Let/song/ui/widgets/ETRightRocker$1;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-virtual {v1}, Let/song/ui/widgets/ETRightRocker;->invalidate()V

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
