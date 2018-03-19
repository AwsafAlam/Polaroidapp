.class Lmacrochip/app/newpl1200/Help2Activity$1;
.super Ljava/lang/Object;
.source "Help2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmacrochip/app/newpl1200/Help2Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmacrochip/app/newpl1200/Help2Activity;


# direct methods
.method constructor <init>(Lmacrochip/app/newpl1200/Help2Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmacrochip/app/newpl1200/Help2Activity$1;->this$0:Lmacrochip/app/newpl1200/Help2Activity;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmacrochip/app/newpl1200/Help2Activity$1;->this$0:Lmacrochip/app/newpl1200/Help2Activity;

    const-class v2, Lmacrochip/app/newpl1200/WelcomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lmacrochip/app/newpl1200/Help2Activity$1;->this$0:Lmacrochip/app/newpl1200/Help2Activity;

    invoke-virtual {v1, v0}, Lmacrochip/app/newpl1200/Help2Activity;->startActivity(Landroid/content/Intent;)V

    .line 66
    iget-object v1, p0, Lmacrochip/app/newpl1200/Help2Activity$1;->this$0:Lmacrochip/app/newpl1200/Help2Activity;

    invoke-virtual {v1}, Lmacrochip/app/newpl1200/Help2Activity;->finish()V

    .line 67
    return-void
.end method
