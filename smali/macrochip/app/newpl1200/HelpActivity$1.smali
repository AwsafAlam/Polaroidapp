.class Lmacrochip/app/newpl1200/HelpActivity$1;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmacrochip/app/newpl1200/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmacrochip/app/newpl1200/HelpActivity;


# direct methods
.method constructor <init>(Lmacrochip/app/newpl1200/HelpActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmacrochip/app/newpl1200/HelpActivity$1;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity$1;->this$0:Lmacrochip/app/newpl1200/HelpActivity;

    invoke-virtual {v0}, Lmacrochip/app/newpl1200/HelpActivity;->setImage()V

    .line 41
    return-void
.end method
