.class final enum Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;
.super Ljava/lang/Enum;
.source "PercentLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BASEMODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BASE_HEIGHT:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

.field public static final enum BASE_SCREEN_HEIGHT:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

.field public static final enum BASE_SCREEN_WIDTH:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

.field public static final enum BASE_WIDTH:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

.field private static final synthetic ENUM$VALUES:[Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

.field public static final H:Ljava/lang/String; = "h"

.field public static final PERCENT:Ljava/lang/String; = "%"

.field public static final SH:Ljava/lang/String; = "sh"

.field public static final SW:Ljava/lang/String; = "sw"

.field public static final W:Ljava/lang/String; = "w"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 625
    new-instance v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    const-string v1, "BASE_WIDTH"

    invoke-direct {v0, v1, v2}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->BASE_WIDTH:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    new-instance v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    const-string v1, "BASE_HEIGHT"

    invoke-direct {v0, v1, v3}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->BASE_HEIGHT:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    new-instance v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    const-string v1, "BASE_SCREEN_WIDTH"

    invoke-direct {v0, v1, v4}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->BASE_SCREEN_WIDTH:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    new-instance v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    const-string v1, "BASE_SCREEN_HEIGHT"

    invoke-direct {v0, v1, v5}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->BASE_SCREEN_HEIGHT:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    const/4 v0, 0x4

    new-array v0, v0, [Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    sget-object v1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->BASE_WIDTH:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    aput-object v1, v0, v2

    sget-object v1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->BASE_HEIGHT:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    aput-object v1, v0, v3

    sget-object v1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->BASE_SCREEN_WIDTH:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    aput-object v1, v0, v4

    sget-object v1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->BASE_SCREEN_HEIGHT:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    aput-object v1, v0, v5

    sput-object v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->ENUM$VALUES:[Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    .line 646
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;
    .locals 1

    .prologue
    .line 1
    const-class v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    return-object v0
.end method

.method public static values()[Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->ENUM$VALUES:[Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    array-length v1, v0

    new-array v2, v1, [Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
