.class Lcom/android/opengles/GLFrameRenderer$SnapshotThread;
.super Ljava/lang/Object;
.source "GLFrameRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/opengles/GLFrameRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SnapshotThread"
.end annotation


# instance fields
.field private isShoting:Z

.field final synthetic this$0:Lcom/android/opengles/GLFrameRenderer;


# direct methods
.method constructor <init>(Lcom/android/opengles/GLFrameRenderer;)V
    .locals 1

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/opengles/GLFrameRenderer$SnapshotThread;->this$0:Lcom/android/opengles/GLFrameRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/opengles/GLFrameRenderer$SnapshotThread;->isShoting:Z

    return-void
.end method


# virtual methods
.method public isShoting()Z
    .locals 1

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/android/opengles/GLFrameRenderer$SnapshotThread;->isShoting:Z

    return v0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 619
    monitor-enter p0

    .line 622
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/opengles/GLFrameRenderer$SnapshotThread;->this$0:Lcom/android/opengles/GLFrameRenderer;

    invoke-static {v14}, Lcom/android/opengles/GLFrameRenderer;->access$12(Lcom/android/opengles/GLFrameRenderer;)[B

    move-result-object v14

    array-length v14, v14

    new-array v11, v14, [B

    .line 623
    .local v11, "outBuffer":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/opengles/GLFrameRenderer$SnapshotThread;->this$0:Lcom/android/opengles/GLFrameRenderer;

    invoke-static {v14}, Lcom/android/opengles/GLFrameRenderer;->access$13(Lcom/android/opengles/GLFrameRenderer;)I

    move-result v14

    if-lt v7, v14, :cond_1

    .line 631
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 632
    .local v5, "btBuf":Ljava/nio/ByteBuffer;
    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 633
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 634
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    .line 635
    .local v12, "sd":Ljava/io/File;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 637
    .local v13, "tmpfile":Ljava/lang/String;
    const/4 v3, 0x0

    .line 640
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .line 645
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/opengles/GLFrameRenderer$SnapshotThread;->this$0:Lcom/android/opengles/GLFrameRenderer;

    invoke-static {v14}, Lcom/android/opengles/GLFrameRenderer;->access$14(Lcom/android/opengles/GLFrameRenderer;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/opengles/GLFrameRenderer$SnapshotThread;->this$0:Lcom/android/opengles/GLFrameRenderer;

    invoke-static {v15}, Lcom/android/opengles/GLFrameRenderer;->access$13(Lcom/android/opengles/GLFrameRenderer;)I

    move-result v15

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 646
    .local v2, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 647
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x5a

    invoke-virtual {v2, v14, v15, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 648
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 653
    if-eqz v3, :cond_0

    .line 655
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 619
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_2
    :try_start_4
    monitor-exit p0

    .line 662
    return-void

    .line 624
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "btBuf":Ljava/nio/ByteBuffer;
    .end local v12    # "sd":Ljava/io/File;
    .end local v13    # "tmpfile":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/opengles/GLFrameRenderer$SnapshotThread;->this$0:Lcom/android/opengles/GLFrameRenderer;

    invoke-static {v14}, Lcom/android/opengles/GLFrameRenderer;->access$14(Lcom/android/opengles/GLFrameRenderer;)I

    move-result v14

    mul-int/2addr v14, v7

    mul-int/lit8 v9, v14, 0x4

    .line 625
    .local v9, "offset1":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/opengles/GLFrameRenderer$SnapshotThread;->this$0:Lcom/android/opengles/GLFrameRenderer;

    invoke-static {v14}, Lcom/android/opengles/GLFrameRenderer;->access$13(Lcom/android/opengles/GLFrameRenderer;)I

    move-result v14

    sub-int/2addr v14, v7

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/opengles/GLFrameRenderer$SnapshotThread;->this$0:Lcom/android/opengles/GLFrameRenderer;

    invoke-static {v15}, Lcom/android/opengles/GLFrameRenderer;->access$14(Lcom/android/opengles/GLFrameRenderer;)I

    move-result v15

    mul-int/2addr v14, v15

    mul-int/lit8 v10, v14, 0x4

    .line 626
    .local v10, "offset2":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/opengles/GLFrameRenderer$SnapshotThread;->this$0:Lcom/android/opengles/GLFrameRenderer;

    invoke-static {v14}, Lcom/android/opengles/GLFrameRenderer;->access$14(Lcom/android/opengles/GLFrameRenderer;)I

    move-result v14

    mul-int/lit8 v14, v14, 0x4

    if-lt v8, v14, :cond_2

    .line 623
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 627
    :cond_2
    add-int v14, v10, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/opengles/GLFrameRenderer$SnapshotThread;->this$0:Lcom/android/opengles/GLFrameRenderer;

    invoke-static {v15}, Lcom/android/opengles/GLFrameRenderer;->access$12(Lcom/android/opengles/GLFrameRenderer;)[B

    move-result-object v15

    add-int v16, v9, v8

    aget-byte v15, v15, v16

    aput-byte v15, v11, v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 626
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 641
    .end local v8    # "j":I
    .end local v9    # "offset1":I
    .end local v10    # "offset2":I
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "btBuf":Ljava/nio/ByteBuffer;
    .restart local v12    # "sd":Ljava/io/File;
    .restart local v13    # "tmpfile":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 643
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 649
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    .line 651
    .local v6, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 653
    if-eqz v3, :cond_0

    .line 655
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 656
    :catch_2
    move-exception v6

    .line 658
    .local v6, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 619
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "btBuf":Ljava/nio/ByteBuffer;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "i":I
    .end local v11    # "outBuffer":[B
    .end local v12    # "sd":Ljava/io/File;
    .end local v13    # "tmpfile":Ljava/lang/String;
    :catchall_0
    move-exception v14

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v14

    .line 652
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "btBuf":Ljava/nio/ByteBuffer;
    .restart local v7    # "i":I
    .restart local v11    # "outBuffer":[B
    .restart local v12    # "sd":Ljava/io/File;
    .restart local v13    # "tmpfile":Ljava/lang/String;
    :catchall_1
    move-exception v14

    .line 653
    if-eqz v3, :cond_3

    .line 655
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 660
    :cond_3
    :goto_4
    :try_start_a
    throw v14

    .line 656
    :catch_3
    move-exception v6

    .line 658
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 656
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    :catch_4
    move-exception v6

    .line 658
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2
.end method

.method public start()V
    .locals 1

    .prologue
    .line 612
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 613
    return-void
.end method
