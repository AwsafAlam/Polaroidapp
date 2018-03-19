.class public Lcom/fh/lib/FHSDK;
.super Ljava/lang/Object;
.source "FHSDK.java"


# static fields
.field public static final DECODE_TYPE_FFMPEG2OPENGL:I = 0x0

.field public static final DECODE_TYPE_FFMPEG2SDL:I = 0x2

.field public static final DECODE_TYPE_MEDIACODEC2GLVIEW:I = 0x4

.field public static final DECODE_TYPE_MEDIACODEC2OPENGL:I = 0x1

.field public static final DECODE_TYPE_MEDIACODEC2SDL:I = 0x3

.field public static final DEVICE_TYPE_3518E:I = 0x4

.field public static final DEVICE_TYPE_EYE:I = 0x6

.field public static final DEVICE_TYPE_FH8610:I = 0x1

.field public static final DEVICE_TYPE_FH8620:I = 0x2

.field public static final DEVICE_TYPE_FH8810:I = 0x3

.field public static final DEVICE_TYPE_GM8136:I = 0x5

.field public static final PLAY_TYPE_LOCATE_PLAYBACK:I = 0x3

.field public static final PLAY_TYPE_PREVIEW:I = 0x0

.field public static final PLAY_TYPE_REMOTE_PLAYBACK:I = 0x2

.field public static final PLAY_TYPE_RTSP:I = 0x4

.field public static final PLAY_TYPE_UDP:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "FHDEV_Discover"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    const-string v0, "FHDEV_Net"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    const-string v0, "FHMP4"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 37
    const-string v0, "main"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native FHclear()Z
.end method

.method public static native FHdraw(I)Z
.end method

.method public static native FHinit(II)I
.end method

