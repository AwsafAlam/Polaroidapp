.class Lmacrochip/app/newpl1200/WelcomeActivity$1;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmacrochip/app/newpl1200/WelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmacrochip/app/newpl1200/WelcomeActivity;


# direct methods
.method constructor <init>(Lmacrochip/app/newpl1200/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmacrochip/app/newpl1200/WelcomeActivity$1;->this$0:Lmacrochip/app/newpl1200/WelcomeActivity;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 57
    :try_start_0
    sget-object v1, Let/song/ui/libs/ETGlobal;->bitmapAnimReco:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 58
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 59
    iget-object v3, p0, Lmacrochip/app/newpl1200/WelcomeActivity$1;->this$0:Lmacrochip/app/newpl1200/WelcomeActivity;

    invoke-virtual {v3}, Lmacrochip/app/newpl1200/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 60
    const v4, 0x7f020023

    .line 61
    sget v5, Let/song/ui/libs/ETGlobal;->W:I

    add-int/lit16 v5, v5, -0x140

    div-int/lit8 v5, v5, 0xa

    .line 62
    sget v6, Let/song/ui/libs/ETGlobal;->H:I

    div-int/lit8 v6, v6, 0xa

    const/4 v7, 0x1

    .line 59
    invoke-static {v3, v4, v5, v6, v7}, Let/song/ui/libs/ETImage;->readBitmap(Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 63
    iget-object v3, p0, Lmacrochip/app/newpl1200/WelcomeActivity$1;->this$0:Lmacrochip/app/newpl1200/WelcomeActivity;

    invoke-virtual {v3}, Lmacrochip/app/newpl1200/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 64
    const v4, 0x7f020024

    .line 65
    sget v5, Let/song/ui/libs/ETGlobal;->W:I

    add-int/lit16 v5, v5, -0x140

    div-int/lit8 v5, v5, 0xa

    .line 66
    sget v6, Let/song/ui/libs/ETGlobal;->H:I

    div-int/lit8 v6, v6, 0xa

    const/4 v7, 0x1

    .line 63
    invoke-static {v3, v4, v5, v6, v7}, Let/song/ui/libs/ETImage;->readBitmap(Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 58
    sput-object v1, Let/song/ui/libs/ETGlobal;->bitmapAnimReco:[Landroid/graphics/Bitmap;

    .line 69
    :cond_0
    sget-object v1, Let/song/ui/libs/ETGlobal;->bitmapHelpBg:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 71
    iget-object v1, p0, Lmacrochip/app/newpl1200/WelcomeActivity$1;->this$0:Lmacrochip/app/newpl1200/WelcomeActivity;

    invoke-virtual {v1}, Lmacrochip/app/newpl1200/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020010

    .line 72
    sget v3, Let/song/ui/libs/ETGlobal;->W:I

    sget v4, Let/song/ui/libs/ETGlobal;->H:I

    const/4 v5, 0x1

    .line 70
    invoke-static {v1, v2, v3, v4, v5}, Let/song/ui/libs/ETImage;->readBitmap(Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Let/song/ui/libs/ETGlobal;->bitmapHelpBg:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_1
    :goto_0
    invoke-static {}, Lmacrochip/app/newpl1200/WelcomeActivity;->access$0()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 81
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
