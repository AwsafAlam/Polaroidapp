.class Lcom/example/photo/PlayerVideoActivity$2;
.super Ljava/lang/Object;
.source "PlayerVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/photo/PlayerVideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/photo/PlayerVideoActivity;


# direct methods
.method constructor <init>(Lcom/example/photo/PlayerVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/photo/PlayerVideoActivity$2;->this$0:Lcom/example/photo/PlayerVideoActivity;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/example/photo/PlayerVideoActivity$2;->this$0:Lcom/example/photo/PlayerVideoActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/example/photo/PlayerVideoActivity;->access$0(Lcom/example/photo/PlayerVideoActivity;I)V

    .line 59
    return-void
.end method
