.class public Let/song/ui/widgets/ETButton;
.super Landroid/widget/ImageButton;
.source "ETButton.java"


# static fields
.field public static final ETBUTTON_NOT_SELECTED:[F

.field public static final ETBUTTON_SELECTED:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 12
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Let/song/ui/widgets/ETButton;->ETBUTTON_SELECTED:[F

    .line 16
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Let/song/ui/widgets/ETButton;->ETBUTTON_NOT_SELECTED:[F

    .line 18
    return-void

    .line 12
    nop

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f19999a    # 0.6f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f19999a    # 0.6f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f19999a    # 0.6f
        0x0
    .end array-data

    .line 16
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Let/song/ui/widgets/ETButton$1;

    invoke-direct {v0, p0}, Let/song/ui/widgets/ETButton$1;-><init>(Let/song/ui/widgets/ETButton;)V

    invoke-virtual {p0, v0}, Let/song/ui/widgets/ETButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method


# virtual methods
.method public setStatus(Z)V
    .locals 3
    .param p1, "val"    # Z

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Let/song/ui/widgets/ETButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 56
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    .line 57
    sget-object v2, Let/song/ui/widgets/ETButton;->ETBUTTON_NOT_SELECTED:[F

    .line 56
    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 65
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Let/song/ui/widgets/ETButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 62
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    .line 63
    sget-object v2, Let/song/ui/widgets/ETButton;->ETBUTTON_SELECTED:[F

    .line 62
    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 61
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method
