.class public Let/song/ui/widgets/PercentLayoutHelper;
.super Ljava/lang/Object;
.source "PercentLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;,
        Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutParams;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$et$song$ui$widgets$PercentLayoutHelper$PercentLayoutInfo$BASEMODE:[I = null

.field private static final REGEX_PERCENT:Ljava/lang/String; = "^(([0-9]+)([.]([0-9]+))?|([.]([0-9]+))?)%([s]?[wh]?)$"

.field private static final TAG:Ljava/lang/String; = "PercentLayout"

.field private static mHeightScreen:I

.field private static mWidthScreen:I


# instance fields
.field private final mHost:Landroid/view/ViewGroup;


# direct methods
.method static synthetic $SWITCH_TABLE$et$song$ui$widgets$PercentLayoutHelper$PercentLayoutInfo$BASEMODE()[I
    .locals 3

    .prologue
    .line 88
    sget-object v0, Let/song/ui/widgets/PercentLayoutHelper;->$SWITCH_TABLE$et$song$ui$widgets$PercentLayoutHelper$PercentLayoutInfo$BASEMODE:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->values()[Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->BASE_HEIGHT:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-virtual {v1}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->BASE_SCREEN_HEIGHT:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-virtual {v1}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->BASE_SCREEN_WIDTH:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-virtual {v1}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->BASE_WIDTH:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-virtual {v1}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Let/song/ui/widgets/PercentLayoutHelper;->$SWITCH_TABLE$et$song$ui$widgets$PercentLayoutHelper$PercentLayoutInfo$BASEMODE:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "host"    # Landroid/view/ViewGroup;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Let/song/ui/widgets/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    .line 98
    invoke-direct {p0}, Let/song/ui/widgets/PercentLayoutHelper;->getScreenSize()V

    .line 99
    return-void
.end method

.method static synthetic access$0(IILet/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;)I
    .locals 1

    .prologue
    .line 243
    invoke-static {p0, p1, p2}, Let/song/ui/widgets/PercentLayoutHelper;->getBaseByModeAndVal(IILet/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;)I

    move-result v0

    return v0
.end method

.method private static checkForInfoExists(Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
    .locals 0
    .param p0, "info"    # Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    .line 471
    if-eqz p0, :cond_0

    .line 472
    :goto_0
    return-object p0

    .line 471
    :cond_0
    new-instance p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    .end local p0    # "info":Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
    invoke-direct {p0}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto :goto_0
.end method

.method public static fetchWidthAndHeight(Landroid/view/ViewGroup$LayoutParams;Landroid/content/res/TypedArray;II)V
    .locals 2
    .param p0, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p1, "array"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 117
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 118
    return-void
.end method

.method private static getBaseByModeAndVal(IILet/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;)I
    .locals 2
    .param p0, "widthHint"    # I
    .param p1, "heightHint"    # I
    .param p2, "basemode"    # Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    .prologue
    .line 244
    invoke-static {}, Let/song/ui/widgets/PercentLayoutHelper;->$SWITCH_TABLE$et$song$ui$widgets$PercentLayoutHelper$PercentLayoutInfo$BASEMODE()[I

    move-result-object v0

    invoke-virtual {p2}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 254
    const/4 p1, 0x0

    .end local p1    # "heightHint":I
    :goto_0
    :pswitch_0
    return p1

    .restart local p1    # "heightHint":I
    :pswitch_1
    move p1, p0

    .line 248
    goto :goto_0

    .line 250
    :pswitch_2
    sget p1, Let/song/ui/widgets/PercentLayoutHelper;->mWidthScreen:I

    goto :goto_0

    .line 252
    :pswitch_3
    sget p1, Let/song/ui/widgets/PercentLayoutHelper;->mHeightScreen:I

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getPercentLayoutInfo(Landroid/content/Context;Landroid/util/AttributeSet;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 263
    const/4 v1, 0x0

    .line 264
    .local v1, "info":Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
    sget-object v2, Lmacrochip/app/newpl1200/R$styleable;->PercentLayout_Layout:[I

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 266
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-static {v0, v1}, Let/song/ui/widgets/PercentLayoutHelper;->setWidthAndHeightVal(Landroid/content/res/TypedArray;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v1

    .line 268
    invoke-static {v0, v1}, Let/song/ui/widgets/PercentLayoutHelper;->setMarginRelatedVal(Landroid/content/res/TypedArray;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v1

    .line 270
    invoke-static {v0, v1}, Let/song/ui/widgets/PercentLayoutHelper;->setTextSizeSupportVal(Landroid/content/res/TypedArray;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v1

    .line 272
    invoke-static {v0, v1}, Let/song/ui/widgets/PercentLayoutHelper;->setMinMaxWidthHeightRelatedVal(Landroid/content/res/TypedArray;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v1

    .line 274
    invoke-static {v0, v1}, Let/song/ui/widgets/PercentLayoutHelper;->setPaddingRelatedVal(Landroid/content/res/TypedArray;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v1

    .line 276
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 278
    const-string v2, "PercentLayout"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    const-string v2, "PercentLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "constructed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    return-object v1
.end method

.method private static getPercentVal(Landroid/content/res/TypedArray;IZ)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    .locals 2
    .param p0, "array"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "baseWidth"    # Z

    .prologue
    .line 465
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "sizeStr":Ljava/lang/String;
    invoke-static {v1, p2}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentVal(Ljava/lang/String;Z)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 467
    .local v0, "percentVal":Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    return-object v0
.end method

.method private static getPercentVal(Ljava/lang/String;Z)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    .locals 10
    .param p0, "percentStr"    # Ljava/lang/String;
    .param p1, "isOnWidth"    # Z

    .prologue
    .line 487
    if-nez p0, :cond_0

    .line 488
    const/4 v6, 0x0

    .line 522
    :goto_0
    return-object v6

    .line 490
    :cond_0
    const-string v7, "^(([0-9]+)([.]([0-9]+))?|([.]([0-9]+))?)%([s]?[wh]?)$"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 491
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 492
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_1

    .line 493
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "the value of layout_xxxPercent invalid! ==>"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 495
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 497
    .local v2, "len":I
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "floatVal":Ljava/lang/String;
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "lastAlpha":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float v5, v7, v8

    .line 502
    .local v5, "percent":F
    new-instance v6, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-direct {v6}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;-><init>()V

    .line 503
    .local v6, "percentVal":Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    iput v5, v6, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    .line 504
    const-string v7, "sw"

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 505
    sget-object v7, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->BASE_SCREEN_WIDTH:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    iput-object v7, v6, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    goto :goto_0

    .line 506
    :cond_2
    const-string v7, "sh"

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 507
    sget-object v7, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->BASE_SCREEN_HEIGHT:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    iput-object v7, v6, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    goto :goto_0

    .line 508
    :cond_3
    const-string v7, "%"

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 509
    if-eqz p1, :cond_4

    .line 510
    sget-object v7, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->BASE_WIDTH:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    iput-object v7, v6, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    goto :goto_0

    .line 512
    :cond_4
    sget-object v7, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->BASE_HEIGHT:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    iput-object v7, v6, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    goto :goto_0

    .line 514
    :cond_5
    const-string v7, "w"

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 515
    sget-object v7, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->BASE_WIDTH:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    iput-object v7, v6, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    goto :goto_0

    .line 516
    :cond_6
    const-string v7, "h"

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 517
    sget-object v7, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->BASE_HEIGHT:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    iput-object v7, v6, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    goto/16 :goto_0

    .line 519
    :cond_7
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "the "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " must be endWith [%|w|h|sw|sh]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private getScreenSize()V
    .locals 4

    .prologue
    .line 102
    iget-object v2, p0, Let/song/ui/widgets/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 103
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 104
    .local v0, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 105
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Let/song/ui/widgets/PercentLayoutHelper;->mWidthScreen:I

    .line 106
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Let/song/ui/widgets/PercentLayoutHelper;->mHeightScreen:I

    .line 107
    return-void
.end method

.method private invokeMethod(Ljava/lang/String;IILandroid/view/View;Ljava/lang/Class;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;)V
    .locals 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "widthHint"    # I
    .param p3, "heightHint"    # I
    .param p4, "view"    # Landroid/view/View;
    .param p5, "clazz"    # Ljava/lang/Class;
    .param p6, "percentVal"    # Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 217
    const-string v2, "PercentLayout"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    const-string v2, "PercentLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    if-eqz p6, :cond_1

    .line 220
    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    invoke-virtual {p5, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 221
    .local v1, "setMaxWidthMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 222
    iget-object v2, p6, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-static {p2, p3, v2}, Let/song/ui/widgets/PercentLayoutHelper;->getBaseByModeAndVal(IILet/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;)I

    move-result v0

    .line 223
    .local v0, "base":I
    new-array v2, v5, [Ljava/lang/Object;

    int-to-float v3, v0

    iget v4, p6, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, p4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .end local v0    # "base":I
    .end local v1    # "setMaxWidthMethod":Ljava/lang/reflect/Method;
    :cond_1
    return-void
.end method

.method private static setMarginRelatedVal(Landroid/content/res/TypedArray;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
    .locals 7
    .param p0, "array"    # Landroid/content/res/TypedArray;
    .param p1, "info"    # Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 351
    invoke-static {p0, v4, v5}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 353
    .local v0, "percentVal":Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    if-eqz v0, :cond_1

    .line 354
    const-string v1, "PercentLayout"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "percent margin: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    invoke-static {p1}, Let/song/ui/widgets/PercentLayoutHelper;->checkForInfoExists(Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 358
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 359
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 360
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 361
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 364
    :cond_1
    const/4 v1, 0x3

    invoke-static {p0, v1, v5}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_3

    .line 366
    const-string v1, "PercentLayout"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "percent left margin: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_2
    invoke-static {p1}, Let/song/ui/widgets/PercentLayoutHelper;->checkForInfoExists(Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 370
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 373
    :cond_3
    const/4 v1, 0x4

    invoke-static {p0, v1, v6}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_5

    .line 375
    const-string v1, "PercentLayout"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 376
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "percent top margin: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_4
    invoke-static {p1}, Let/song/ui/widgets/PercentLayoutHelper;->checkForInfoExists(Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 379
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 382
    :cond_5
    const/4 v1, 0x5

    invoke-static {p0, v1, v5}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_7

    .line 384
    const-string v1, "PercentLayout"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 385
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "percent right margin: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_6
    invoke-static {p1}, Let/song/ui/widgets/PercentLayoutHelper;->checkForInfoExists(Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 388
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 391
    :cond_7
    const/4 v1, 0x6

    invoke-static {p0, v1, v6}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_9

    .line 393
    const-string v1, "PercentLayout"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 394
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "percent bottom margin: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_8
    invoke-static {p1}, Let/song/ui/widgets/PercentLayoutHelper;->checkForInfoExists(Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 397
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 399
    :cond_9
    const/4 v1, 0x7

    invoke-static {p0, v1, v5}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_b

    .line 401
    const-string v1, "PercentLayout"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 402
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "percent start margin: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_a
    invoke-static {p1}, Let/song/ui/widgets/PercentLayoutHelper;->checkForInfoExists(Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 405
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->startMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 408
    :cond_b
    const/16 v1, 0x8

    invoke-static {p0, v1, v5}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_d

    .line 410
    const-string v1, "PercentLayout"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 411
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "percent end margin: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_c
    invoke-static {p1}, Let/song/ui/widgets/PercentLayoutHelper;->checkForInfoExists(Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 414
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->endMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 417
    :cond_d
    return-object p1
.end method

.method private static setMinMaxWidthHeightRelatedVal(Landroid/content/res/TypedArray;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
    .locals 4
    .param p0, "array"    # Landroid/content/res/TypedArray;
    .param p1, "info"    # Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 322
    const/16 v1, 0xa

    invoke-static {p0, v1, v3}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 323
    .local v0, "percentVal":Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    if-eqz v0, :cond_0

    .line 324
    invoke-static {p1}, Let/song/ui/widgets/PercentLayoutHelper;->checkForInfoExists(Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 325
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->maxWidthPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 328
    :cond_0
    const/16 v1, 0xb

    invoke-static {p0, v1, v2}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_1

    .line 330
    invoke-static {p1}, Let/song/ui/widgets/PercentLayoutHelper;->checkForInfoExists(Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 331
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->maxHeightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 334
    :cond_1
    const/16 v1, 0xc

    invoke-static {p0, v1, v3}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_2

    .line 336
    invoke-static {p1}, Let/song/ui/widgets/PercentLayoutHelper;->checkForInfoExists(Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 337
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->minWidthPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 340
    :cond_2
    const/16 v1, 0xd

    invoke-static {p0, v1, v2}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_3

    .line 342
    invoke-static {p1}, Let/song/ui/widgets/PercentLayoutHelper;->checkForInfoExists(Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 343
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->minHeightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 346
    :cond_3
    return-object p1
.end method

.method private static setPaddingRelatedVal(Landroid/content/res/TypedArray;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
    .locals 3
    .param p0, "array"    # Landroid/content/res/TypedArray;
    .param p1, "info"    # Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    const/4 v2, 0x1

    .line 428
    const/16 v1, 0xe

    invoke-static {p0, v1, v2}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 429
    .local v0, "percentVal":Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    if-eqz v0, :cond_0

    .line 430
    invoke-static {p1}, Let/song/ui/widgets/PercentLayoutHelper;->checkForInfoExists(Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 431
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->paddingLeftPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 432
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->paddingRightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 433
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->paddingBottomPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 434
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->paddingTopPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 437
    :cond_0
    const/16 v1, 0x11

    invoke-static {p0, v1, v2}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 438
    if-eqz v0, :cond_1

    .line 439
    invoke-static {p1}, Let/song/ui/widgets/PercentLayoutHelper;->checkForInfoExists(Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 440
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->paddingLeftPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 443
    :cond_1
    const/16 v1, 0x12

    invoke-static {p0, v1, v2}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_2

    .line 445
    invoke-static {p1}, Let/song/ui/widgets/PercentLayoutHelper;->checkForInfoExists(Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 446
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->paddingRightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 449
    :cond_2
    const/16 v1, 0xf

    invoke-static {p0, v1, v2}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_3

    .line 451
    invoke-static {p1}, Let/song/ui/widgets/PercentLayoutHelper;->checkForInfoExists(Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 452
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->paddingTopPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 455
    :cond_3
    const/16 v1, 0x10

    invoke-static {p0, v1, v2}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_4

    .line 457
    invoke-static {p1}, Let/song/ui/widgets/PercentLayoutHelper;->checkForInfoExists(Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 458
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->paddingBottomPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 461
    :cond_4
    return-object p1
.end method

.method private static setTextSizeSupportVal(Landroid/content/res/TypedArray;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
    .locals 4
    .param p0, "array"    # Landroid/content/res/TypedArray;
    .param p1, "info"    # Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    .line 308
    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 309
    .local v0, "percentVal":Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    if-eqz v0, :cond_1

    .line 310
    const-string v1, "PercentLayout"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "percent text size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    invoke-static {p1}, Let/song/ui/widgets/PercentLayoutHelper;->checkForInfoExists(Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 314
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->textSizePercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 317
    :cond_1
    return-object p1
.end method

.method private static setWidthAndHeightVal(Landroid/content/res/TypedArray;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
    .locals 7
    .param p0, "array"    # Landroid/content/res/TypedArray;
    .param p1, "info"    # Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 285
    invoke-static {p0, v4, v5}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 286
    .local v0, "percentVal":Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    if-eqz v0, :cond_1

    .line 287
    const-string v1, "PercentLayout"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "percent width: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    invoke-static {p1}, Let/song/ui/widgets/PercentLayoutHelper;->checkForInfoExists(Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 291
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 293
    :cond_1
    invoke-static {p0, v5, v4}, Let/song/ui/widgets/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_3

    .line 296
    const-string v1, "PercentLayout"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "percent height: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_2
    invoke-static {p1}, Let/song/ui/widgets/PercentLayoutHelper;->checkForInfoExists(Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 300
    iput-object v0, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 303
    :cond_3
    return-object p1
.end method

.method private static shouldHandleMeasuredHeightTooSmall(Landroid/view/View;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "info"    # Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    const/4 v1, 0x0

    .line 609
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMeasuredHeightAndState(Landroid/view/View;)I

    move-result v2

    const/high16 v3, -0x1000000

    and-int v0, v2, v3

    .line 610
    .local v0, "state":I
    if-eqz p1, :cond_0

    iget-object v2, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    if-nez v2, :cond_1

    .line 613
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/high16 v2, 0x1000000

    if-ne v0, v2, :cond_0

    iget-object v2, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget v2, v2, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 614
    iget-object v2, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 613
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static shouldHandleMeasuredWidthTooSmall(Landroid/view/View;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "info"    # Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    const/4 v1, 0x0

    .line 600
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v2

    const/high16 v3, -0x1000000

    and-int v0, v2, v3

    .line 601
    .local v0, "state":I
    if-eqz p1, :cond_0

    iget-object v2, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    if-nez v2, :cond_1

    .line 604
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/high16 v2, 0x1000000

    if-ne v0, v2, :cond_0

    iget-object v2, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget v2, v2, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 605
    iget-object v2, p1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 604
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private supportMinOrMaxDimesion(IILandroid/view/View;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)V
    .locals 8
    .param p1, "widthHint"    # I
    .param p2, "heightHint"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "info"    # Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 200
    .local v5, "clazz":Ljava/lang/Class;
    const-string v1, "setMaxWidth"

    iget-object v6, p4, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->maxWidthPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Let/song/ui/widgets/PercentLayoutHelper;->invokeMethod(Ljava/lang/String;IILandroid/view/View;Ljava/lang/Class;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;)V

    .line 201
    const-string v1, "setMaxHeight"

    iget-object v6, p4, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->maxHeightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Let/song/ui/widgets/PercentLayoutHelper;->invokeMethod(Ljava/lang/String;IILandroid/view/View;Ljava/lang/Class;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;)V

    .line 202
    const-string v1, "setMinWidth"

    iget-object v6, p4, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->minWidthPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Let/song/ui/widgets/PercentLayoutHelper;->invokeMethod(Ljava/lang/String;IILandroid/view/View;Ljava/lang/Class;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;)V

    .line 203
    const-string v1, "setMinHeight"

    iget-object v6, p4, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->minHeightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Let/song/ui/widgets/PercentLayoutHelper;->invokeMethod(Ljava/lang/String;IILandroid/view/View;Ljava/lang/Class;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 213
    .end local v5    # "clazz":Ljava/lang/Class;
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v7

    .line 206
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v7}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 207
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v7

    .line 208
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 209
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v7

    .line 210
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private supportPadding(IILandroid/view/View;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)V
    .locals 8
    .param p1, "widthHint"    # I
    .param p2, "heightHint"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "info"    # Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    .line 170
    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .local v2, "left":I
    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .local v4, "right":I
    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .local v5, "top":I
    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 171
    .local v1, "bottom":I
    iget-object v3, p4, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->paddingLeftPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 172
    .local v3, "percentVal":Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    if-eqz v3, :cond_0

    .line 173
    iget-object v6, v3, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-static {p1, p2, v6}, Let/song/ui/widgets/PercentLayoutHelper;->getBaseByModeAndVal(IILet/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;)I

    move-result v0

    .line 174
    .local v0, "base":I
    int-to-float v6, v0

    iget v7, v3, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 176
    .end local v0    # "base":I
    :cond_0
    iget-object v3, p4, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->paddingRightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 177
    if-eqz v3, :cond_1

    .line 178
    iget-object v6, v3, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-static {p1, p2, v6}, Let/song/ui/widgets/PercentLayoutHelper;->getBaseByModeAndVal(IILet/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;)I

    move-result v0

    .line 179
    .restart local v0    # "base":I
    int-to-float v6, v0

    iget v7, v3, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v6, v7

    float-to-int v4, v6

    .line 182
    .end local v0    # "base":I
    :cond_1
    iget-object v3, p4, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->paddingTopPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 183
    if-eqz v3, :cond_2

    .line 184
    iget-object v6, v3, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-static {p1, p2, v6}, Let/song/ui/widgets/PercentLayoutHelper;->getBaseByModeAndVal(IILet/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;)I

    move-result v0

    .line 185
    .restart local v0    # "base":I
    int-to-float v6, v0

    iget v7, v3, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 188
    .end local v0    # "base":I
    :cond_2
    iget-object v3, p4, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->paddingBottomPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 189
    if-eqz v3, :cond_3

    .line 190
    iget-object v6, v3, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-static {p1, p2, v6}, Let/song/ui/widgets/PercentLayoutHelper;->getBaseByModeAndVal(IILet/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;)I

    move-result v0

    .line 191
    .restart local v0    # "base":I
    int-to-float v6, v0

    iget v7, v3, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 193
    .end local v0    # "base":I
    :cond_3
    invoke-virtual {p3, v2, v5, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 195
    return-void
.end method

.method private supportTextSize(IILandroid/view/View;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)V
    .locals 5
    .param p1, "widthHint"    # I
    .param p2, "heightHint"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "info"    # Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    .line 230
    iget-object v2, p4, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->textSizePercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 231
    .local v2, "textSizePercent":Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    if-nez v2, :cond_1

    .line 241
    .end local p3    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 234
    .restart local p3    # "view":Landroid/view/View;
    :cond_1
    iget-object v3, v2, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-static {p1, p2, v3}, Let/song/ui/widgets/PercentLayoutHelper;->getBaseByModeAndVal(IILet/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;)I

    move-result v0

    .line 235
    .local v0, "base":I
    int-to-float v3, v0

    iget v4, v2, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v1, v3

    .line 238
    .local v1, "textSize":F
    instance-of v3, p3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 239
    check-cast p3, Landroid/widget/TextView;

    .end local p3    # "view":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {p3, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method


# virtual methods
.method public adjustChildren(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x3

    .line 130
    const-string v7, "PercentLayout"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    const-string v7, "PercentLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "adjustChildren: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Let/song/ui/widgets/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " widthMeasureSpec: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " heightMeasureSpec: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 132
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 131
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 135
    .local v6, "widthHint":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 137
    .local v1, "heightHint":I
    const-string v7, "PercentLayout"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 138
    const-string v7, "PercentLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "widthHint = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , heightHint = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v7, p0, Let/song/ui/widgets/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-lt v2, v0, :cond_2

    .line 167
    return-void

    .line 141
    :cond_2
    iget-object v7, p0, Let/song/ui/widgets/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 142
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 144
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    const-string v7, "PercentLayout"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 145
    const-string v7, "PercentLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "should adjust "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_3
    instance-of v7, v4, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutParams;

    if-eqz v7, :cond_5

    move-object v7, v4

    .line 149
    check-cast v7, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutParams;

    invoke-interface {v7}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutParams;->getPercentLayoutInfo()Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v3

    .line 150
    .local v3, "info":Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
    const-string v7, "PercentLayout"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 151
    const-string v7, "PercentLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "using "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_4
    if-eqz v3, :cond_5

    .line 154
    invoke-direct {p0, v6, v1, v5, v3}, Let/song/ui/widgets/PercentLayoutHelper;->supportTextSize(IILandroid/view/View;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)V

    .line 155
    invoke-direct {p0, v6, v1, v5, v3}, Let/song/ui/widgets/PercentLayoutHelper;->supportPadding(IILandroid/view/View;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)V

    .line 156
    invoke-direct {p0, v6, v1, v5, v3}, Let/song/ui/widgets/PercentLayoutHelper;->supportMinOrMaxDimesion(IILandroid/view/View;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)V

    .line 158
    instance-of v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_6

    .line 159
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v4, v6, v1}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->fillMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;II)V

    .line 140
    .end local v3    # "info":Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .restart local v3    # "info":Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
    .restart local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    invoke-virtual {v3, v4, v6, v1}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->fillLayoutParams(Landroid/view/ViewGroup$LayoutParams;II)V

    goto :goto_1
.end method

.method public handleMeasuredStateTooSmall()Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, -0x2

    .line 572
    const/4 v3, 0x0

    .line 573
    .local v3, "needsSecondMeasure":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v6, p0, Let/song/ui/widgets/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 593
    const-string v6, "PercentLayout"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 594
    const-string v6, "PercentLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "should trigger second measure pass: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_0
    return v3

    .line 574
    :cond_1
    iget-object v6, p0, Let/song/ui/widgets/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 575
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 576
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    const-string v6, "PercentLayout"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 577
    const-string v6, "PercentLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "should handle measured state too small "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_2
    instance-of v6, v4, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutParams;

    if-eqz v6, :cond_4

    move-object v6, v4

    .line 580
    check-cast v6, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutParams;

    invoke-interface {v6}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutParams;->getPercentLayoutInfo()Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v2

    .line 581
    .local v2, "info":Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
    if-eqz v2, :cond_4

    .line 582
    invoke-static {v5, v2}, Let/song/ui/widgets/PercentLayoutHelper;->shouldHandleMeasuredWidthTooSmall(Landroid/view/View;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 583
    const/4 v3, 0x1

    .line 584
    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 586
    :cond_3
    invoke-static {v5, v2}, Let/song/ui/widgets/PercentLayoutHelper;->shouldHandleMeasuredHeightTooSmall(Landroid/view/View;Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 587
    const/4 v3, 0x1

    .line 588
    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 573
    .end local v2    # "info":Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public restoreOriginalParams()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 533
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Let/song/ui/widgets/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 553
    return-void

    .line 534
    :cond_0
    iget-object v5, p0, Let/song/ui/widgets/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 535
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 536
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    const-string v5, "PercentLayout"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 537
    const-string v5, "PercentLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "should restore "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_1
    instance-of v5, v3, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutParams;

    if-eqz v5, :cond_3

    move-object v5, v3

    .line 540
    check-cast v5, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutParams;

    invoke-interface {v5}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutParams;->getPercentLayoutInfo()Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v2

    .line 541
    .local v2, "info":Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
    const-string v5, "PercentLayout"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 542
    const-string v5, "PercentLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "using "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_2
    if-eqz v2, :cond_3

    .line 545
    instance-of v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_4

    .line 546
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v3}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->restoreMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 533
    .end local v2    # "info":Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    .restart local v2    # "info":Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
    .restart local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {v2, v3}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->restoreLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method