.method public static native FHsnapshot(IIII)[B
.end method

.method public static native FHunInit(I)Z
.end method

.method public static native FHupdate(I[BII)Z
.end method

.method public static native FHupdate2(I[B[B[BII)Z
.end method

.method public static native FHviewport(IIII)Z
.end method

.method public static native apiCleanup()Z
.end method

.method public static native apiInit()Z
.end method

.method public static native audioInit()Z
.end method

.method public static native bind(II)Z
.end method

.method public static native clear()Z
.end method

.method public static native closeAudio(I)Z
.end method

.method public static native closeSearchPicture(I)Z
.end method

.method public static native closeSearchRecord(I)Z
.end method

.method public static native continuePBPlay()Z
.end method

.method public static native createBuffer(I)I
.end method

.method public static native createPicDownload(ILcom/fh/lib/Define$Picture;)I
.end method

.method public static native createWindow(I)I
.end method

.method public static native destoryPicDownload(I)Z
.end method

.method public static native destroyBuffer(I)I
.end method

.method public static native destroyWindow(I)Z
.end method

.method public static native draw(I)Z
.end method

.method public static native expandLookAt(IF)Z
.end method

.method public static native eyeLookAt(IFFF)Z
.end method

.method public static native frameParse(I[BI)Z
.end method

.method public static native getConvertProgress(I)I
.end method

.method public static native getCurrentPts()J
.end method

.method public static native getDevStatus()I
.end method

.method public static native getDeviceFlag(I)I
.end method

.method public static native getDeviceTime(ILcom/fh/lib/Define$DeviceTime;)Z
.end method

.method public static native getDisplayMode(I)I
.end method

.method public static native getEncodeVideoConfig(IILcom/fh/lib/Define$VideoEncode;)Z
.end method

.method public static native getFieldOfView(I)I
.end method

.method public static native getIPConfig(ILcom/fh/lib/Define$IpConfig;)Z
.end method

.method public static native getImagingType(I)I
.end method

.method public static native getInterruptFlag()Z
.end method

.method public static native getMDAlarm()I
.end method

.method public static native getMaxHDegress(I)F
.end method

.method public static native getMaxVDegress(I)F
.end method

.method public static native getMaxZDepth(I)F
.end method

.method public static native getMinHDegress(I)F
.end method

.method public static native getMinVDegress(I)F
.end method

.method public static native getRealAudioState()Z
.end method

.method public static native getRecPlayProgress()I
.end method

.method public static native getRecPlayTimeInfo(Lcom/fh/lib/Define$PBRecTime;)Z
.end method

.method public static native getRemoteRecordState(I)Z
.end method

.method public static native getSDCardFormatState(Lcom/fh/lib/Define$SDCardFormat;)Z
.end method

.method public static native getSDCardInfo(ILcom/fh/lib/Define$SDCardInfo;)Z
.end method

.method public static native getTalkUnitSize(I)I
.end method

.method public static native getVerticalCutRatio(I)F
.end method

.method public static native getVideoBCSS(ILcom/fh/lib/Define$BCSS;)Z
.end method

.method public static native getViewAngle(I)F
.end method

.method public static native getWifiConfig(ILcom/fh/lib/Define$WifiConfig;)Z
.end method

.method public static native init(II)Z
.end method

.method public static native is3DMode()Z
.end method

.method public static native isBind(I)Z
.end method

.method public static native jumpPlayBack(J)Z
.end method

.method public static native loadSDCard(I)Z
.end method

.method public static native locateContinuePBPlay()Z
.end method

.method public static native locateJumpPlayBack(I)Z
.end method

.method public static native locatePausePBPlay()Z
.end method

.method public static native login(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native logout(I)Z
.end method

.method public static native mirrorCtrl(II)Z
.end method

.method public static native openAudio(I)Z
.end method

.method public static native pausePBPlay()Z
.end method

.method public static native playFrame()Z
.end method

.method public static native printScreen(Ljava/lang/String;)V
.end method

.method public static native registerDevNotifyFun()Z
.end method

.method public static native registerDevStateFun()Z
.end method

.method public static native registerNotifyCallBack(Lcom/fh/lib/Define$CbDataInterface;)V
.end method

.method public static native registerStreamDataCallBack(Lcom/fh/lib/Define$StreamDataCallBackInterface;)V
.end method

.method public static native registerUpdateCallBack(Lcom/fh/lib/Define$YUVDataCallBackInterface;)V
.end method

.method public static native resetDev(I)Z
.end method

.method public static native resetEyeView(I)Z
.end method

.method public static native resetStandardCircle(I)Z
.end method

.method public static native restartDev(I)Z
.end method

.method public static native saveBMP([B[B[BII)Z
.end method

.method public static native saveDevConfig(I)Z
.end method

.method public static native searchCleanup()Z
.end method

.method public static native searchDev()I
.end method

.method public static native searchDevClose(I)Z
.end method

.method public static native searchInit()Z
.end method

.method public static native searchNextDev(ILcom/fh/lib/Define$DevSearch;)Z
.end method

.method public static native searchNextPicture(ILcom/fh/lib/Define$Picture;)Z
.end method

.method public static native searchNextRecord(ILcom/fh/lib/Define$Record;)Z
.end method

.method public static native searchPicture(ILcom/fh/lib/Define$PicSearch;)I
.end method

.method public static native searchRecord(ILcom/fh/lib/Define$RecSearch;)I
.end method

.method public static native send2Sdl([B[B[BII)Z
.end method

.method public static native sendSerial(I[BI)Z
.end method

.method public static native sendTalkData([BIII)Z
.end method

.method public static native sendToSerialPort(III[BI)Z
.end method

.method public static native set3DMode(Z)V
.end method

.method public static native setCryptKey(Ljava/lang/String;)Z
.end method

.method public static native setDebugMode(I[BII)Z
.end method

.method public static native setDevName(ILjava/lang/String;)Z
.end method

.method public static native setDeviceTime(ILcom/fh/lib/Define$DeviceTime;)Z
.end method

.method public static native setEncodeVideoConfig(IILcom/fh/lib/Define$VideoEncode;)Z
.end method

.method public static native setFieldOfView(II)Z
.end method

.method public static native setIPConfig(ILcom/fh/lib/Define$IpConfig;)Z
.end method

.method public static native setImagingType(II)Z
.end method

.method public static native setLocatePBSpeed(I)Z
.end method

.method public static native setPBSpeed(I)Z
.end method

.method public static native setPlayInfo(Lcom/fh/lib/PlayInfo;)I
.end method

.method public static native setShotOn()V
.end method

.method public static native setShotPath(Ljava/lang/String;)V
.end method

.method public static native setShowRect(Landroid/graphics/Rect;Z)Z
.end method

.method public static native setStandardCircle(IFFF)Z
.end method

.method public static native setVerticalCutRatio(IF)Z
.end method

.method public static native setVideoBCSS(ILcom/fh/lib/Define$BCSS;)Z
.end method

.method public static native setWifiConfig(ILcom/fh/lib/Define$WifiConfig;)Z
.end method

.method public static native setWifiSpeed(I)Z
.end method

.method public static native shot(ILjava/lang/String;Z)Z
.end method

.method public static native snapshot(IIII)[B
.end method

.method public static native startConvertRecFormat(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native startLocalRecord(Ljava/lang/String;)Z
.end method

.method public static native startLocalRecordMP4(IILjava/lang/String;)Z
.end method

.method public static native startPlay()Z
.end method

.method public static native startRemoteRecord(I)Z
.end method

.method public static native startSDCardFormat(II)Z
.end method

.method public static native startSerial(IIILcom/fh/lib/Define$SerialDataCallBackInterface;)I
.end method

.method public static native startSerialEx(IIIIZLcom/fh/lib/Define$SerialDataCallBackInterface;)I
.end method

.method public static native startTalk(I)Z
.end method

.method public static native stopConvertRecFormat(I)Z
.end method

.method public static native stopLocalRecord()Z
.end method

.method public static native stopLocalRecordMP4()Z
.end method

.method public static native stopPlay()Z
.end method

.method public static native stopRemoteRecord(I)Z
.end method

.method public static native stopSDCardFormat()Z
.end method

.method public static native stopSerial(I)Z
.end method

.method public static native stopTalk()Z
.end method

.method public static native testWifiConfig(ILcom/fh/lib/Define$WifiConfig;)Z
.end method

.method public static native timeConvert(IJ)Ljava/lang/String;
.end method

.method public static native unInit()Z
.end method

.method public static native unLoadSDCard(I)Z
.end method

.method public static native unbind(I)Z
.end method

.method public static native update(I[BII)Z
.end method

.method public static native viewport(IIII)Z
.end method

.method public static native yuv420sp2yuv([BII[B[B[B)Z
.end method

.method public static native yuv420sp2yuv420p([BII[B)Z
.end method
