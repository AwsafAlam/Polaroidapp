.class Lmacrochip/app/newpl1200/MoreCfg$1$5;
.super Ljava/lang/Object;
.source "MoreCfg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmacrochip/app/newpl1200/MoreCfg$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmacrochip/app/newpl1200/MoreCfg$1;

.field private final synthetic val$map:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lmacrochip/app/newpl1200/MoreCfg$1;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmacrochip/app/newpl1200/MoreCfg$1$5;->this$1:Lmacrochip/app/newpl1200/MoreCfg$1;

    iput-object p2, p0, Lmacrochip/app/newpl1200/MoreCfg$1$5;->val$map:Ljava/util/HashMap;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg$1$5;->this$1:Lmacrochip/app/newpl1200/MoreCfg$1;

    invoke-static {v0}, Lmacrochip/app/newpl1200/MoreCfg$1;->access$0(Lmacrochip/app/newpl1200/MoreCfg$1;)Lmacrochip/app/newpl1200/MoreCfg;

    move-result-object v0

    invoke-static {v0, p2}, Lmacrochip/app/newpl1200/MoreCfg;->access$16(Lmacrochip/app/newpl1200/MoreCfg;I)V

    .line 267
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg$1$5;->this$1:Lmacrochip/app/newpl1200/MoreCfg$1;

    invoke-static {v0}, Lmacrochip/app/newpl1200/MoreCfg$1;->access$0(Lmacrochip/app/newpl1200/MoreCfg$1;)Lmacrochip/app/newpl1200/MoreCfg;

    move-result-object v0

    invoke-virtual {v0}, Lmacrochip/app/newpl1200/MoreCfg;->rememberTheData()V

    .line 268
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg$1$5;->val$map:Ljava/util/HashMap;

    const-string v1, "ItemChose"

    invoke-static {}, Lmacrochip/app/newpl1200/MoreCfg;->access$14()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmacrochip/app/newpl1200/MoreCfg$1$5;->this$1:Lmacrochip/app/newpl1200/MoreCfg$1;

    invoke-static {v3}, Lmacrochip/app/newpl1200/MoreCfg$1;->access$0(Lmacrochip/app/newpl1200/MoreCfg$1;)Lmacrochip/app/newpl1200/MoreCfg;

    move-result-object v3

    invoke-static {v3}, Lmacrochip/app/newpl1200/MoreCfg;->access$15(Lmacrochip/app/newpl1200/MoreCfg;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg$1$5;->this$1:Lmacrochip/app/newpl1200/MoreCfg$1;

    invoke-static {v0}, Lmacrochip/app/newpl1200/MoreCfg$1;->access$0(Lmacrochip/app/newpl1200/MoreCfg$1;)Lmacrochip/app/newpl1200/MoreCfg;

    move-result-object v0

    invoke-static {v0}, Lmacrochip/app/newpl1200/MoreCfg;->access$4(Lmacrochip/app/newpl1200/MoreCfg;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 270
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 271
    return-void
.end method
