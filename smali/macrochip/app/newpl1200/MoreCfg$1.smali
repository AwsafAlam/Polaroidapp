.class Lmacrochip/app/newpl1200/MoreCfg$1;
.super Ljava/lang/Object;
.source "MoreCfg.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmacrochip/app/newpl1200/MoreCfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmacrochip/app/newpl1200/MoreCfg;


# direct methods
.method constructor <init>(Lmacrochip/app/newpl1200/MoreCfg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmacrochip/app/newpl1200/MoreCfg$1;->this$0:Lmacrochip/app/newpl1200/MoreCfg;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lmacrochip/app/newpl1200/MoreCfg$1;)Lmacrochip/app/newpl1200/MoreCfg;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg$1;->this$0:Lmacrochip/app/newpl1200/MoreCfg;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    const v4, 0x108009b

    .line 183
    iget-object v2, p0, Lmacrochip/app/newpl1200/MoreCfg$1;->this$0:Lmacrochip/app/newpl1200/MoreCfg;

    invoke-static {v2}, Lmacrochip/app/newpl1200/MoreCfg;->access$0(Lmacrochip/app/newpl1200/MoreCfg;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 184
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    packed-switch p3, :pswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 188
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lmacrochip/app/newpl1200/MoreCfg$1;->this$0:Lmacrochip/app/newpl1200/MoreCfg;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    const-string v3, "\u951f\u65a4\u62f7\u9009\u951f\u65a4\u62f7"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 190
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 191
    invoke-static {}, Lmacrochip/app/newpl1200/MoreCfg;->access$1()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmacrochip/app/newpl1200/MoreCfg$1;->this$0:Lmacrochip/app/newpl1200/MoreCfg;

    invoke-static {v4}, Lmacrochip/app/newpl1200/MoreCfg;->access$2(Lmacrochip/app/newpl1200/MoreCfg;)I

    move-result v4

    .line 192
    new-instance v5, Lmacrochip/app/newpl1200/MoreCfg$1$1;

    invoke-direct {v5, p0, v1}, Lmacrochip/app/newpl1200/MoreCfg$1$1;-><init>(Lmacrochip/app/newpl1200/MoreCfg$1;Ljava/util/HashMap;)V

    .line 191
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 202
    const-string v3, "\u53d6\u951f\u65a4\u62f7"

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 206
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lmacrochip/app/newpl1200/MoreCfg$1;->this$0:Lmacrochip/app/newpl1200/MoreCfg;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 207
    const-string v3, "\u951f\u65a4\u62f7\u9009\u951f\u65a4\u62f7"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 208
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 209
    invoke-static {}, Lmacrochip/app/newpl1200/MoreCfg;->access$5()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmacrochip/app/newpl1200/MoreCfg$1;->this$0:Lmacrochip/app/newpl1200/MoreCfg;

    invoke-static {v4}, Lmacrochip/app/newpl1200/MoreCfg;->access$6(Lmacrochip/app/newpl1200/MoreCfg;)I

    move-result v4

    .line 210
    new-instance v5, Lmacrochip/app/newpl1200/MoreCfg$1$2;

    invoke-direct {v5, p0, v1}, Lmacrochip/app/newpl1200/MoreCfg$1$2;-><init>(Lmacrochip/app/newpl1200/MoreCfg$1;Ljava/util/HashMap;)V

    .line 209
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 220
    const-string v3, "\u53d6\u951f\u65a4\u62f7"

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 221
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 224
    :pswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lmacrochip/app/newpl1200/MoreCfg$1;->this$0:Lmacrochip/app/newpl1200/MoreCfg;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 225
    const-string v3, "\u951f\u65a4\u62f7\u9009\u951f\u65a4\u62f7"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 226
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 227
    invoke-static {}, Lmacrochip/app/newpl1200/MoreCfg;->access$8()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmacrochip/app/newpl1200/MoreCfg$1;->this$0:Lmacrochip/app/newpl1200/MoreCfg;

    invoke-static {v4}, Lmacrochip/app/newpl1200/MoreCfg;->access$9(Lmacrochip/app/newpl1200/MoreCfg;)I

    move-result v4

    .line 228
    new-instance v5, Lmacrochip/app/newpl1200/MoreCfg$1$3;

    invoke-direct {v5, p0, v1}, Lmacrochip/app/newpl1200/MoreCfg$1$3;-><init>(Lmacrochip/app/newpl1200/MoreCfg$1;Ljava/util/HashMap;)V

    .line 227
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 238
    const-string v3, "\u53d6\u951f\u65a4\u62f7"

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 242
    :pswitch_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lmacrochip/app/newpl1200/MoreCfg$1;->this$0:Lmacrochip/app/newpl1200/MoreCfg;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 243
    const-string v3, "\u951f\u65a4\u62f7\u9009\u951f\u65a4\u62f7"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 244
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 245
    invoke-static {}, Lmacrochip/app/newpl1200/MoreCfg;->access$11()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmacrochip/app/newpl1200/MoreCfg$1;->this$0:Lmacrochip/app/newpl1200/MoreCfg;

    invoke-static {v4}, Lmacrochip/app/newpl1200/MoreCfg;->access$12(Lmacrochip/app/newpl1200/MoreCfg;)I

    move-result v4

    .line 246
    new-instance v5, Lmacrochip/app/newpl1200/MoreCfg$1$4;

    invoke-direct {v5, p0, v1}, Lmacrochip/app/newpl1200/MoreCfg$1$4;-><init>(Lmacrochip/app/newpl1200/MoreCfg$1;Ljava/util/HashMap;)V

    .line 245
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 256
    const-string v3, "\u53d6\u951f\u65a4\u62f7"

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 257
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 260
    :pswitch_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lmacrochip/app/newpl1200/MoreCfg$1;->this$0:Lmacrochip/app/newpl1200/MoreCfg;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 261
    const-string v3, "\u951f\u65a4\u62f7\u9009\u951f\u65a4\u62f7"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 262
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 263
    invoke-static {}, Lmacrochip/app/newpl1200/MoreCfg;->access$14()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmacrochip/app/newpl1200/MoreCfg$1;->this$0:Lmacrochip/app/newpl1200/MoreCfg;

    invoke-static {v4}, Lmacrochip/app/newpl1200/MoreCfg;->access$15(Lmacrochip/app/newpl1200/MoreCfg;)I

    move-result v4

    .line 264
    new-instance v5, Lmacrochip/app/newpl1200/MoreCfg$1$5;

    invoke-direct {v5, p0, v1}, Lmacrochip/app/newpl1200/MoreCfg$1$5;-><init>(Lmacrochip/app/newpl1200/MoreCfg$1;Ljava/util/HashMap;)V

    .line 263
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 274
    const-string v3, "\u53d6\u951f\u65a4\u62f7"

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 275
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 278
    :pswitch_5
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lmacrochip/app/newpl1200/MoreCfg$1;->this$0:Lmacrochip/app/newpl1200/MoreCfg;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 279
    const-string v3, "\u951f\u65a4\u62f7\u9009\u951f\u65a4\u62f7"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 280
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 281
    invoke-static {}, Lmacrochip/app/newpl1200/MoreCfg;->access$17()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmacrochip/app/newpl1200/MoreCfg$1;->this$0:Lmacrochip/app/newpl1200/MoreCfg;

    invoke-static {v4}, Lmacrochip/app/newpl1200/MoreCfg;->access$18(Lmacrochip/app/newpl1200/MoreCfg;)I

    move-result v4

    .line 282
    new-instance v5, Lmacrochip/app/newpl1200/MoreCfg$1$6;

    invoke-direct {v5, p0, v1}, Lmacrochip/app/newpl1200/MoreCfg$1$6;-><init>(Lmacrochip/app/newpl1200/MoreCfg$1;Ljava/util/HashMap;)V

    .line 281
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 292
    const-string v3, "\u53d6\u951f\u65a4\u62f7"

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 293
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
