.class public final Let/song/ui/libs/ETGlobal;
.super Ljava/lang/Object;
.source "ETGlobal.java"


# static fields
.field public static H:I

.field public static W:I

.field public static bitmapAnimReco:[Landroid/graphics/Bitmap;

.field public static bitmapHelpBg:Landroid/graphics/Bitmap;

.field public static bitmapSplashBg:Landroid/graphics/Bitmap;

.field public static bitmapTrimBall:Landroid/graphics/Bitmap;

.field public static bitmapTrimBg:Landroid/graphics/Bitmap;

.field public static mDelay:J

.field public static mImageBk:[B

.field public static mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    sput-object v0, Let/song/ui/libs/ETGlobal;->bitmapSplashBg:Landroid/graphics/Bitmap;

    .line 12
    sput-object v0, Let/song/ui/libs/ETGlobal;->bitmapHelpBg:Landroid/graphics/Bitmap;

    .line 13
    sput-object v0, Let/song/ui/libs/ETGlobal;->bitmapTrimBg:Landroid/graphics/Bitmap;

    .line 14
    sput-object v0, Let/song/ui/libs/ETGlobal;->bitmapTrimBall:Landroid/graphics/Bitmap;

    .line 15
    sput-object v0, Let/song/ui/libs/ETGlobal;->bitmapAnimReco:[Landroid/graphics/Bitmap;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Let/song/ui/libs/ETGlobal;->mImages:Ljava/util/List;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
