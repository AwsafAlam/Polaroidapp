.class Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;
.super Ljava/lang/Object;
.source "SnapshotActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmacrochip/app/newpl1200/SnapshotActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "pFileInfo"
.end annotation


# static fields
.field public static final SIZETYPE_B:I = 0x1

.field public static final SIZETYPE_GB:I = 0x4

.field public static final SIZETYPE_KB:I = 0x2

.field public static final SIZETYPE_MB:I = 0x3


# instance fields
.field public DTime:Ljava/lang/String;

.field public Image:Landroid/graphics/drawable/Drawable;

.field public Name:Ljava/lang/String;

.field public Path:Ljava/lang/String;

.field public Size:J

.field public Type:I

.field final synthetic this$0:Lmacrochip/app/newpl1200/SnapshotActivity;


# direct methods
.method public constructor <init>(Lmacrochip/app/newpl1200/SnapshotActivity;Ljava/io/File;I)V
    .locals 4
    .param p2, "file"    # Ljava/io/File;
    .param p3, "type"    # I

    .prologue
    .line 390
    iput-object p1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    const-string v0, ""

    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->Path:Ljava/lang/String;

    .line 383
    const-string v0, ""

    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->Name:Ljava/lang/String;

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->Image:Landroid/graphics/drawable/Drawable;

    .line 385
    const-string v0, ""

    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->DTime:Ljava/lang/String;

    .line 386
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->Size:J

    .line 387
    const/4 v0, 0x0

    iput v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->Type:I

    .line 391
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->Path:Ljava/lang/String;

    .line 392
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->Name:Ljava/lang/String;

    .line 393
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->DTime:Ljava/lang/String;

    .line 394
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->Size:J

    .line 395
    iput p3, p0, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->Type:I

    .line 396
    return-void
.end method


# virtual methods
.method public FormetFileSize(JI)D
    .locals 9
    .param p1, "fileS"    # J
    .param p3, "sizeType"    # I

    .prologue
    .line 435
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, "df":Ljava/text/DecimalFormat;
    const-wide/16 v2, 0x0

    .line 437
    .local v2, "fileSizeLong":D
    packed-switch p3, :pswitch_data_0

    .line 455
    :goto_0
    return-wide v2

    .line 439
    :pswitch_0
    long-to-double v4, p1

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 440
    goto :goto_0

    .line 442
    :pswitch_1
    long-to-double v4, p1

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 443
    goto :goto_0

    .line 446
    :pswitch_2
    long-to-double v4, p1

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 447
    goto :goto_0

    .line 450
    :pswitch_3
    long-to-double v4, p1

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 451
    goto :goto_0

    .line 437
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public FormetFileSize(J)Ljava/lang/String;
    .locals 9
    .param p1, "fileS"    # J

    .prologue
    .line 409
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "#.00"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, "df":Ljava/text/DecimalFormat;
    const-string v1, ""

    .line 411
    .local v1, "fileSizeString":Ljava/lang/String;
    const-string v2, "0B"

    .line 412
    .local v2, "wrongSize":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    .line 424
    .end local v2    # "wrongSize":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 415
    .restart local v2    # "wrongSize":Ljava/lang/String;
    :cond_0
    const-wide/16 v4, 0x400

    cmp-long v3, p1, v4

    if-gez v3, :cond_1

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    long-to-double v4, p1

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "B"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 424
    goto :goto_0

    .line 417
    :cond_1
    const-wide/32 v4, 0x100000

    cmp-long v3, p1, v4

    if-gez v3, :cond_2

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    long-to-double v4, p1

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 419
    goto :goto_1

    :cond_2
    const-wide/32 v4, 0x40000000

    cmp-long v3, p1, v4

    if-gez v3, :cond_3

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    long-to-double v4, p1

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 421
    goto :goto_1

    .line 422
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    long-to-double v4, p1

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "GB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 399
    iget-wide v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->Size:J

    invoke-virtual {p0, v0, v1}, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->FormetFileSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
