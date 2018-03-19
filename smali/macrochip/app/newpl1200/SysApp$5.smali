.class Lmacrochip/app/newpl1200/SysApp$5;
.super Ljava/lang/Object;
.source "SysApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmacrochip/app/newpl1200/SysApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field checkCount:I

.field final synthetic this$0:Lmacrochip/app/newpl1200/SysApp;


# direct methods
.method constructor <init>(Lmacrochip/app/newpl1200/SysApp;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lmacrochip/app/newpl1200/SysApp$5;->this$0:Lmacrochip/app/newpl1200/SysApp;

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    const/4 v0, 0x0

    iput v0, p0, Lmacrochip/app/newpl1200/SysApp$5;->checkCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 573
    return-void
.end method
