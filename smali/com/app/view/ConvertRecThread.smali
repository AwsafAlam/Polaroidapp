.class Lcom/app/view/ConvertRecThread;
.super Ljava/lang/Object;
.source "PreviewView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private filePath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mRecData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 2782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/app/view/ConvertRecThread;->mRecData:Ljava/util/List;

    .line 2784
    iput-object p1, p0, Lcom/app/view/ConvertRecThread;->mContext:Landroid/content/Context;

    .line 2785
    iput-object p2, p0, Lcom/app/view/ConvertRecThread;->filePath:Ljava/lang/String;

    .line 2786
    return-void
.end method

.method private RefreshListData()V
    .locals 6

    .prologue
    .line 2825
    iget-object v5, p0, Lcom/app/view/ConvertRecThread;->mRecData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 2826
    new-instance v0, Ljava/io/File;

    sget-object v5, Lmacrochip/app/newpl1200/SysApp;->SAVE_PATH:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2827
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 2828
    .local v4, "subFile":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_0
    array-length v5, v4

    if-lt v2, v5, :cond_0

    .line 2837
    return-void

    .line 2829
    :cond_0
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2830
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2831
    .local v1, "filename":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 2832
    .local v3, "str":Ljava/lang/String;
    const-string v5, ".h264"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ".jpg"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ".png"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ".bmp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2833
    :cond_1
    iget-object v5, p0, Lcom/app/view/ConvertRecThread;->mRecData:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2828
    .end local v1    # "filename":Ljava/lang/String;
    .end local v3    # "str":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static copyfile(Ljava/io/File;Ljava/io/File;Ljava/lang/Boolean;)V
    .locals 7
    .param p0, "fromFile"    # Ljava/io/File;
    .param p1, "toFile"    # Ljava/io/File;
    .param p2, "rewrite"    # Ljava/lang/Boolean;

    .prologue
    .line 2790
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2820
    :cond_0
    :goto_0
    return-void

    .line 2793
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2796
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2800
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2801
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 2804
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2805
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 2808
    :cond_3
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2809
    .local v3, "fosfrom":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2810
    .local v4, "fosto":Ljava/io/FileOutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 2812
    .local v0, "bt":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "c":I
    if-gtz v1, :cond_4

    .line 2815
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 2816
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2817
    .end local v0    # "bt":[B
    .end local v1    # "c":I
    .end local v3    # "fosfrom":Ljava/io/FileInputStream;
    .end local v4    # "fosto":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 2818
    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "readfile"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2813
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "bt":[B
    .restart local v1    # "c":I
    .restart local v3    # "fosfrom":Ljava/io/FileInputStream;
    .restart local v4    # "fosto":Ljava/io/FileOutputStream;
    :cond_4
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, v0, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private output(Ljava/lang/String;)V
    .locals 19
    .param p1, "srcFilePath"    # Ljava/lang/String;

    .prologue
    .line 2841
    const-string v9, "/DCIM"

    .line 2842
    .local v9, "photoPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    .line 2850
    .local v11, "sd":Ljava/io/File;
    const-string v14, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2851
    .local v8, "m":[Ljava/lang/String;
    array-length v14, v8

    add-int/lit8 v14, v14, -0x1

    aget-object v10, v8, v14

    .line 2852
    .local v10, "recName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    sget-object v15, Lmacrochip/app/newpl1200/SysApp;->SAVE_DATA_PATH:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2854
    .local v3, "dstFilePath":Ljava/lang/String;
    const/16 v14, 0x2e

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 2855
    .local v6, "index":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 2856
    .local v7, "length":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 2857
    .local v13, "str":Ljava/lang/String;
    const-string v14, ".h264"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2859
    const/4 v14, 0x0

    const/16 v15, 0x2e

    invoke-virtual {v3, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 2860
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ".avi"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2861
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2864
    .local v2, "dstFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 2865
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 2867
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    .line 2869
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/fh/lib/FHSDK;->startConvertRecFormat(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 2870
    .local v5, "handle":I
    if-nez v5, :cond_3

    .line 2912
    .end local v2    # "dstFile":Ljava/io/File;
    .end local v5    # "handle":I
    :cond_1
    :goto_0
    return-void

    .line 2879
    .restart local v2    # "dstFile":Ljava/io/File;
    .restart local v5    # "handle":I
    :cond_2
    const-wide/16 v14, 0x1

    :try_start_0
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2874
    :cond_3
    :goto_1
    const/16 v14, 0x64

    invoke-static {v5}, Lcom/fh/lib/FHSDK;->getConvertProgress(I)I

    move-result v15

    if-ne v14, v15, :cond_2

    .line 2885
    invoke-static {v5}, Lcom/fh/lib/FHSDK;->stopConvertRecFormat(I)Z

    .line 2889
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/ConvertRecThread;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 2890
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    .line 2889
    move-object/from16 v0, v16

    invoke-static {v14, v15, v10, v0}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2895
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/ConvertRecThread;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "file://"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v14, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2880
    :catch_0
    move-exception v4

    .line 2882
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 2891
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v4

    .line 2892
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2901
    .end local v2    # "dstFile":Ljava/io/File;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "handle":I
    :cond_4
    const-string v14, ".jpg"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, ".bmp"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2906
    :cond_5
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2907
    .local v12, "srcFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2908
    .restart local v2    # "dstFile":Ljava/io/File;
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v12, v2, v14}, Lcom/app/view/ConvertRecThread;->copyfile(Ljava/io/File;Ljava/io/File;Ljava/lang/Boolean;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2922
    iget-object v0, p0, Lcom/app/view/ConvertRecThread;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2923
    iget-object v0, p0, Lcom/app/view/ConvertRecThread;->filePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/app/view/ConvertRecThread;->output(Ljava/lang/String;)V

    .line 2925
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 2916
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2917
    return-void
.end method
