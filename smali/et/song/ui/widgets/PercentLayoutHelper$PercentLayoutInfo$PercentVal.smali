.class public Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
.super Ljava/lang/Object;
.source "PercentLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PercentVal"
.end annotation


# instance fields
.field public basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

.field public percent:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    .line 655
    return-void
.end method

.method public constructor <init>(FLet/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;)V
    .locals 1
    .param p1, "percent"    # F
    .param p2, "baseMode"    # Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    .prologue
    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    .line 658
    iput p1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    .line 659
    iput-object p2, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    .line 660
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PercentVal{percent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", basemode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-virtual {v1}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
