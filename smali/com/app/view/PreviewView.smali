.class public Lcom/app/view/PreviewView;
.super Ljava/lang/Object;
.source "PreviewView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/view/PreviewView$MyControlThread;,
        Lcom/app/view/PreviewView$SendThread;
    }
.end annotation


# static fields
.field private static DEVICE_TYPE_FH8610:I = 0x0

.field private static DEVICE_TYPE_FH8620:I = 0x0

.field private static DEVICE_TYPE_FH8810:I = 0x0

.field private static final MENU_GONE:I = 0x2

.field private static final MUNE_AUTO_HIDE_TIME:I = 0xbb8

.field private static final MUNE_FLY_WAITING_TIME:I = 0xbb8

.field private static final MUNE_LAND_WAITING_TIME:I = 0xbb8

.field private static final MUNE_REV_WAITING_TIME:I = 0x1388

.field private static final NOTIFY_BACKGROUND_HIDE:I = 0x1

.field private static final NOTIFY_HIDE_BG:I = 0x7d4

.field private static final NOTIFY_QUIT:I = 0x0

.field private static final NOTIFY_REQUEST_I:I = 0x7d3

.field private static final NOTIFY_REV_WAITING:I = 0x2

.field private static final NOTIFY_TO_360RollClean:I = 0x5

.field private static final NOTIFY_TO_FLY:I = 0x3

.field private static final NOTIFY_TO_GRight:I = 0x6

.field private static final NOTIFY_TO_LAND:I = 0x4

.field private static final NOTIFY_TYPE_HIDE_BACKGROUND:I = 0x5

.field private static final NOTIFY_TYPE_PTS:I = 0x3

.field private static final NOTIFY_TYPE_REQUEST_I:I = 0x4

.field private static final NOTIFY_TYPE_SHOT_Fail:I = 0x1

.field private static final NOTIFY_TYPE_SHOT_FileName:I = 0x0

.field private static final NOTIFY_TYPE_STREAM_INFO:I = 0x2

.field private static final NOTIFY_UPDATE_STREAM_INFO:I = 0x3

.field private static final NOTIFY_VIEW_GONE:I = 0x0

.field public static PBStartTime:J = 0x0L

.field public static PBStopTime:J = 0x0L

.field private static final REC_PATH:Ljava/lang/String; = "/FHVideo/"

.field private static final SEEKBAR_MAX_NUM:I = 0x2710

.field private static final SHOT_Fail:I = 0x7d2

.field private static final SHOT_FileName:I = 0x7d1

.field private static final SPEED_1:I = 0x0

.field private static final SPEED_16:I = 0x4

.field private static final SPEED_1_16:I = 0xa

.field private static final SPEED_1_2:I = 0x7

.field private static final SPEED_1_4:I = 0x8

.field private static final SPEED_1_8:I = 0x9

.field private static final SPEED_2:I = 0x1

.field private static final SPEED_4:I = 0x2

.field private static final SPEED_8:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PreviewView"

.field private static final UPDATE_PROGRESS:I = 0x1

.field private static final audioType:[I

.field private static imageBg:Landroid/widget/ImageView;

.field private static instance:Lcom/app/view/PreviewView;

.field private static mTalk:Lcom/app/view/TalkThread;

.field private static strPBSpeed:[Ljava/lang/String;

.field public static talkFormat:I

.field public static talkSample:I


# instance fields
.field private CheckTouchTime:Ljava/lang/Runnable;

.field private CurrentTime:J

.field private OnCancelClickLister:Landroid/content/DialogInterface$OnClickListener;

.field private OnSaveClickLister:Landroid/content/DialogInterface$OnClickListener;

.field private OnSerialCancelClickLister:Landroid/content/DialogInterface$OnClickListener;

.field private PBCurrentSpeed:I

.field private PBVideoCurLen:J

.field private PBVideoLen:J

.field private ShowAllLayout:Ljava/lang/Runnable;

.field private bGetCurSensorBase:Z

.field private bar:Landroid/widget/ProgressBar;

.field private baseX:F

.field private baseY:F

.field private bcssDefObj:Lcom/fh/lib/Define$BCSS;

.field private bcssObj:Lcom/fh/lib/Define$BCSS;

.field private bntClickListener:Landroid/view/View$OnClickListener;

.field private btPBAudio:Landroid/widget/ImageButton;

.field private btPBFrame:Landroid/widget/ImageButton;

.field private btPBPlay:Landroid/widget/ImageButton;

.field private btPBSpeedDown:Landroid/widget/ImageButton;

.field private btPBSpeedUp:Landroid/widget/ImageButton;

.field private btn3D:Landroid/widget/ImageView;

.field private btn3DListener:Landroid/view/View$OnClickListener;

.field private btnAudio:Landroid/widget/Button;

.field private btnAudioSetListener:Landroid/view/View$OnClickListener;

.field private btnBCSS:Landroid/widget/Button;

.field private btnBCSSListener:Landroid/view/View$OnClickListener;

.field private btnBack:Landroid/widget/ImageView;

.field private btnBackListener:Landroid/view/View$OnClickListener;

.field private btnLocateRec:Landroid/widget/Button;

.field private btnLocateRecSetListener:Landroid/view/View$OnClickListener;

.field private btnLocateShot:Landroid/widget/Button;

.field private btnLocateShotSetListener:Landroid/view/View$OnClickListener;

.field private btnPBPlay:Landroid/widget/ImageView;

.field private btnPBSpeedDown:Landroid/widget/ImageView;

.field private btnPBSpeedUp:Landroid/widget/ImageView;

.field private btnRemoteRec:Landroid/widget/Button;

.field private btnRemoteRecSetListener:Landroid/view/View$OnClickListener;

.field private btnRemoteShot:Landroid/widget/Button;

.field private btnRemoteShotSetListener:Landroid/view/View$OnClickListener;

.field private btnSerial:Landroid/widget/Button;

.field private btnStreamChange:Landroid/widget/Button;

.field private btnTalk:Landroid/widget/Button;

.field private btnTalkSetListener:Landroid/view/View$OnClickListener;

.field checkSSIDThread:Ljava/lang/Runnable;

.field private connectSSID:Ljava/lang/String;

.field private controlLayout:Landroid/widget/RelativeLayout;

.field private currentSSID:Ljava/lang/String;

.field private dataFun:Lcom/fh/lib/Define$CbDataInterface;

.field disConnectWifiThread:Ljava/lang/Runnable;

.field private edtSerialInput:Landroid/widget/EditText;

.field private gravity_bg:[I

.field private hCheckSSID:Landroid/os/Handler;

.field private hDevNotify:Landroid/os/Handler;

.field private hRecTime:Landroid/os/Handler;

.field private handler:Landroid/os/Handler;

.field private haveDoneDisConnectWifi:Z

.field private inflater:Landroid/view/LayoutInflater;

.field private isAudioOpened:Z

.field private isGuijiMode:Z

.field private isPBAudioOn:Z

.field private isPBPause:Z

.field private isRecOn:Z

.field private isStopSendMsg:Z

.field private isTalkOpened:Z

.field private lastGetFrameTime:J

.field private layoutMenu:Landroid/widget/RelativeLayout;

.field private locatePBPlayListener:Landroid/view/View$OnClickListener;

.field private locatePBSpeedDownListener:Landroid/view/View$OnClickListener;

.field private locatePBSpeedUpListener:Landroid/view/View$OnClickListener;

.field private locateSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private m360RollValue:I

.field private mAirnValue:I

.field private mBitrateCmds:[Ljava/lang/String;

.field private mButton360Roll:Let/song/ui/widgets/ETButton;

.field private mButton3D:Let/song/ui/widgets/ETButton;

.field private mButtonAirn:Let/song/ui/widgets/ETButton;

.field private mButtonAlbum:Let/song/ui/widgets/ETButton;

.field private mButtonBack:Let/song/ui/widgets/ETButton;

.field private mButtonGRight:Let/song/ui/widgets/ETButton;

.field private mButtonGravity:Let/song/ui/widgets/ETButton;

.field private mButtonGuiJi:Let/song/ui/widgets/ETButton;

.field private mButtonHide:Let/song/ui/widgets/ETButton;

.field private mButtonNohead:Let/song/ui/widgets/ETButton;

.field private mButtonPhoto:Let/song/ui/widgets/ETButton;

.field private mButtonReco:Let/song/ui/widgets/ETButton;

.field private mButtonReco2:Let/song/ui/widgets/ETButton;

.field private mButtonRev:Let/song/ui/widgets/ETButton;

.field private mButtonSpeed:Let/song/ui/widgets/ETButton;

.field private mButtonStop:Let/song/ui/widgets/ETButton;

.field private mButtonToLand:Let/song/ui/widgets/ETButton;

.field private mButtonTofly:Let/song/ui/widgets/ETButton;

.field public mContext:Landroid/content/Context;

.field private mControlThread:Lcom/app/view/PreviewView$MyControlThread;

.field private mConvertRecThread:Lcom/app/view/ConvertRecThread;

.field private mExitTime:J

.field private mFrameRender:Lcom/android/opengles/GLFrameRenderer;

.field private mGRightValue:I

.field private mGravityValue:I

.field mHandler:Landroid/os/Handler;

.field private mLastTime:J

.field private mLastTouchTime:J

.field private mLeftRocker:Let/song/ui/widgets/ETLeftRocker;

.field private mMusic:I

.field private mNoheadValue:I

.field private mPBCurrentTime:Landroid/widget/TextView;

.field private mPBStopTime:Landroid/widget/TextView;

.field private mResolutionCmds:[Ljava/lang/String;

.field private mRightPlane:Let/song/ui/widgets/ETPlaneRocker;

.field private mRightRocker:Let/song/ui/widgets/ETRightRocker;

.field private mRockerFBValue:F

.field private mRockerRLValue:F

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSendThread:Lcom/app/view/PreviewView$SendThread;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSpeedValue:I

.field private mStopValue:I

.field private mToLandValue:I

.field private mToflyValue:I

.field private mTrimLeft:Let/song/ui/widgets/ETTrim;

.field private mTrimRight:Let/song/ui/widgets/ETTrim;

.field private mTrimSide:Let/song/ui/widgets/ETTBTrim;

.field private mWifiCfg:Lcom/app/util/WLANCfg;

.field private myBroadcastReciver:Landroid/content/BroadcastReceiver;

.field private pbFrameListener:Landroid/view/View$OnClickListener;

.field private pbPlayListener:Landroid/view/View$OnClickListener;

.field private pbSpeedDownListener:Landroid/view/View$OnClickListener;

.field private pbSpeedUpListener:Landroid/view/View$OnClickListener;

.field private recFilePath:Ljava/lang/String;

.field recTimeThread:Ljava/lang/Runnable;

.field private rightRockerRect:Landroid/graphics/Rect;

.field private secondCount:I

.field private seekBarBrightness:Landroid/widget/SeekBar;

.field private seekBarBrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private seekBarContrast:Landroid/widget/SeekBar;

.field private seekBarContrastChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private seekBarSaturation:Landroid/widget/SeekBar;

.field private seekBarSaturationChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private seekBarSharpness:Landroid/widget/SeekBar;

.field private seekBarSharpnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private sensorListener:Landroid/hardware/SensorEventListener;

.field private serialHandle:I

.field private showctr_bg:[I

.field private speed_bg:[I

.field public surfaceTouchListener:Landroid/view/View$OnTouchListener;

.field private tvBrightnessVal:Landroid/widget/TextView;

.field private tvContrastVal:Landroid/widget/TextView;

.field private tvPBSpeed:Landroid/widget/TextView;

.field private tvPBStatus:Landroid/widget/TextView;

.field private tvRecTime:Landroid/widget/TextView;

.field private tvSaturationVal:Landroid/widget/TextView;

.field private tvSharpnessVal:Landroid/widget/TextView;

.field private tvStreamInfo:Landroid/widget/TextView;

.field private view:Landroid/view/View;

.field public wifiActiveStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 106
    sput v2, Lcom/app/view/PreviewView;->DEVICE_TYPE_FH8610:I

    .line 107
    sput v4, Lcom/app/view/PreviewView;->DEVICE_TYPE_FH8620:I

    .line 108
    sput v5, Lcom/app/view/PreviewView;->DEVICE_TYPE_FH8810:I

    .line 110
    new-array v0, v4, [I

    aput v2, v0, v2

    sput-object v0, Lcom/app/view/PreviewView;->audioType:[I

    .line 132
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "x2"

    aput-object v1, v0, v2

    const-string v1, "x4"

    aput-object v1, v0, v4

    const-string v1, "x8"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "x16"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "1/2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "1/4"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "1/8"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "1/16"

    aput-object v2, v0, v1

    sput-object v0, Lcom/app/view/PreviewView;->strPBSpeed:[Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcom/app/view/PreviewView;->mTalk:Lcom/app/view/TalkThread;

    .line 148
    sput-wide v6, Lcom/app/view/PreviewView;->PBStartTime:J

    .line 149
    sput-wide v6, Lcom/app/view/PreviewView;->PBStopTime:J

    .line 154
    sput v3, Lcom/app/view/PreviewView;->talkFormat:I

    .line 155
    sput v3, Lcom/app/view/PreviewView;->talkSample:I

    .line 1934
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput v4, p0, Lcom/app/view/PreviewView;->PBCurrentSpeed:I

    .line 139
    iput-boolean v4, p0, Lcom/app/view/PreviewView;->isPBPause:Z

    .line 140
    iput-boolean v4, p0, Lcom/app/view/PreviewView;->isStopSendMsg:Z

    .line 141
    iput-boolean v4, p0, Lcom/app/view/PreviewView;->isPBAudioOn:Z

    .line 142
    iput-boolean v4, p0, Lcom/app/view/PreviewView;->isRecOn:Z

    .line 143
    iput-boolean v4, p0, Lcom/app/view/PreviewView;->isAudioOpened:Z

    .line 144
    iput-boolean v4, p0, Lcom/app/view/PreviewView;->isTalkOpened:Z

    .line 145
    iput v4, p0, Lcom/app/view/PreviewView;->secondCount:I

    .line 150
    iput-wide v6, p0, Lcom/app/view/PreviewView;->PBVideoLen:J

    .line 151
    iput-wide v6, p0, Lcom/app/view/PreviewView;->PBVideoCurLen:J

    .line 152
    sget-wide v0, Lcom/app/view/PreviewView;->PBStartTime:J

    iput-wide v0, p0, Lcom/app/view/PreviewView;->CurrentTime:J

    .line 180
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/app/view/PreviewView;->speed_bg:[I

    .line 181
    new-array v0, v8, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/app/view/PreviewView;->gravity_bg:[I

    .line 182
    new-array v0, v8, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/app/view/PreviewView;->showctr_bg:[I

    .line 185
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonBack:Let/song/ui/widgets/ETButton;

    .line 186
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonPhoto:Let/song/ui/widgets/ETButton;

    .line 187
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonReco:Let/song/ui/widgets/ETButton;

    .line 188
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonReco2:Let/song/ui/widgets/ETButton;

    .line 189
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonAlbum:Let/song/ui/widgets/ETButton;

    .line 190
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonSpeed:Let/song/ui/widgets/ETButton;

    .line 191
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonAirn:Let/song/ui/widgets/ETButton;

    .line 192
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonGravity:Let/song/ui/widgets/ETButton;

    .line 193
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonHide:Let/song/ui/widgets/ETButton;

    .line 194
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonRev:Let/song/ui/widgets/ETButton;

    .line 195
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButton3D:Let/song/ui/widgets/ETButton;

    .line 196
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonStop:Let/song/ui/widgets/ETButton;

    .line 197
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButton360Roll:Let/song/ui/widgets/ETButton;

    .line 198
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonTofly:Let/song/ui/widgets/ETButton;

    .line 199
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonToLand:Let/song/ui/widgets/ETButton;

    .line 200
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonNohead:Let/song/ui/widgets/ETButton;

    .line 201
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonGRight:Let/song/ui/widgets/ETButton;

    .line 202
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonGuiJi:Let/song/ui/widgets/ETButton;

    .line 205
    iput v5, p0, Lcom/app/view/PreviewView;->mRockerFBValue:F

    .line 206
    iput v5, p0, Lcom/app/view/PreviewView;->mRockerRLValue:F

    .line 207
    iput v4, p0, Lcom/app/view/PreviewView;->mSpeedValue:I

    .line 208
    iput v4, p0, Lcom/app/view/PreviewView;->mAirnValue:I

    .line 209
    iput v4, p0, Lcom/app/view/PreviewView;->mGravityValue:I

    .line 210
    iput v4, p0, Lcom/app/view/PreviewView;->mStopValue:I

    .line 211
    iput v4, p0, Lcom/app/view/PreviewView;->m360RollValue:I

    .line 212
    iput v4, p0, Lcom/app/view/PreviewView;->mToflyValue:I

    .line 213
    iput v4, p0, Lcom/app/view/PreviewView;->mToLandValue:I

    .line 214
    iput v4, p0, Lcom/app/view/PreviewView;->mNoheadValue:I

    .line 215
    iput v4, p0, Lcom/app/view/PreviewView;->mGRightValue:I

    .line 218
    iput-object v3, p0, Lcom/app/view/PreviewView;->mLeftRocker:Let/song/ui/widgets/ETLeftRocker;

    .line 219
    iput-object v3, p0, Lcom/app/view/PreviewView;->mRightRocker:Let/song/ui/widgets/ETRightRocker;

    .line 220
    iput-object v3, p0, Lcom/app/view/PreviewView;->mRightPlane:Let/song/ui/widgets/ETPlaneRocker;

    .line 221
    iput-boolean v4, p0, Lcom/app/view/PreviewView;->isGuijiMode:Z

    .line 223
    iput-object v3, p0, Lcom/app/view/PreviewView;->mTrimLeft:Let/song/ui/widgets/ETTrim;

    .line 224
    iput-object v3, p0, Lcom/app/view/PreviewView;->mTrimRight:Let/song/ui/widgets/ETTrim;

    .line 225
    iput-object v3, p0, Lcom/app/view/PreviewView;->mTrimSide:Let/song/ui/widgets/ETTBTrim;

    .line 226
    iput-wide v6, p0, Lcom/app/view/PreviewView;->mLastTime:J

    .line 229
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "VideoEncoder0.RateControl.Bitrate=u:2000\r\n"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    .line 230
    const-string v2, "VideoEncoder0.RateControl.Bitrate=u:1500\r\n"

    aput-object v2, v0, v1

    .line 231
    const-string v1, "VideoEncoder0.RateControl.Bitrate=u:1000\r\n"

    aput-object v1, v0, v8

    iput-object v0, p0, Lcom/app/view/PreviewView;->mBitrateCmds:[Ljava/lang/String;

    .line 233
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "VideoEncoder0.Resolution=s:720P\r\n"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    .line 234
    const-string v2, "VideoEncoder0.Resolution=s:VGA\r\n"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/app/view/PreviewView;->mResolutionCmds:[Ljava/lang/String;

    .line 236
    iput-object v3, p0, Lcom/app/view/PreviewView;->mSendThread:Lcom/app/view/PreviewView$SendThread;

    .line 237
    iput-wide v6, p0, Lcom/app/view/PreviewView;->mLastTouchTime:J

    .line 242
    iput-object v3, p0, Lcom/app/view/PreviewView;->mWifiCfg:Lcom/app/util/WLANCfg;

    .line 243
    iput-object v3, p0, Lcom/app/view/PreviewView;->mConvertRecThread:Lcom/app/view/ConvertRecThread;

    .line 244
    iput-object v3, p0, Lcom/app/view/PreviewView;->connectSSID:Ljava/lang/String;

    .line 245
    iput-object v3, p0, Lcom/app/view/PreviewView;->mControlThread:Lcom/app/view/PreviewView$MyControlThread;

    .line 247
    iput-object v3, p0, Lcom/app/view/PreviewView;->recFilePath:Ljava/lang/String;

    .line 249
    iput-wide v6, p0, Lcom/app/view/PreviewView;->lastGetFrameTime:J

    .line 250
    iput-boolean v4, p0, Lcom/app/view/PreviewView;->haveDoneDisConnectWifi:Z

    .line 252
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/app/view/PreviewView;->rightRockerRect:Landroid/graphics/Rect;

    .line 253
    iput-boolean v4, p0, Lcom/app/view/PreviewView;->bGetCurSensorBase:Z

    .line 254
    iput v5, p0, Lcom/app/view/PreviewView;->baseX:F

    iput v5, p0, Lcom/app/view/PreviewView;->baseY:F

    .line 827
    new-instance v0, Lcom/app/view/PreviewView$1;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$1;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->dataFun:Lcom/fh/lib/Define$CbDataInterface;

    .line 934
    new-instance v0, Lcom/app/view/PreviewView$2;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$2;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 960
    new-instance v0, Lcom/app/view/PreviewView$3;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$3;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->pbPlayListener:Landroid/view/View$OnClickListener;

    .line 981
    new-instance v0, Lcom/app/view/PreviewView$4;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$4;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->pbFrameListener:Landroid/view/View$OnClickListener;

    .line 995
    new-instance v0, Lcom/app/view/PreviewView$5;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$5;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->pbSpeedDownListener:Landroid/view/View$OnClickListener;

    .line 1016
    new-instance v0, Lcom/app/view/PreviewView$6;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$6;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->pbSpeedUpListener:Landroid/view/View$OnClickListener;

    .line 1039
    new-instance v0, Lcom/app/view/PreviewView$7;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$7;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->btnRemoteRecSetListener:Landroid/view/View$OnClickListener;

    .line 1065
    new-instance v0, Lcom/app/view/PreviewView$8;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$8;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->btnRemoteShotSetListener:Landroid/view/View$OnClickListener;

    .line 1130
    new-instance v0, Lcom/app/view/PreviewView$9;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$9;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->btnLocateRecSetListener:Landroid/view/View$OnClickListener;

    .line 1171
    new-instance v0, Lcom/app/view/PreviewView$10;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$10;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->btnLocateShotSetListener:Landroid/view/View$OnClickListener;

    .line 1199
    new-instance v0, Lcom/app/view/PreviewView$11;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$11;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->btnAudioSetListener:Landroid/view/View$OnClickListener;

    .line 1217
    new-instance v0, Lcom/app/view/PreviewView$12;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$12;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->btnTalkSetListener:Landroid/view/View$OnClickListener;

    .line 1243
    new-instance v0, Lcom/app/view/PreviewView$13;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$13;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->OnSerialCancelClickLister:Landroid/content/DialogInterface$OnClickListener;

    .line 1251
    new-instance v0, Lcom/app/view/PreviewView$14;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$14;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->btnBCSSListener:Landroid/view/View$OnClickListener;

    .line 1328
    new-instance v0, Lcom/app/view/PreviewView$15;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$15;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->OnSaveClickLister:Landroid/content/DialogInterface$OnClickListener;

    .line 1345
    new-instance v0, Lcom/app/view/PreviewView$16;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$16;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->OnCancelClickLister:Landroid/content/DialogInterface$OnClickListener;

    .line 1352
    new-instance v0, Lcom/app/view/PreviewView$17;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$17;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->seekBarBrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1369
    new-instance v0, Lcom/app/view/PreviewView$18;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$18;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->seekBarContrastChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1389
    new-instance v0, Lcom/app/view/PreviewView$19;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$19;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->seekBarSaturationChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1409
    new-instance v0, Lcom/app/view/PreviewView$20;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$20;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->seekBarSharpnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1429
    new-instance v0, Lcom/app/view/PreviewView$21;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$21;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->locateSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1457
    new-instance v0, Lcom/app/view/PreviewView$22;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$22;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->locatePBPlayListener:Landroid/view/View$OnClickListener;

    .line 1476
    new-instance v0, Lcom/app/view/PreviewView$23;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$23;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->locatePBSpeedDownListener:Landroid/view/View$OnClickListener;

    .line 1495
    new-instance v0, Lcom/app/view/PreviewView$24;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$24;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->locatePBSpeedUpListener:Landroid/view/View$OnClickListener;

    .line 1517
    new-instance v0, Lcom/app/view/PreviewView$25;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$25;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->btnBackListener:Landroid/view/View$OnClickListener;

    .line 1525
    new-instance v0, Lcom/app/view/PreviewView$26;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$26;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->btn3DListener:Landroid/view/View$OnClickListener;

    .line 1664
    iput-boolean v4, p0, Lcom/app/view/PreviewView;->wifiActiveStatus:Z

    .line 1685
    new-instance v0, Lcom/app/view/PreviewView$27;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$27;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->disConnectWifiThread:Ljava/lang/Runnable;

    .line 1710
    new-instance v0, Lcom/app/view/PreviewView$28;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$28;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->checkSSIDThread:Ljava/lang/Runnable;

    .line 1741
    new-instance v0, Lcom/app/view/PreviewView$29;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$29;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->recTimeThread:Ljava/lang/Runnable;

    .line 1771
    new-instance v0, Lcom/app/view/PreviewView$30;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$30;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->surfaceTouchListener:Landroid/view/View$OnTouchListener;

    .line 1840
    new-instance v0, Lcom/app/view/PreviewView$31;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$31;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->sensorListener:Landroid/hardware/SensorEventListener;

    .line 1901
    new-instance v0, Lcom/app/view/PreviewView$32;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$32;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->myBroadcastReciver:Landroid/content/BroadcastReceiver;

    .line 1935
    new-instance v0, Lcom/app/view/PreviewView$33;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$33;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->mHandler:Landroid/os/Handler;

    .line 2016
    new-instance v0, Lcom/app/view/PreviewView$34;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$34;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->ShowAllLayout:Ljava/lang/Runnable;

    .line 2022
    new-instance v0, Lcom/app/view/PreviewView$35;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$35;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->CheckTouchTime:Ljava/lang/Runnable;

    .line 2081
    new-instance v0, Lcom/app/view/PreviewView$36;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$36;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->bntClickListener:Landroid/view/View$OnClickListener;

    .line 266
    return-void

    .line 180
    :array_0
    .array-data 4
        0x7f02002e
        0x7f02002f
        0x7f020030
    .end array-data

    .line 181
    :array_1
    .array-data 4
        0x7f020017
        0x7f020018
    .end array-data

    .line 182
    :array_2
    .array-data 4
        0x7f02001c
        0x7f02002b
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput v4, p0, Lcom/app/view/PreviewView;->PBCurrentSpeed:I

    .line 139
    iput-boolean v4, p0, Lcom/app/view/PreviewView;->isPBPause:Z

    .line 140
    iput-boolean v4, p0, Lcom/app/view/PreviewView;->isStopSendMsg:Z

    .line 141
    iput-boolean v4, p0, Lcom/app/view/PreviewView;->isPBAudioOn:Z

    .line 142
    iput-boolean v4, p0, Lcom/app/view/PreviewView;->isRecOn:Z

    .line 143
    iput-boolean v4, p0, Lcom/app/view/PreviewView;->isAudioOpened:Z

    .line 144
    iput-boolean v4, p0, Lcom/app/view/PreviewView;->isTalkOpened:Z

    .line 145
    iput v4, p0, Lcom/app/view/PreviewView;->secondCount:I

    .line 150
    iput-wide v6, p0, Lcom/app/view/PreviewView;->PBVideoLen:J

    .line 151
    iput-wide v6, p0, Lcom/app/view/PreviewView;->PBVideoCurLen:J

    .line 152
    sget-wide v0, Lcom/app/view/PreviewView;->PBStartTime:J

    iput-wide v0, p0, Lcom/app/view/PreviewView;->CurrentTime:J

    .line 180
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/app/view/PreviewView;->speed_bg:[I

    .line 181
    new-array v0, v8, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/app/view/PreviewView;->gravity_bg:[I

    .line 182
    new-array v0, v8, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/app/view/PreviewView;->showctr_bg:[I

    .line 185
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonBack:Let/song/ui/widgets/ETButton;

    .line 186
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonPhoto:Let/song/ui/widgets/ETButton;

    .line 187
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonReco:Let/song/ui/widgets/ETButton;

    .line 188
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonReco2:Let/song/ui/widgets/ETButton;

    .line 189
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonAlbum:Let/song/ui/widgets/ETButton;

    .line 190
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonSpeed:Let/song/ui/widgets/ETButton;

    .line 191
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonAirn:Let/song/ui/widgets/ETButton;

    .line 192
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonGravity:Let/song/ui/widgets/ETButton;

    .line 193
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonHide:Let/song/ui/widgets/ETButton;

    .line 194
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonRev:Let/song/ui/widgets/ETButton;

    .line 195
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButton3D:Let/song/ui/widgets/ETButton;

    .line 196
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonStop:Let/song/ui/widgets/ETButton;

    .line 197
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButton360Roll:Let/song/ui/widgets/ETButton;

    .line 198
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonTofly:Let/song/ui/widgets/ETButton;

    .line 199
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonToLand:Let/song/ui/widgets/ETButton;

    .line 200
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonNohead:Let/song/ui/widgets/ETButton;

    .line 201
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonGRight:Let/song/ui/widgets/ETButton;

    .line 202
    iput-object v3, p0, Lcom/app/view/PreviewView;->mButtonGuiJi:Let/song/ui/widgets/ETButton;

    .line 205
    iput v5, p0, Lcom/app/view/PreviewView;->mRockerFBValue:F

    .line 206
    iput v5, p0, Lcom/app/view/PreviewView;->mRockerRLValue:F

    .line 207
    iput v4, p0, Lcom/app/view/PreviewView;->mSpeedValue:I

    .line 208
    iput v4, p0, Lcom/app/view/PreviewView;->mAirnValue:I

    .line 209
    iput v4, p0, Lcom/app/view/PreviewView;->mGravityValue:I

    .line 210
    iput v4, p0, Lcom/app/view/PreviewView;->mStopValue:I

    .line 211
    iput v4, p0, Lcom/app/view/PreviewView;->m360RollValue:I

    .line 212
    iput v4, p0, Lcom/app/view/PreviewView;->mToflyValue:I

    .line 213
    iput v4, p0, Lcom/app/view/PreviewView;->mToLandValue:I

    .line 214
    iput v4, p0, Lcom/app/view/PreviewView;->mNoheadValue:I

    .line 215
    iput v4, p0, Lcom/app/view/PreviewView;->mGRightValue:I

    .line 218
    iput-object v3, p0, Lcom/app/view/PreviewView;->mLeftRocker:Let/song/ui/widgets/ETLeftRocker;

    .line 219
    iput-object v3, p0, Lcom/app/view/PreviewView;->mRightRocker:Let/song/ui/widgets/ETRightRocker;

    .line 220
    iput-object v3, p0, Lcom/app/view/PreviewView;->mRightPlane:Let/song/ui/widgets/ETPlaneRocker;

    .line 221
    iput-boolean v4, p0, Lcom/app/view/PreviewView;->isGuijiMode:Z

    .line 223
    iput-object v3, p0, Lcom/app/view/PreviewView;->mTrimLeft:Let/song/ui/widgets/ETTrim;

    .line 224
    iput-object v3, p0, Lcom/app/view/PreviewView;->mTrimRight:Let/song/ui/widgets/ETTrim;

    .line 225
    iput-object v3, p0, Lcom/app/view/PreviewView;->mTrimSide:Let/song/ui/widgets/ETTBTrim;

    .line 226
    iput-wide v6, p0, Lcom/app/view/PreviewView;->mLastTime:J

    .line 229
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "VideoEncoder0.RateControl.Bitrate=u:2000\r\n"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    .line 230
    const-string v2, "VideoEncoder0.RateControl.Bitrate=u:1500\r\n"

    aput-object v2, v0, v1

    .line 231
    const-string v1, "VideoEncoder0.RateControl.Bitrate=u:1000\r\n"

    aput-object v1, v0, v8

    iput-object v0, p0, Lcom/app/view/PreviewView;->mBitrateCmds:[Ljava/lang/String;

    .line 233
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "VideoEncoder0.Resolution=s:720P\r\n"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    .line 234
    const-string v2, "VideoEncoder0.Resolution=s:VGA\r\n"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/app/view/PreviewView;->mResolutionCmds:[Ljava/lang/String;

    .line 236
    iput-object v3, p0, Lcom/app/view/PreviewView;->mSendThread:Lcom/app/view/PreviewView$SendThread;

    .line 237
    iput-wide v6, p0, Lcom/app/view/PreviewView;->mLastTouchTime:J

    .line 242
    iput-object v3, p0, Lcom/app/view/PreviewView;->mWifiCfg:Lcom/app/util/WLANCfg;

    .line 243
    iput-object v3, p0, Lcom/app/view/PreviewView;->mConvertRecThread:Lcom/app/view/ConvertRecThread;

    .line 244
    iput-object v3, p0, Lcom/app/view/PreviewView;->connectSSID:Ljava/lang/String;

    .line 245
    iput-object v3, p0, Lcom/app/view/PreviewView;->mControlThread:Lcom/app/view/PreviewView$MyControlThread;

    .line 247
    iput-object v3, p0, Lcom/app/view/PreviewView;->recFilePath:Ljava/lang/String;

    .line 249
    iput-wide v6, p0, Lcom/app/view/PreviewView;->lastGetFrameTime:J

    .line 250
    iput-boolean v4, p0, Lcom/app/view/PreviewView;->haveDoneDisConnectWifi:Z

    .line 252
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/app/view/PreviewView;->rightRockerRect:Landroid/graphics/Rect;

    .line 253
    iput-boolean v4, p0, Lcom/app/view/PreviewView;->bGetCurSensorBase:Z

    .line 254
    iput v5, p0, Lcom/app/view/PreviewView;->baseX:F

    iput v5, p0, Lcom/app/view/PreviewView;->baseY:F

    .line 827
    new-instance v0, Lcom/app/view/PreviewView$1;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$1;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->dataFun:Lcom/fh/lib/Define$CbDataInterface;

    .line 934
    new-instance v0, Lcom/app/view/PreviewView$2;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$2;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 960
    new-instance v0, Lcom/app/view/PreviewView$3;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$3;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->pbPlayListener:Landroid/view/View$OnClickListener;

    .line 981
    new-instance v0, Lcom/app/view/PreviewView$4;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$4;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->pbFrameListener:Landroid/view/View$OnClickListener;

    .line 995
    new-instance v0, Lcom/app/view/PreviewView$5;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$5;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->pbSpeedDownListener:Landroid/view/View$OnClickListener;

    .line 1016
    new-instance v0, Lcom/app/view/PreviewView$6;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$6;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->pbSpeedUpListener:Landroid/view/View$OnClickListener;

    .line 1039
    new-instance v0, Lcom/app/view/PreviewView$7;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$7;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->btnRemoteRecSetListener:Landroid/view/View$OnClickListener;

    .line 1065
    new-instance v0, Lcom/app/view/PreviewView$8;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$8;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->btnRemoteShotSetListener:Landroid/view/View$OnClickListener;

    .line 1130
    new-instance v0, Lcom/app/view/PreviewView$9;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$9;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->btnLocateRecSetListener:Landroid/view/View$OnClickListener;

    .line 1171
    new-instance v0, Lcom/app/view/PreviewView$10;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$10;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->btnLocateShotSetListener:Landroid/view/View$OnClickListener;

    .line 1199
    new-instance v0, Lcom/app/view/PreviewView$11;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$11;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->btnAudioSetListener:Landroid/view/View$OnClickListener;

    .line 1217
    new-instance v0, Lcom/app/view/PreviewView$12;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$12;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->btnTalkSetListener:Landroid/view/View$OnClickListener;

    .line 1243
    new-instance v0, Lcom/app/view/PreviewView$13;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$13;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->OnSerialCancelClickLister:Landroid/content/DialogInterface$OnClickListener;

    .line 1251
    new-instance v0, Lcom/app/view/PreviewView$14;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$14;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->btnBCSSListener:Landroid/view/View$OnClickListener;

    .line 1328
    new-instance v0, Lcom/app/view/PreviewView$15;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$15;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->OnSaveClickLister:Landroid/content/DialogInterface$OnClickListener;

    .line 1345
    new-instance v0, Lcom/app/view/PreviewView$16;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$16;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->OnCancelClickLister:Landroid/content/DialogInterface$OnClickListener;

    .line 1352
    new-instance v0, Lcom/app/view/PreviewView$17;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$17;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->seekBarBrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1369
    new-instance v0, Lcom/app/view/PreviewView$18;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$18;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->seekBarContrastChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1389
    new-instance v0, Lcom/app/view/PreviewView$19;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$19;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->seekBarSaturationChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1409
    new-instance v0, Lcom/app/view/PreviewView$20;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$20;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->seekBarSharpnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1429
    new-instance v0, Lcom/app/view/PreviewView$21;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$21;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->locateSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1457
    new-instance v0, Lcom/app/view/PreviewView$22;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$22;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->locatePBPlayListener:Landroid/view/View$OnClickListener;

    .line 1476
    new-instance v0, Lcom/app/view/PreviewView$23;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$23;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->locatePBSpeedDownListener:Landroid/view/View$OnClickListener;

    .line 1495
    new-instance v0, Lcom/app/view/PreviewView$24;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$24;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->locatePBSpeedUpListener:Landroid/view/View$OnClickListener;

    .line 1517
    new-instance v0, Lcom/app/view/PreviewView$25;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$25;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->btnBackListener:Landroid/view/View$OnClickListener;

    .line 1525
    new-instance v0, Lcom/app/view/PreviewView$26;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$26;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->btn3DListener:Landroid/view/View$OnClickListener;

    .line 1664
    iput-boolean v4, p0, Lcom/app/view/PreviewView;->wifiActiveStatus:Z

    .line 1685
    new-instance v0, Lcom/app/view/PreviewView$27;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$27;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->disConnectWifiThread:Ljava/lang/Runnable;

    .line 1710
    new-instance v0, Lcom/app/view/PreviewView$28;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$28;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->checkSSIDThread:Ljava/lang/Runnable;

    .line 1741
    new-instance v0, Lcom/app/view/PreviewView$29;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$29;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->recTimeThread:Ljava/lang/Runnable;

    .line 1771
    new-instance v0, Lcom/app/view/PreviewView$30;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$30;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->surfaceTouchListener:Landroid/view/View$OnTouchListener;

    .line 1840
    new-instance v0, Lcom/app/view/PreviewView$31;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$31;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->sensorListener:Landroid/hardware/SensorEventListener;

    .line 1901
    new-instance v0, Lcom/app/view/PreviewView$32;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$32;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->myBroadcastReciver:Landroid/content/BroadcastReceiver;

    .line 1935
    new-instance v0, Lcom/app/view/PreviewView$33;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$33;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->mHandler:Landroid/os/Handler;

    .line 2016
    new-instance v0, Lcom/app/view/PreviewView$34;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$34;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->ShowAllLayout:Ljava/lang/Runnable;

    .line 2022
    new-instance v0, Lcom/app/view/PreviewView$35;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$35;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->CheckTouchTime:Ljava/lang/Runnable;

    .line 2081
    new-instance v0, Lcom/app/view/PreviewView$36;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$36;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->bntClickListener:Landroid/view/View$OnClickListener;

    .line 268
    iput-object p1, p0, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    .line 269
    return-void

    .line 180
    :array_0
    .array-data 4
        0x7f02002e
        0x7f02002f
        0x7f020030
    .end array-data

    .line 181
    :array_1
    .array-data 4
        0x7f020017
        0x7f020018
    .end array-data

    .line 182
    :array_2
    .array-data 4
        0x7f02001c
        0x7f02002b
    .end array-data
.end method

.method private HideClick(I)V
    .locals 8
    .param p1, "val"    # I

    .prologue
    const v7, 0x7f0b000d

    const v6, 0x7f0b000c

    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2632
    if-ne p1, v3, :cond_3

    move v0, v2

    .line 2633
    .local v0, "ishide":I
    :goto_0
    iget-object v1, p0, Lcom/app/view/PreviewView;->mButtonHide:Let/song/ui/widgets/ETButton;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Let/song/ui/widgets/ETButton;->setTag(Ljava/lang/Object;)V

    .line 2634
    iget-object v1, p0, Lcom/app/view/PreviewView;->mButtonHide:Let/song/ui/widgets/ETButton;

    iget-object v4, p0, Lcom/app/view/PreviewView;->showctr_bg:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Let/song/ui/widgets/ETButton;->setBackgroundResource(I)V

    .line 2635
    if-ne v0, v3, :cond_4

    .line 2637
    iget-object v1, p0, Lcom/app/view/PreviewView;->mLeftRocker:Let/song/ui/widgets/ETLeftRocker;

    invoke-virtual {v1, v2}, Let/song/ui/widgets/ETLeftRocker;->setVisibility(I)V

    .line 2638
    iget-object v1, p0, Lcom/app/view/PreviewView;->mRightRocker:Let/song/ui/widgets/ETRightRocker;

    invoke-virtual {v1, v2}, Let/song/ui/widgets/ETRightRocker;->setVisibility(I)V

    .line 2639
    iget-object v1, p0, Lcom/app/view/PreviewView;->mTrimLeft:Let/song/ui/widgets/ETTrim;

    invoke-virtual {v1, v2}, Let/song/ui/widgets/ETTrim;->setVisibility(I)V

    .line 2640
    iget-object v1, p0, Lcom/app/view/PreviewView;->mTrimRight:Let/song/ui/widgets/ETTrim;

    invoke-virtual {v1, v2}, Let/song/ui/widgets/ETTrim;->setVisibility(I)V

    .line 2641
    iget-object v1, p0, Lcom/app/view/PreviewView;->mButtonAirn:Let/song/ui/widgets/ETButton;

    invoke-virtual {v1, v3}, Let/song/ui/widgets/ETButton;->setEnabled(Z)V

    .line 2642
    iget-object v1, p0, Lcom/app/view/PreviewView;->mButtonAirn:Let/song/ui/widgets/ETButton;

    invoke-virtual {v1, v3}, Let/song/ui/widgets/ETButton;->setStatus(Z)V

    .line 2644
    iget-object v1, p0, Lcom/app/view/PreviewView;->mButtonAirn:Let/song/ui/widgets/ETButton;

    invoke-virtual {v1}, Let/song/ui/widgets/ETButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v3, v1, :cond_0

    .line 2646
    iget-object v1, p0, Lcom/app/view/PreviewView;->mLeftRocker:Let/song/ui/widgets/ETLeftRocker;

    invoke-virtual {v1, v3}, Let/song/ui/widgets/ETLeftRocker;->setLock(Z)V

    .line 2647
    iget-object v1, p0, Lcom/app/view/PreviewView;->mLeftRocker:Let/song/ui/widgets/ETLeftRocker;

    iget-object v4, p0, Lcom/app/view/PreviewView;->mLeftRocker:Let/song/ui/widgets/ETLeftRocker;

    invoke-virtual {v4}, Let/song/ui/widgets/ETLeftRocker;->getMaxX()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v4}, Let/song/ui/widgets/ETLeftRocker;->setXV(I)V

    .line 2648
    iget-object v1, p0, Lcom/app/view/PreviewView;->mLeftRocker:Let/song/ui/widgets/ETLeftRocker;

    iget-object v4, p0, Lcom/app/view/PreviewView;->mLeftRocker:Let/song/ui/widgets/ETLeftRocker;

    invoke-virtual {v4}, Let/song/ui/widgets/ETLeftRocker;->getMaxY()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v4}, Let/song/ui/widgets/ETLeftRocker;->setYV(I)V

    .line 2649
    iget-object v1, p0, Lcom/app/view/PreviewView;->mLeftRocker:Let/song/ui/widgets/ETLeftRocker;

    invoke-virtual {v1}, Let/song/ui/widgets/ETLeftRocker;->Refresh()V

    .line 2652
    :cond_0
    iget v1, p0, Lcom/app/view/PreviewView;->mAirnValue:I

    if-ne v1, v3, :cond_1

    .line 2654
    iget-object v1, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2656
    :cond_1
    iget-object v1, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2657
    iget-object v1, p0, Lcom/app/view/PreviewView;->mSendThread:Lcom/app/view/PreviewView$SendThread;

    if-nez v1, :cond_2

    .line 2658
    new-instance v1, Lcom/app/view/PreviewView$SendThread;

    invoke-direct {v1, p0}, Lcom/app/view/PreviewView$SendThread;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v1, p0, Lcom/app/view/PreviewView;->mSendThread:Lcom/app/view/PreviewView$SendThread;

    .line 2659
    iget-object v1, p0, Lcom/app/view/PreviewView;->mSendThread:Lcom/app/view/PreviewView$SendThread;

    invoke-virtual {v1}, Lcom/app/view/PreviewView$SendThread;->start()V

    .line 2679
    :cond_2
    :goto_1
    return-void

    .end local v0    # "ishide":I
    :cond_3
    move v0, v3

    .line 2632
    goto/16 :goto_0

    .line 2664
    .restart local v0    # "ishide":I
    :cond_4
    iget-object v1, p0, Lcom/app/view/PreviewView;->mLeftRocker:Let/song/ui/widgets/ETLeftRocker;

    invoke-virtual {v1, v5}, Let/song/ui/widgets/ETLeftRocker;->setVisibility(I)V

    .line 2665
    iget-object v1, p0, Lcom/app/view/PreviewView;->mRightRocker:Let/song/ui/widgets/ETRightRocker;

    invoke-virtual {v1, v5}, Let/song/ui/widgets/ETRightRocker;->setVisibility(I)V

    .line 2667
    iget-object v1, p0, Lcom/app/view/PreviewView;->mTrimLeft:Let/song/ui/widgets/ETTrim;

    invoke-virtual {v1, v5}, Let/song/ui/widgets/ETTrim;->setVisibility(I)V

    .line 2668
    iget-object v1, p0, Lcom/app/view/PreviewView;->mTrimRight:Let/song/ui/widgets/ETTrim;

    invoke-virtual {v1, v5}, Let/song/ui/widgets/ETTrim;->setVisibility(I)V

    .line 2670
    iget-object v1, p0, Lcom/app/view/PreviewView;->mButtonAirn:Let/song/ui/widgets/ETButton;

    invoke-virtual {v1, v2}, Let/song/ui/widgets/ETButton;->setEnabled(Z)V

    .line 2671
    iget-object v1, p0, Lcom/app/view/PreviewView;->mButtonAirn:Let/song/ui/widgets/ETButton;

    invoke-virtual {v1, v2}, Let/song/ui/widgets/ETButton;->setStatus(Z)V

    .line 2672
    iget-object v1, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2673
    iget-object v1, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2674
    iget-object v1, p0, Lcom/app/view/PreviewView;->mSendThread:Lcom/app/view/PreviewView$SendThread;

    if-eqz v1, :cond_2

    .line 2675
    iget-object v1, p0, Lcom/app/view/PreviewView;->mSendThread:Lcom/app/view/PreviewView$SendThread;

    invoke-virtual {v1}, Lcom/app/view/PreviewView$SendThread;->cancel()V

    .line 2676
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/app/view/PreviewView;->mSendThread:Lcom/app/view/PreviewView$SendThread;

    goto :goto_1
.end method

.method private PhotoClick()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2588
    .local v10, "time":J
    iget-wide v0, p0, Lcom/app/view/PreviewView;->mLastTime:J

    sub-long v0, v10, v0

    const-wide/16 v12, 0x1f4

    cmp-long v0, v0, v12

    if-lez v0, :cond_1

    .line 2589
    iput-wide v10, p0, Lcom/app/view/PreviewView;->mLastTime:J

    .line 2590
    iget-object v0, p0, Lcom/app/view/PreviewView;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/app/view/PreviewView;->mMusic:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2591
    invoke-static {}, Lcom/fh/lib/FHSDK;->setShotOn()V

    .line 2592
    sget v0, Lcom/fh/lib/PlayInfo;->udpDevType:I

    if-eq v0, v9, :cond_0

    sget v0, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2594
    :cond_0
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v0

    invoke-virtual {v0}, Lmacrochip/app/newpl1200/SysApp;->getTransMode()I

    move-result v0

    if-ne v9, v0, :cond_2

    .line 2596
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v0

    invoke-virtual {v0}, Lmacrochip/app/newpl1200/SysApp;->udpStartPhoto()V

    .line 2611
    :cond_1
    :goto_0
    return-void

    .line 2600
    :cond_2
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v0

    invoke-virtual {v0}, Lmacrochip/app/newpl1200/SysApp;->tcpStartPhoto()V

    goto :goto_0

    .line 2604
    :cond_3
    sget v0, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    sget v0, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2606
    :cond_4
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2607
    .local v7, "df":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 2608
    .local v8, "name":Ljava/lang/String;
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "photo  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmacrochip/app/newpl1200/SysApp;->writeTCPCmd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private RecordClick(I)V
    .locals 10
    .param p1, "val"    # I

    .prologue
    .line 2480
    const/4 v7, 0x1

    if-ne p1, v7, :cond_7

    .line 2481
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonReco:Let/song/ui/widgets/ETButton;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Let/song/ui/widgets/ETButton;->setTag(Ljava/lang/Object;)V

    .line 2482
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonPhoto:Let/song/ui/widgets/ETButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Let/song/ui/widgets/ETButton;->setEnabled(Z)V

    .line 2483
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonPhoto:Let/song/ui/widgets/ETButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Let/song/ui/widgets/ETButton;->setStatus(Z)V

    .line 2484
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonAlbum:Let/song/ui/widgets/ETButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Let/song/ui/widgets/ETButton;->setEnabled(Z)V

    .line 2485
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonAlbum:Let/song/ui/widgets/ETButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Let/song/ui/widgets/ETButton;->setStatus(Z)V

    .line 2486
    iget-object v7, p0, Lcom/app/view/PreviewView;->tvRecTime:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2487
    iget-object v7, p0, Lcom/app/view/PreviewView;->hRecTime:Landroid/os/Handler;

    iget-object v8, p0, Lcom/app/view/PreviewView;->recTimeThread:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2488
    const/4 v7, 0x0

    iput v7, p0, Lcom/app/view/PreviewView;->secondCount:I

    .line 2489
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonRev:Let/song/ui/widgets/ETButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Let/song/ui/widgets/ETButton;->setEnabled(Z)V

    .line 2490
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonRev:Let/song/ui/widgets/ETButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Let/song/ui/widgets/ETButton;->setStatus(Z)V

    .line 2491
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonReco:Let/song/ui/widgets/ETButton;

    const v8, 0x7f020023

    invoke-virtual {v7, v8}, Let/song/ui/widgets/ETButton;->setBackgroundResource(I)V

    .line 2496
    sget v7, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    sget v7, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 2501
    :cond_0
    const/4 v7, 0x1

    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v8

    invoke-virtual {v8}, Lmacrochip/app/newpl1200/SysApp;->getTransMode()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 2503
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v7

    invoke-virtual {v7}, Lmacrochip/app/newpl1200/SysApp;->udpStopRecord()V

    .line 2516
    :cond_1
    :goto_0
    invoke-static {}, Lcom/fh/lib/FHSDK;->stopLocalRecord()Z

    .line 2518
    const/16 v7, 0x8

    iget-object v8, p0, Lcom/app/view/PreviewView;->mButtonReco2:Let/song/ui/widgets/ETButton;

    invoke-virtual {v8}, Let/song/ui/widgets/ETButton;->getVisibility()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 2520
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonReco2:Let/song/ui/widgets/ETButton;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Let/song/ui/widgets/ETButton;->setVisibility(I)V

    .line 2523
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2524
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v7, "filePath"

    iget-object v8, p0, Lcom/app/view/PreviewView;->recFilePath:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2525
    iget-object v7, p0, Lcom/app/view/PreviewView;->handler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 2526
    .local v4, "msg":Landroid/os/Message;
    const/16 v7, 0x7d1

    iput v7, v4, Landroid/os/Message;->what:I

    .line 2527
    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2528
    iget-object v7, p0, Lcom/app/view/PreviewView;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2584
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_3
    :goto_1
    return-void

    .line 2507
    :cond_4
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v7

    invoke-virtual {v7}, Lmacrochip/app/newpl1200/SysApp;->tcpStopRecord()V

    goto :goto_0

    .line 2512
    :cond_5
    sget v7, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_6

    sget v7, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    .line 2514
    :cond_6
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v7

    const-string v8, "end\r\n"

    invoke-virtual {v7, v8}, Lmacrochip/app/newpl1200/SysApp;->writeTCPCmd(Ljava/lang/String;)V

    goto :goto_0

    .line 2531
    :cond_7
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonReco:Let/song/ui/widgets/ETButton;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Let/song/ui/widgets/ETButton;->setTag(Ljava/lang/Object;)V

    .line 2532
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2533
    .local v3, "df":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 2534
    .local v5, "name":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lmacrochip/app/newpl1200/SysApp;->SAVE_PATH:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".H264"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2536
    .local v6, "path":Ljava/lang/String;
    iput-object v6, p0, Lcom/app/view/PreviewView;->recFilePath:Ljava/lang/String;

    .line 2538
    const-string v7, "PreviewView"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "===Record Path:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    invoke-static {v6}, Lcom/fh/lib/FHSDK;->startLocalRecord(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2541
    iget-object v7, p0, Lcom/app/view/PreviewView;->tvRecTime:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2542
    iget-object v7, p0, Lcom/app/view/PreviewView;->hRecTime:Landroid/os/Handler;

    iget-object v8, p0, Lcom/app/view/PreviewView;->recTimeThread:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2543
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonPhoto:Let/song/ui/widgets/ETButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Let/song/ui/widgets/ETButton;->setEnabled(Z)V

    .line 2544
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonPhoto:Let/song/ui/widgets/ETButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Let/song/ui/widgets/ETButton;->setStatus(Z)V

    .line 2545
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonAlbum:Let/song/ui/widgets/ETButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Let/song/ui/widgets/ETButton;->setEnabled(Z)V

    .line 2546
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonAlbum:Let/song/ui/widgets/ETButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Let/song/ui/widgets/ETButton;->setStatus(Z)V

    .line 2547
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonRev:Let/song/ui/widgets/ETButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Let/song/ui/widgets/ETButton;->setEnabled(Z)V

    .line 2548
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonRev:Let/song/ui/widgets/ETButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Let/song/ui/widgets/ETButton;->setStatus(Z)V

    .line 2550
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonReco:Let/song/ui/widgets/ETButton;

    const/high16 v8, 0x7f040000

    invoke-virtual {v7, v8}, Let/song/ui/widgets/ETButton;->setBackgroundResource(I)V

    .line 2551
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonReco:Let/song/ui/widgets/ETButton;

    invoke-virtual {v7}, Let/song/ui/widgets/ETButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 2552
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 2553
    const/16 v7, 0x8

    iget-object v8, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-ne v7, v8, :cond_8

    .line 2555
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonReco2:Let/song/ui/widgets/ETButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Let/song/ui/widgets/ETButton;->setVisibility(I)V

    .line 2556
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonReco2:Let/song/ui/widgets/ETButton;

    const/high16 v8, 0x7f040000

    invoke-virtual {v7, v8}, Let/song/ui/widgets/ETButton;->setBackgroundResource(I)V

    .line 2557
    iget-object v7, p0, Lcom/app/view/PreviewView;->mButtonReco2:Let/song/ui/widgets/ETButton;

    invoke-virtual {v7}, Let/song/ui/widgets/ETButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 2558
    .local v1, "animationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 2564
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v1    # "animationDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    :cond_8
    sget v7, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_9

    sget v7, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_b

    .line 2566
    :cond_9
    const/4 v7, 0x1

    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v8

    invoke-virtual {v8}, Lmacrochip/app/newpl1200/SysApp;->getTransMode()I

    move-result v8

    if-ne v7, v8, :cond_a

    .line 2568
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v7

    invoke-virtual {v7}, Lmacrochip/app/newpl1200/SysApp;->udpStartRecord()V

    goto/16 :goto_1

    .line 2572
    :cond_a
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v7

    invoke-virtual {v7}, Lmacrochip/app/newpl1200/SysApp;->tcpStartRecord()V

    goto/16 :goto_1

    .line 2575
    :cond_b
    sget v7, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_c

    sget v7, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    .line 2577
    :cond_c
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "begin "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmacrochip/app/newpl1200/SysApp;->writeTCPCmd(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lcom/app/view/PreviewView;)Lcom/app/util/WLANCfg;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/app/view/PreviewView;->mWifiCfg:Lcom/app/util/WLANCfg;

    return-object v0
.end method

.method static synthetic access$1(Lcom/app/view/PreviewView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/app/view/PreviewView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10(Lcom/app/view/PreviewView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/app/view/PreviewView;->tvPBSpeed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/app/view/PreviewView;->mButtonHide:Let/song/ui/widgets/ETButton;

    return-object v0
.end method

.method static synthetic access$101(Lcom/app/view/PreviewView;)V
    .locals 0

    .prologue
    .line 2046
    invoke-direct {p0}, Lcom/app/view/PreviewView;->sendMsgWaitRev()V

    return-void
.end method

.method static synthetic access$102(Lcom/app/view/PreviewView;I)V
    .locals 0

    .prologue
    .line 210
    iput p1, p0, Lcom/app/view/PreviewView;->mStopValue:I

    return-void
.end method

.method static synthetic access$103(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/app/view/PreviewView;->mButtonStop:Let/song/ui/widgets/ETButton;

    return-object v0
.end method

.method static synthetic access$104(Lcom/app/view/PreviewView;)V
    .locals 0

    .prologue
    .line 2053
    invoke-direct {p0}, Lcom/app/view/PreviewView;->sendMsgToFlyWait()V

    return-void
.end method

.method static synthetic access$105(Lcom/app/view/PreviewView;)V
    .locals 0

    .prologue
    .line 2060
    invoke-direct {p0}, Lcom/app/view/PreviewView;->sendMsgToLandWait()V

    return-void
.end method

.method static synthetic access$106(Lcom/app/view/PreviewView;)V
    .locals 0

    .prologue
    .line 2074
    invoke-direct {p0}, Lcom/app/view/PreviewView;->sendMsgGRightWait()V

    return-void
.end method

.method static synthetic access$107(Lcom/app/view/PreviewView;Z)V
    .locals 0

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/app/view/PreviewView;->isGuijiMode:Z

    return-void
.end method

.method static synthetic access$108(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETPlaneRocker;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/app/view/PreviewView;->mRightPlane:Let/song/ui/widgets/ETPlaneRocker;

    return-object v0
.end method

.method static synthetic access$109(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETTBTrim;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/app/view/PreviewView;->mTrimSide:Let/song/ui/widgets/ETTBTrim;

    return-object v0
.end method

.method static synthetic access$11()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/app/view/PreviewView;->strPBSpeed:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$110(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETTrim;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/app/view/PreviewView;->mTrimRight:Let/song/ui/widgets/ETTrim;

    return-object v0
.end method

.method static synthetic access$111(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/app/view/PreviewView;->mButtonGravity:Let/song/ui/widgets/ETButton;

    return-object v0
.end method

.method static synthetic access$112(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETTrim;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/app/view/PreviewView;->mTrimLeft:Let/song/ui/widgets/ETTrim;

    return-object v0
.end method

.method static synthetic access$113(Lcom/app/view/PreviewView;)Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/app/view/PreviewView;->isGuijiMode:Z

    return v0
.end method

.method static synthetic access$114(Lcom/app/view/PreviewView;)I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/app/view/PreviewView;->mAirnValue:I

    return v0
.end method

.method static synthetic access$115(Lcom/app/view/PreviewView;)I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/app/view/PreviewView;->mGRightValue:I

    return v0
.end method

.method static synthetic access$116(Lcom/app/view/PreviewView;)I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/app/view/PreviewView;->mSpeedValue:I

    return v0
.end method

.method static synthetic access$117(Lcom/app/view/PreviewView;)I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/app/view/PreviewView;->m360RollValue:I

    return v0
.end method

.method static synthetic access$118(Lcom/app/view/PreviewView;)I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/app/view/PreviewView;->mNoheadValue:I

    return v0
.end method

.method static synthetic access$119(Lcom/app/view/PreviewView;)I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/app/view/PreviewView;->mStopValue:I

    return v0
.end method

.method static synthetic access$12(Lcom/app/view/PreviewView;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/app/view/PreviewView;->btnRemoteRec:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$120(Lcom/app/view/PreviewView;)I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/app/view/PreviewView;->mToflyValue:I

    return v0
.end method

.method static synthetic access$121(Lcom/app/view/PreviewView;)I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/app/view/PreviewView;->mToLandValue:I

    return v0
.end method

.method static synthetic access$122(Lcom/app/view/PreviewView;J)V
    .locals 1

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/app/view/PreviewView;->CurrentTime:J

    return-void
.end method

.method static synthetic access$123(Lcom/app/view/PreviewView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/app/view/PreviewView;->mPBCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$124(Lcom/app/view/PreviewView;)J
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/app/view/PreviewView;->CurrentTime:J

    return-wide v0
.end method

.method static synthetic access$125(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/app/view/PreviewView;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$126(Lcom/app/view/PreviewView;J)V
    .locals 1

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/app/view/PreviewView;->PBVideoLen:J

    return-void
.end method

.method static synthetic access$127(Lcom/app/view/PreviewView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/app/view/PreviewView;->mPBStopTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$128(Lcom/app/view/PreviewView;)J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/app/view/PreviewView;->PBVideoLen:J

    return-wide v0
.end method

.method static synthetic access$129(Lcom/app/view/PreviewView;J)V
    .locals 1

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/app/view/PreviewView;->PBVideoCurLen:J

    return-void
.end method

.method static synthetic access$13(Lcom/app/view/PreviewView;)Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/app/view/PreviewView;->isRecOn:Z

    return v0
.end method

.method static synthetic access$130(Lcom/app/view/PreviewView;)J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/app/view/PreviewView;->PBVideoCurLen:J

    return-wide v0
.end method

.method static synthetic access$131(Lcom/app/view/PreviewView;Lcom/app/view/ConvertRecThread;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/app/view/PreviewView;->mConvertRecThread:Lcom/app/view/ConvertRecThread;

    return-void
.end method

.method static synthetic access$132(Lcom/app/view/PreviewView;)Lcom/app/view/ConvertRecThread;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/app/view/PreviewView;->mConvertRecThread:Lcom/app/view/ConvertRecThread;

    return-object v0
.end method

.method static synthetic access$14(Lcom/app/view/PreviewView;Z)V
    .locals 0

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/app/view/PreviewView;->isRecOn:Z

    return-void
.end method

.method static synthetic access$15(Lcom/app/view/PreviewView;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/app/view/PreviewView;->btnLocateRec:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$16(Lcom/app/view/PreviewView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/app/view/PreviewView;->tvRecTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/app/view/PreviewView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/app/view/PreviewView;->hRecTime:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$18(Lcom/app/view/PreviewView;I)V
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Lcom/app/view/PreviewView;->secondCount:I

    return-void
.end method

.method static synthetic access$19(Lcom/app/view/PreviewView;Z)V
    .locals 0

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/app/view/PreviewView;->isAudioOpened:Z

    return-void
.end method

.method static synthetic access$2(Lcom/app/view/PreviewView;)Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/app/view/PreviewView;->isStopSendMsg:Z

    return v0
.end method

.method static synthetic access$20(Lcom/app/view/PreviewView;)Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/app/view/PreviewView;->isAudioOpened:Z

    return v0
.end method

.method static synthetic access$21()[I
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/app/view/PreviewView;->audioType:[I

    return-object v0
.end method

.method static synthetic access$22(Lcom/app/view/PreviewView;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/app/view/PreviewView;->btnAudio:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$23(Lcom/app/view/PreviewView;)Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/app/view/PreviewView;->isTalkOpened:Z

    return v0
.end method

.method static synthetic access$24(Lcom/app/view/PreviewView;Z)V
    .locals 0

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/app/view/PreviewView;->isTalkOpened:Z

    return-void
.end method

.method static synthetic access$25(Lcom/app/view/PreviewView;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/app/view/PreviewView;->btnTalk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$26(Lcom/app/view/PreviewView;Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/app/view/PreviewView;->seekBarBrightness:Landroid/widget/SeekBar;

    return-void
.end method

.method static synthetic access$27(Lcom/app/view/PreviewView;Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/app/view/PreviewView;->seekBarContrast:Landroid/widget/SeekBar;

    return-void
.end method

.method static synthetic access$28(Lcom/app/view/PreviewView;Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/app/view/PreviewView;->seekBarSaturation:Landroid/widget/SeekBar;

    return-void
.end method

.method static synthetic access$29(Lcom/app/view/PreviewView;Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/app/view/PreviewView;->seekBarSharpness:Landroid/widget/SeekBar;

    return-void
.end method

.method static synthetic access$3(Lcom/app/view/PreviewView;Z)V
    .locals 0

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/app/view/PreviewView;->isStopSendMsg:Z

    return-void
.end method

.method static synthetic access$30(Lcom/app/view/PreviewView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/app/view/PreviewView;->tvBrightnessVal:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$31(Lcom/app/view/PreviewView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/app/view/PreviewView;->tvContrastVal:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$32(Lcom/app/view/PreviewView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/app/view/PreviewView;->tvSaturationVal:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$33(Lcom/app/view/PreviewView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/app/view/PreviewView;->tvSharpnessVal:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$34(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/app/view/PreviewView;->bcssObj:Lcom/fh/lib/Define$BCSS;

    return-object v0
.end method

.method static synthetic access$35(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/app/view/PreviewView;->bcssDefObj:Lcom/fh/lib/Define$BCSS;

    return-object v0
.end method

.method static synthetic access$36()I
    .locals 1

    .prologue
    .line 106
    sget v0, Lcom/app/view/PreviewView;->DEVICE_TYPE_FH8610:I

    return v0
.end method

.method static synthetic access$37(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/app/view/PreviewView;->seekBarBrightness:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$38(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/app/view/PreviewView;->seekBarContrast:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$39(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/app/view/PreviewView;->seekBarSaturation:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$4(Lcom/app/view/PreviewView;)Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/app/view/PreviewView;->isPBPause:Z

    return v0
.end method

.method static synthetic access$40(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/app/view/PreviewView;->seekBarSharpness:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$41()I
    .locals 1

    .prologue
    .line 107
    sget v0, Lcom/app/view/PreviewView;->DEVICE_TYPE_FH8620:I

    return v0
.end method

.method static synthetic access$42()I
    .locals 1

    .prologue
    .line 108
    sget v0, Lcom/app/view/PreviewView;->DEVICE_TYPE_FH8810:I

    return v0
.end method

.method static synthetic access$43(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/app/view/PreviewView;->seekBarBrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic access$44(Lcom/app/view/PreviewView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/app/view/PreviewView;->tvBrightnessVal:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$45(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/app/view/PreviewView;->seekBarContrastChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic access$46(Lcom/app/view/PreviewView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/app/view/PreviewView;->tvContrastVal:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$47(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/app/view/PreviewView;->seekBarSaturationChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic access$48(Lcom/app/view/PreviewView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/app/view/PreviewView;->tvSaturationVal:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$49(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/app/view/PreviewView;->seekBarSharpnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/app/view/PreviewView;Z)V
    .locals 0

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/app/view/PreviewView;->isPBPause:Z

    return-void
.end method

.method static synthetic access$50(Lcom/app/view/PreviewView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/app/view/PreviewView;->tvSharpnessVal:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$51(Lcom/app/view/PreviewView;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/app/view/PreviewView;->OnSaveClickLister:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$52(Lcom/app/view/PreviewView;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/app/view/PreviewView;->OnCancelClickLister:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$53(Lcom/app/view/PreviewView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/app/view/PreviewView;->btnPBPlay:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$54(Lcom/app/view/PreviewView;)Lcom/android/opengles/GLFrameRenderer;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/app/view/PreviewView;->mFrameRender:Lcom/android/opengles/GLFrameRenderer;

    return-object v0
.end method

.method static synthetic access$55(Lcom/app/view/PreviewView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/app/view/PreviewView;->connectSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$56(Lcom/app/view/PreviewView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/app/view/PreviewView;->hCheckSSID:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$57(Lcom/app/view/PreviewView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/app/view/PreviewView;->connectSSID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$58(Lcom/app/view/PreviewView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/app/view/PreviewView;->currentSSID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$59(Lcom/app/view/PreviewView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/app/view/PreviewView;->currentSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/app/view/PreviewView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/app/view/PreviewView;->tvPBStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$60(Lcom/app/view/PreviewView;)I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/app/view/PreviewView;->secondCount:I

    return v0
.end method

.method static synthetic access$61(Lcom/app/view/PreviewView;)V
    .locals 0

    .prologue
    .line 2038
    invoke-direct {p0}, Lcom/app/view/PreviewView;->resetMsgSendTime()V

    return-void
.end method

.method static synthetic access$62(Lcom/app/view/PreviewView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$63(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/app/view/PreviewView;->mButtonReco2:Let/song/ui/widgets/ETButton;

    return-object v0
.end method

.method static synthetic access$64(Lcom/app/view/PreviewView;J)V
    .locals 1

    .prologue
    .line 237
    iput-wide p1, p0, Lcom/app/view/PreviewView;->mLastTouchTime:J

    return-void
.end method

.method static synthetic access$65(Lcom/app/view/PreviewView;)I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/app/view/PreviewView;->mGravityValue:I

    return v0
.end method

.method static synthetic access$66(Lcom/app/view/PreviewView;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/app/view/PreviewView;->rightRockerRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$67(Lcom/app/view/PreviewView;Z)V
    .locals 0

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/app/view/PreviewView;->bGetCurSensorBase:Z

    return-void
.end method

.method static synthetic access$68(Lcom/app/view/PreviewView;F)V
    .locals 0

    .prologue
    .line 254
    iput p1, p0, Lcom/app/view/PreviewView;->baseX:F

    return-void
.end method

.method static synthetic access$69(Lcom/app/view/PreviewView;F)V
    .locals 0

    .prologue
    .line 254
    iput p1, p0, Lcom/app/view/PreviewView;->baseY:F

    return-void
.end method

.method static synthetic access$7(Lcom/app/view/PreviewView;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/app/view/PreviewView;->btPBPlay:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/app/view/PreviewView;->mRightRocker:Let/song/ui/widgets/ETRightRocker;

    return-object v0
.end method

.method static synthetic access$71(Lcom/app/view/PreviewView;)Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/app/view/PreviewView;->bGetCurSensorBase:Z

    return v0
.end method

.method static synthetic access$72(Lcom/app/view/PreviewView;)F
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/app/view/PreviewView;->baseX:F

    return v0
.end method

.method static synthetic access$73(Lcom/app/view/PreviewView;)F
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/app/view/PreviewView;->baseY:F

    return v0
.end method

.method static synthetic access$74(Lcom/app/view/PreviewView;F)V
    .locals 0

    .prologue
    .line 205
    iput p1, p0, Lcom/app/view/PreviewView;->mRockerFBValue:F

    return-void
.end method

.method static synthetic access$75(Lcom/app/view/PreviewView;F)V
    .locals 0

    .prologue
    .line 206
    iput p1, p0, Lcom/app/view/PreviewView;->mRockerRLValue:F

    return-void
.end method

.method static synthetic access$76(Lcom/app/view/PreviewView;)F
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/app/view/PreviewView;->mRockerFBValue:F

    return v0
.end method

.method static synthetic access$77(Lcom/app/view/PreviewView;)F
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/app/view/PreviewView;->mRockerRLValue:F

    return v0
.end method

.method static synthetic access$78(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/app/view/PreviewView;->mButtonReco:Let/song/ui/widgets/ETButton;

    return-object v0
.end method

.method static synthetic access$79(Lcom/app/view/PreviewView;I)V
    .locals 0

    .prologue
    .line 2478
    invoke-direct {p0, p1}, Lcom/app/view/PreviewView;->RecordClick(I)V

    return-void
.end method

.method static synthetic access$8(Lcom/app/view/PreviewView;)I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/app/view/PreviewView;->PBCurrentSpeed:I

    return v0
.end method

.method static synthetic access$80(Lcom/app/view/PreviewView;)V
    .locals 0

    .prologue
    .line 2585
    invoke-direct {p0}, Lcom/app/view/PreviewView;->PhotoClick()V

    return-void
.end method

.method static synthetic access$81(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/app/view/PreviewView;->mButtonRev:Let/song/ui/widgets/ETButton;

    return-object v0
.end method

.method static synthetic access$82(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/app/view/PreviewView;->mButtonTofly:Let/song/ui/widgets/ETButton;

    return-object v0
.end method

.method static synthetic access$83(Lcom/app/view/PreviewView;I)V
    .locals 0

    .prologue
    .line 212
    iput p1, p0, Lcom/app/view/PreviewView;->mToflyValue:I

    return-void
.end method

.method static synthetic access$84(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/app/view/PreviewView;->mButtonToLand:Let/song/ui/widgets/ETButton;

    return-object v0
.end method

.method static synthetic access$85(Lcom/app/view/PreviewView;I)V
    .locals 0

    .prologue
    .line 213
    iput p1, p0, Lcom/app/view/PreviewView;->mToLandValue:I

    return-void
.end method

.method static synthetic access$86(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/app/view/PreviewView;->mButton360Roll:Let/song/ui/widgets/ETButton;

    return-object v0
.end method

.method static synthetic access$87(Lcom/app/view/PreviewView;I)V
    .locals 0

    .prologue
    .line 211
    iput p1, p0, Lcom/app/view/PreviewView;->m360RollValue:I

    return-void
.end method

.method static synthetic access$88(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/app/view/PreviewView;->mButtonGRight:Let/song/ui/widgets/ETButton;

    return-object v0
.end method

.method static synthetic access$89(Lcom/app/view/PreviewView;I)V
    .locals 0

    .prologue
    .line 215
    iput p1, p0, Lcom/app/view/PreviewView;->mGRightValue:I

    return-void
.end method

.method static synthetic access$9(Lcom/app/view/PreviewView;I)V
    .locals 0

    .prologue
    .line 133
    iput p1, p0, Lcom/app/view/PreviewView;->PBCurrentSpeed:I

    return-void
.end method

.method static synthetic access$90(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/app/view/PreviewView;->mButton3D:Let/song/ui/widgets/ETButton;

    return-object v0
.end method

.method static synthetic access$91(Lcom/app/view/PreviewView;)J
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/app/view/PreviewView;->mLastTouchTime:J

    return-wide v0
.end method

.method static synthetic access$92(Lcom/app/view/PreviewView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/app/view/PreviewView;->CheckTouchTime:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$93(Lcom/app/view/PreviewView;I)V
    .locals 0

    .prologue
    .line 2630
    invoke-direct {p0, p1}, Lcom/app/view/PreviewView;->HideClick(I)V

    return-void
.end method

.method static synthetic access$94(Lcom/app/view/PreviewView;)[I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/app/view/PreviewView;->speed_bg:[I

    return-object v0
.end method

.method static synthetic access$95(Lcom/app/view/PreviewView;I)V
    .locals 0

    .prologue
    .line 207
    iput p1, p0, Lcom/app/view/PreviewView;->mSpeedValue:I

    return-void
.end method

.method static synthetic access$96(Lcom/app/view/PreviewView;I)V
    .locals 0

    .prologue
    .line 208
    iput p1, p0, Lcom/app/view/PreviewView;->mAirnValue:I

    return-void
.end method

.method static synthetic access$97(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETLeftRocker;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/app/view/PreviewView;->mLeftRocker:Let/song/ui/widgets/ETLeftRocker;

    return-object v0
.end method

.method static synthetic access$98(Lcom/app/view/PreviewView;I)V
    .locals 0

    .prologue
    .line 209
    iput p1, p0, Lcom/app/view/PreviewView;->mGravityValue:I

    return-void
.end method

.method static synthetic access$99(Lcom/app/view/PreviewView;)[I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/app/view/PreviewView;->gravity_bg:[I

    return-object v0
.end method

.method public static cb_data(I[BI)V
    .locals 0
    .param p0, "type"    # I
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 824
    return-void
.end method

.method public static getInstance()Lcom/app/view/PreviewView;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/app/view/PreviewView;->instance:Lcom/app/view/PreviewView;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/app/view/PreviewView;

    invoke-direct {v0}, Lcom/app/view/PreviewView;-><init>()V

    sput-object v0, Lcom/app/view/PreviewView;->instance:Lcom/app/view/PreviewView;

    .line 262
    :cond_0
    sget-object v0, Lcom/app/view/PreviewView;->instance:Lcom/app/view/PreviewView;

    return-object v0
.end method

.method public static getSDCardPath()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 1077
    const/4 v9, 0x0

    .line 1078
    .local v9, "sdcard_path":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 1079
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 1080
    .local v8, "sd_default":Ljava/lang/String;
    const-string v10, "text"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1082
    const/4 v10, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1086
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    .line 1087
    .local v7, "runtime":Ljava/lang/Runtime;
    const-string v10, "mount"

    invoke-virtual {v7, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 1088
    .local v6, "proc":Ljava/lang/Process;
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1089
    .local v3, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1091
    .local v4, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1092
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 1127
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "proc":Ljava/lang/Process;
    .end local v7    # "runtime":Ljava/lang/Runtime;
    :goto_1
    return-object v9

    .line 1093
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "proc":Ljava/lang/Process;
    .restart local v7    # "runtime":Ljava/lang/Runtime;
    :cond_2
    const-string v10, "secure"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1095
    const-string v10, "asec"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1097
    const-string v10, "fat"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "/mnt/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1098
    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1099
    .local v1, "columns":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v10, v1

    if-le v10, v12, :cond_1

    .line 1100
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v1, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1103
    const/4 v10, 0x1

    aget-object v9, v1, v10

    .line 1105
    goto :goto_0

    .end local v1    # "columns":[Ljava/lang/String;
    :cond_3
    const-string v10, "fuse"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "/mnt/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1106
    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1107
    .restart local v1    # "columns":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v10, v1

    if-le v10, v12, :cond_1

    .line 1108
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v1, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1111
    const/4 v10, 0x1

    aget-object v9, v1, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1115
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "proc":Ljava/lang/Process;
    .end local v7    # "runtime":Ljava/lang/Runtime;
    :catch_0
    move-exception v2

    .line 1117
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSettingPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 787
    const-string v0, "/FHVideo/"

    return-object v0
.end method

.method private resetMsgSendTime()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2042
    iget-object v0, p0, Lcom/app/view/PreviewView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2043
    iget-object v0, p0, Lcom/app/view/PreviewView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2045
    return-void
.end method

.method public static saveImageToGallery(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 792
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    sget-object v5, Lmacrochip/app/newpl1200/SysApp;->SAVE_DATA_PATH:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 793
    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 794
    const-string v4, "appDir is not exists!!"

    invoke-static {v4}, Lcom/app/util/log;->e(Ljava/lang/String;)V

    .line 819
    :goto_0
    return-void

    .line 799
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 801
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 802
    .local v3, "fos":Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 803
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 804
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 812
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 813
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 812
    invoke-static {v4, v5, p1, v6}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 818
    :goto_2
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "file://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 805
    :catch_0
    move-exception v1

    .line 806
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 807
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 808
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 814
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 815
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method private sendMsg360RollClean()V
    .locals 4

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/app/view/PreviewView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2073
    return-void
.end method

.method private sendMsgGRightWait()V
    .locals 4

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/app/view/PreviewView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2079
    return-void
.end method

.method private sendMsgToFlyWait()V
    .locals 4

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/app/view/PreviewView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2059
    return-void
.end method

.method private sendMsgToLandWait()V
    .locals 4

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/app/view/PreviewView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2066
    return-void
.end method

.method private sendMsgWaitRev()V
    .locals 4

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/app/view/PreviewView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2052
    return-void
.end method

.method public static startTalkThread()V
    .locals 1

    .prologue
    .line 1756
    new-instance v0, Lcom/app/view/TalkThread;

    invoke-direct {v0}, Lcom/app/view/TalkThread;-><init>()V

    sput-object v0, Lcom/app/view/PreviewView;->mTalk:Lcom/app/view/TalkThread;

    .line 1757
    sget-object v0, Lcom/app/view/PreviewView;->mTalk:Lcom/app/view/TalkThread;

    invoke-virtual {v0}, Lcom/app/view/TalkThread;->startRecording()V

    .line 1758
    return-void
.end method

.method public static stopTalkThread()V
    .locals 1

    .prologue
    .line 1760
    sget-object v0, Lcom/app/view/PreviewView;->mTalk:Lcom/app/view/TalkThread;

    if-eqz v0, :cond_0

    .line 1762
    sget-object v0, Lcom/app/view/PreviewView;->mTalk:Lcom/app/view/TalkThread;

    invoke-virtual {v0}, Lcom/app/view/TalkThread;->stopRecording()V

    .line 1763
    const/4 v0, 0x0

    sput-object v0, Lcom/app/view/PreviewView;->mTalk:Lcom/app/view/TalkThread;

    .line 1765
    :cond_0
    invoke-static {}, Lcom/fh/lib/FHSDK;->stopTalk()Z

    .line 1766
    return-void
.end method


# virtual methods
.method public Connect(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "SSID"    # Ljava/lang/String;
    .param p2, "Type"    # I

    .prologue
    const/4 v5, 0x0

    .line 1602
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v1, v5

    .line 1661
    :goto_0
    return v1

    .line 1606
    :cond_1
    const/4 v1, 0x0

    .line 1610
    .local v1, "netID":Z
    const/4 v2, 0x0

    .line 1612
    .local v2, "ssid":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/app/view/PreviewView;->mWifiCfg:Lcom/app/util/WLANCfg;

    invoke-virtual {v6}, Lcom/app/util/WLANCfg;->checkState()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 1614
    iget-object v6, p0, Lcom/app/view/PreviewView;->mWifiCfg:Lcom/app/util/WLANCfg;

    invoke-virtual {v6}, Lcom/app/util/WLANCfg;->openWifi()V

    .line 1615
    :goto_1
    iget-object v6, p0, Lcom/app/view/PreviewView;->mWifiCfg:Lcom/app/util/WLANCfg;

    invoke-virtual {v6}, Lcom/app/util/WLANCfg;->checkState()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    .line 1624
    :cond_2
    iget-object v6, p0, Lcom/app/view/PreviewView;->mWifiCfg:Lcom/app/util/WLANCfg;

    invoke-virtual {v6}, Lcom/app/util/WLANCfg;->checkState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 1627
    iget-object v6, p0, Lcom/app/view/PreviewView;->mWifiCfg:Lcom/app/util/WLANCfg;

    invoke-virtual {v6}, Lcom/app/util/WLANCfg;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 1630
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/app/view/PreviewView;->mWifiCfg:Lcom/app/util/WLANCfg;

    invoke-virtual {v6}, Lcom/app/util/WLANCfg;->getNetWordId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-lez v6, :cond_4

    move v1, v5

    .line 1631
    goto :goto_0

    .line 1617
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 1618
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1619
    :catch_0
    move-exception v6

    goto :goto_1

    .line 1635
    :cond_4
    move-object v2, p1

    .line 1639
    :cond_5
    :try_start_2
    iget-object v6, p0, Lcom/app/view/PreviewView;->mWifiCfg:Lcom/app/util/WLANCfg;

    iget-object v7, p0, Lcom/app/view/PreviewView;->mWifiCfg:Lcom/app/util/WLANCfg;

    invoke-virtual {v7}, Lcom/app/util/WLANCfg;->getNetWordId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/app/util/WLANCfg;->disConnectionWifi(I)V

    .line 1640
    iget-object v6, p0, Lcom/app/view/PreviewView;->mWifiCfg:Lcom/app/util/WLANCfg;

    invoke-virtual {v6}, Lcom/app/util/WLANCfg;->openWifi()V

    .line 1641
    iget-object v6, p0, Lcom/app/view/PreviewView;->mWifiCfg:Lcom/app/util/WLANCfg;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7, p2}, Lcom/app/util/WLANCfg;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 1643
    .local v4, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v4, :cond_6

    move v1, v5

    .line 1644
    goto :goto_0

    .line 1647
    :cond_6
    invoke-static {v2}, Lcom/app/util/WLANCfg;->IsExsits(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 1648
    .local v3, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_7

    .line 1649
    iget-object v5, p0, Lcom/app/view/PreviewView;->mWifiCfg:Lcom/app/util/WLANCfg;

    iget v6, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Lcom/app/util/WLANCfg;->removeNetWork(I)V

    .line 1652
    :cond_7
    iget-object v5, p0, Lcom/app/view/PreviewView;->mWifiCfg:Lcom/app/util/WLANCfg;

    invoke-virtual {v5, v4}, Lcom/app/util/WLANCfg;->addNetWork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    .line 1653
    iget-object v5, p0, Lcom/app/view/PreviewView;->mWifiCfg:Lcom/app/util/WLANCfg;

    invoke-virtual {v5}, Lcom/app/util/WLANCfg;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 1655
    iget-object v5, p0, Lcom/app/view/PreviewView;->mWifiCfg:Lcom/app/util/WLANCfg;

    invoke-virtual {v5}, Lcom/app/util/WLANCfg;->reconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1656
    .end local v3    # "tempConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :catch_1
    move-exception v0

    .line 1658
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public SetActiveCheckSSIDThread(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 1668
    iput-boolean p1, p0, Lcom/app/view/PreviewView;->wifiActiveStatus:Z

    .line 1683
    return-void
.end method

.method public createHandler()V
    .locals 1

    .prologue
    .line 656
    sget v0, Lcom/fh/lib/PlayInfo;->playType:I

    if-nez v0, :cond_0

    .line 658
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/app/view/PreviewView;->hRecTime:Landroid/os/Handler;

    .line 660
    :cond_0
    new-instance v0, Lcom/app/view/PreviewView$37;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView$37;-><init>(Lcom/app/view/PreviewView;)V

    iput-object v0, p0, Lcom/app/view/PreviewView;->handler:Landroid/os/Handler;

    .line 784
    return-void
.end method

.method public getLayoutMenuShow()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 646
    iget-object v1, p0, Lcom/app/view/PreviewView;->layoutMenu:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    .line 651
    :cond_0
    :goto_0
    return v0

    .line 648
    :cond_1
    iget-object v1, p0, Lcom/app/view/PreviewView;->layoutMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 651
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hideBackGround(Z)V
    .locals 4
    .param p1, "isHide"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1992
    if-eqz p1, :cond_3

    .line 1994
    sget-object v1, Lcom/app/view/PreviewView;->imageBg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_1

    .line 1996
    sget-object v1, Lcom/app/view/PreviewView;->imageBg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    const v2, 0x3cf5c28f    # 0.03f

    sub-float v0, v1, v2

    .line 1997
    .local v0, "alpha":F
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    .line 1998
    const/4 v0, 0x0

    .line 2000
    :cond_0
    sget-object v1, Lcom/app/view/PreviewView;->imageBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2001
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lmacrochip/app/newpl1200/SysApp;->bStreamGet:Z

    .line 2011
    .end local v0    # "alpha":F
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/app/view/PreviewView;->bar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2

    .line 2012
    iget-object v1, p0, Lcom/app/view/PreviewView;->bar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2013
    :cond_2
    return-void

    .line 2009
    :cond_3
    sget-object v1, Lcom/app/view/PreviewView;->imageBg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideExInfo()V
    .locals 2

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1898
    return-void
.end method

.method public layoutInit(Landroid/view/ViewGroup;)V
    .locals 9
    .param p1, "mLayout"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const/16 v5, 0x7f

    const/16 v4, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 310
    iget-object v2, p0, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/app/view/PreviewView;->inflater:Landroid/view/LayoutInflater;

    .line 311
    const/4 v2, 0x2

    sget v3, Lcom/fh/lib/PlayInfo;->playType:I

    if-ne v2, v3, :cond_1

    .line 313
    iget-object v2, p0, Lcom/app/view/PreviewView;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030020

    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    .line 314
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 317
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0021

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mSeekBar:Landroid/widget/SeekBar;

    .line 318
    iget-object v2, p0, Lcom/app/view/PreviewView;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 319
    iget-object v2, p0, Lcom/app/view/PreviewView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/app/view/PreviewView;->seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 321
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0075

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mPBCurrentTime:Landroid/widget/TextView;

    .line 322
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0072

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mPBStopTime:Landroid/widget/TextView;

    .line 323
    iget-object v2, p0, Lcom/app/view/PreviewView;->mPBCurrentTime:Landroid/widget/TextView;

    sget v3, Lcom/fh/lib/PlayInfo;->userID:I

    sget-wide v4, Lcom/app/view/PreviewView;->PBStartTime:J

    invoke-static {v3, v4, v5}, Lcom/fh/lib/FHSDK;->timeConvert(IJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v2, p0, Lcom/app/view/PreviewView;->mPBStopTime:Landroid/widget/TextView;

    sget v3, Lcom/fh/lib/PlayInfo;->userID:I

    sget-wide v4, Lcom/app/view/PreviewView;->PBStopTime:J

    invoke-static {v3, v4, v5}, Lcom/fh/lib/FHSDK;->timeConvert(IJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/app/view/PreviewView;->tvPBSpeed:Landroid/widget/TextView;

    .line 327
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b007e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/app/view/PreviewView;->tvPBStatus:Landroid/widget/TextView;

    .line 328
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0079

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->btPBPlay:Landroid/widget/ImageButton;

    .line 329
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b007a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->btPBFrame:Landroid/widget/ImageButton;

    .line 330
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b007b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->btPBSpeedDown:Landroid/widget/ImageButton;

    .line 331
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b007c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->btPBSpeedUp:Landroid/widget/ImageButton;

    .line 332
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b007d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->btPBAudio:Landroid/widget/ImageButton;

    .line 334
    iget-object v2, p0, Lcom/app/view/PreviewView;->btPBPlay:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->pbPlayListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v2, p0, Lcom/app/view/PreviewView;->btPBFrame:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->pbFrameListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v2, p0, Lcom/app/view/PreviewView;->btPBSpeedDown:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->pbSpeedDownListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v2, p0, Lcom/app/view/PreviewView;->btPBSpeedUp:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->pbSpeedUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    :goto_0
    invoke-virtual {p0}, Lcom/app/view/PreviewView;->createHandler()V

    .line 563
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/app/view/PreviewView;->hRecTime:Landroid/os/Handler;

    .line 565
    iget-object v2, p0, Lcom/app/view/PreviewView;->dataFun:Lcom/fh/lib/Define$CbDataInterface;

    invoke-static {v2}, Lcom/fh/lib/FHSDK;->registerNotifyCallBack(Lcom/fh/lib/Define$CbDataInterface;)V

    .line 566
    invoke-static {}, Lcom/android/opengles/GLFrameRenderer;->getInstance()Lcom/android/opengles/GLFrameRenderer;

    move-result-object v2

    iput-object v2, p0, Lcom/app/view/PreviewView;->mFrameRender:Lcom/android/opengles/GLFrameRenderer;

    .line 568
    sget v2, Lcom/fh/lib/PlayInfo;->decodeType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 570
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    .line 571
    .local v1, "s":Landroid/view/SurfaceView;
    iget-object v2, p0, Lcom/app/view/PreviewView;->surfaceTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 582
    .end local v1    # "s":Landroid/view/SurfaceView;
    :cond_0
    :goto_1
    return-void

    .line 341
    :cond_1
    sget v2, Lcom/fh/lib/PlayInfo;->playType:I

    if-nez v2, :cond_2

    .line 343
    iget-object v2, p0, Lcom/app/view/PreviewView;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03002b

    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    .line 344
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 346
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b00ad

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/app/view/PreviewView;->btnRemoteRec:Landroid/widget/Button;

    .line 347
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b00ae

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/app/view/PreviewView;->btnRemoteShot:Landroid/widget/Button;

    .line 348
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b00af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/app/view/PreviewView;->btnLocateRec:Landroid/widget/Button;

    .line 349
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b00b0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/app/view/PreviewView;->btnLocateShot:Landroid/widget/Button;

    .line 350
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b00b1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/app/view/PreviewView;->btnAudio:Landroid/widget/Button;

    .line 351
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b00b2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/app/view/PreviewView;->btnTalk:Landroid/widget/Button;

    .line 352
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b00b3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/app/view/PreviewView;->btnStreamChange:Landroid/widget/Button;

    .line 353
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b00b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/app/view/PreviewView;->btnSerial:Landroid/widget/Button;

    .line 354
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b00b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/app/view/PreviewView;->btnBCSS:Landroid/widget/Button;

    .line 355
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0008

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/app/view/PreviewView;->tvRecTime:Landroid/widget/TextView;

    .line 356
    iget-object v2, p0, Lcom/app/view/PreviewView;->tvRecTime:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    iget-object v2, p0, Lcom/app/view/PreviewView;->btnRemoteRec:Landroid/widget/Button;

    iget-object v3, p0, Lcom/app/view/PreviewView;->btnRemoteRecSetListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v2, p0, Lcom/app/view/PreviewView;->btnRemoteShot:Landroid/widget/Button;

    iget-object v3, p0, Lcom/app/view/PreviewView;->btnRemoteShotSetListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v2, p0, Lcom/app/view/PreviewView;->btnLocateRec:Landroid/widget/Button;

    iget-object v3, p0, Lcom/app/view/PreviewView;->btnLocateRecSetListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v2, p0, Lcom/app/view/PreviewView;->btnLocateShot:Landroid/widget/Button;

    iget-object v3, p0, Lcom/app/view/PreviewView;->btnLocateShotSetListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v2, p0, Lcom/app/view/PreviewView;->btnAudio:Landroid/widget/Button;

    iget-object v3, p0, Lcom/app/view/PreviewView;->btnAudioSetListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v2, p0, Lcom/app/view/PreviewView;->btnTalk:Landroid/widget/Button;

    iget-object v3, p0, Lcom/app/view/PreviewView;->btnTalkSetListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v2, p0, Lcom/app/view/PreviewView;->btnBCSS:Landroid/widget/Button;

    iget-object v3, p0, Lcom/app/view/PreviewView;->btnBCSSListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b00ac

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/app/view/PreviewView;->tvStreamInfo:Landroid/widget/TextView;

    .line 372
    new-instance v2, Lcom/fh/lib/Define$BCSS;

    new-instance v3, Lcom/fh/lib/Define;

    invoke-direct {v3}, Lcom/fh/lib/Define;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/fh/lib/Define$BCSS;-><init>(Lcom/fh/lib/Define;)V

    iput-object v2, p0, Lcom/app/view/PreviewView;->bcssObj:Lcom/fh/lib/Define$BCSS;

    .line 373
    new-instance v2, Lcom/fh/lib/Define$BCSS;

    new-instance v3, Lcom/fh/lib/Define;

    invoke-direct {v3}, Lcom/fh/lib/Define;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/fh/lib/Define$BCSS;-><init>(Lcom/fh/lib/Define;)V

    iput-object v2, p0, Lcom/app/view/PreviewView;->bcssDefObj:Lcom/fh/lib/Define$BCSS;

    .line 375
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b005d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/app/view/PreviewView;->layoutMenu:Landroid/widget/RelativeLayout;

    .line 376
    iget-object v2, p0, Lcom/app/view/PreviewView;->layoutMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 379
    :cond_2
    sget v2, Lcom/fh/lib/PlayInfo;->playType:I

    if-eq v7, v2, :cond_3

    const/4 v2, 0x4

    sget v3, Lcom/fh/lib/PlayInfo;->playType:I

    if-ne v2, v3, :cond_5

    .line 381
    :cond_3
    iget-object v2, p0, Lcom/app/view/PreviewView;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030002

    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    .line 382
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 384
    new-instance v2, Let/song/ui/widgets/ETButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Let/song/ui/widgets/ETButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/app/view/PreviewView;->mButtonReco2:Let/song/ui/widgets/ETButton;

    .line 385
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 386
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonReco2:Let/song/ui/widgets/ETButton;

    invoke-virtual {v2, v0}, Let/song/ui/widgets/ETButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonReco2:Let/song/ui/widgets/ETButton;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 388
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonReco2:Let/song/ui/widgets/ETButton;

    invoke-virtual {v2, v4}, Let/song/ui/widgets/ETButton;->setVisibility(I)V

    .line 390
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/app/view/PreviewView;->tvStreamInfo:Landroid/widget/TextView;

    .line 391
    iget-object v2, p0, Lcom/app/view/PreviewView;->tvStreamInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 393
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b003b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mButtonBack:Let/song/ui/widgets/ETButton;

    .line 394
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonBack:Let/song/ui/widgets/ETButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->bntClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b003c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mButtonPhoto:Let/song/ui/widgets/ETButton;

    .line 396
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonPhoto:Let/song/ui/widgets/ETButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->bntClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b003d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mButtonReco:Let/song/ui/widgets/ETButton;

    .line 398
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonReco:Let/song/ui/widgets/ETButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->bntClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonReco:Let/song/ui/widgets/ETButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setTag(Ljava/lang/Object;)V

    .line 400
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0008

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/app/view/PreviewView;->tvRecTime:Landroid/widget/TextView;

    .line 401
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b003e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mButtonAlbum:Let/song/ui/widgets/ETButton;

    .line 402
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonAlbum:Let/song/ui/widgets/ETButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->bntClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0042

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mButtonHide:Let/song/ui/widgets/ETButton;

    .line 404
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonHide:Let/song/ui/widgets/ETButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->bntClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonHide:Let/song/ui/widgets/ETButton;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setTag(Ljava/lang/Object;)V

    .line 408
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Lcom/app/view/PreviewView;->imageBg:Landroid/widget/ImageView;

    .line 409
    sget-object v2, Lcom/app/view/PreviewView;->imageBg:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 411
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/app/view/PreviewView;->bar:Landroid/widget/ProgressBar;

    .line 415
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b003f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mButtonSpeed:Let/song/ui/widgets/ETButton;

    .line 416
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonSpeed:Let/song/ui/widgets/ETButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->bntClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonSpeed:Let/song/ui/widgets/ETButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setTag(Ljava/lang/Object;)V

    .line 418
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0040

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mButtonAirn:Let/song/ui/widgets/ETButton;

    .line 419
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonAirn:Let/song/ui/widgets/ETButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->bntClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonAirn:Let/song/ui/widgets/ETButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setTag(Ljava/lang/Object;)V

    .line 421
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0041

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mButtonGravity:Let/song/ui/widgets/ETButton;

    .line 422
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonGravity:Let/song/ui/widgets/ETButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->bntClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonGravity:Let/song/ui/widgets/ETButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setTag(Ljava/lang/Object;)V

    .line 424
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0043

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mButtonRev:Let/song/ui/widgets/ETButton;

    .line 425
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonRev:Let/song/ui/widgets/ETButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->bntClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonRev:Let/song/ui/widgets/ETButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setTag(Ljava/lang/Object;)V

    .line 427
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0044

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mButton3D:Let/song/ui/widgets/ETButton;

    .line 428
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButton3D:Let/song/ui/widgets/ETButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->bntClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButton3D:Let/song/ui/widgets/ETButton;

    const v3, 0x7f020011

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setBackgroundResource(I)V

    .line 431
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButton3D:Let/song/ui/widgets/ETButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setTag(Ljava/lang/Object;)V

    .line 433
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0045

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mButtonStop:Let/song/ui/widgets/ETButton;

    .line 434
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonStop:Let/song/ui/widgets/ETButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->bntClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonStop:Let/song/ui/widgets/ETButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setTag(Ljava/lang/Object;)V

    .line 436
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0046

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mButton360Roll:Let/song/ui/widgets/ETButton;

    .line 437
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButton360Roll:Let/song/ui/widgets/ETButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->bntClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButton360Roll:Let/song/ui/widgets/ETButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setTag(Ljava/lang/Object;)V

    .line 439
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0035

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mButtonTofly:Let/song/ui/widgets/ETButton;

    .line 440
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonTofly:Let/song/ui/widgets/ETButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->bntClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonTofly:Let/song/ui/widgets/ETButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setTag(Ljava/lang/Object;)V

    .line 442
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mButtonToLand:Let/song/ui/widgets/ETButton;

    .line 443
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonToLand:Let/song/ui/widgets/ETButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->bntClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonToLand:Let/song/ui/widgets/ETButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setTag(Ljava/lang/Object;)V

    .line 449
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0047

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mButtonGRight:Let/song/ui/widgets/ETButton;

    .line 450
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonGRight:Let/song/ui/widgets/ETButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->bntClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonGRight:Let/song/ui/widgets/ETButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setTag(Ljava/lang/Object;)V

    .line 452
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETButton;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mButtonGuiJi:Let/song/ui/widgets/ETButton;

    .line 453
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonGuiJi:Let/song/ui/widgets/ETButton;

    iget-object v3, p0, Lcom/app/view/PreviewView;->bntClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v2, p0, Lcom/app/view/PreviewView;->mButtonGuiJi:Let/song/ui/widgets/ETButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Let/song/ui/widgets/ETButton;->setTag(Ljava/lang/Object;)V

    .line 463
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0038

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETLeftRocker;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mLeftRocker:Let/song/ui/widgets/ETLeftRocker;

    .line 464
    iget-object v2, p0, Lcom/app/view/PreviewView;->mLeftRocker:Let/song/ui/widgets/ETLeftRocker;

    invoke-virtual {v2, v6}, Let/song/ui/widgets/ETLeftRocker;->setLock(Z)V

    .line 465
    iget-object v2, p0, Lcom/app/view/PreviewView;->mLeftRocker:Let/song/ui/widgets/ETLeftRocker;

    invoke-virtual {v2, v5}, Let/song/ui/widgets/ETLeftRocker;->setMaxX(I)V

    .line 466
    iget-object v2, p0, Lcom/app/view/PreviewView;->mLeftRocker:Let/song/ui/widgets/ETLeftRocker;

    invoke-virtual {v2, v5}, Let/song/ui/widgets/ETLeftRocker;->setMaxY(I)V

    .line 469
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0039

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETRightRocker;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mRightRocker:Let/song/ui/widgets/ETRightRocker;

    .line 470
    iget-object v2, p0, Lcom/app/view/PreviewView;->mRightRocker:Let/song/ui/widgets/ETRightRocker;

    invoke-virtual {v2, v5}, Let/song/ui/widgets/ETRightRocker;->setMaxX(I)V

    .line 471
    iget-object v2, p0, Lcom/app/view/PreviewView;->mRightRocker:Let/song/ui/widgets/ETRightRocker;

    invoke-virtual {v2, v5}, Let/song/ui/widgets/ETRightRocker;->setMaxY(I)V

    .line 474
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0034

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETPlaneRocker;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mRightPlane:Let/song/ui/widgets/ETPlaneRocker;

    .line 480
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETTrim;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mTrimLeft:Let/song/ui/widgets/ETTrim;

    .line 481
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0032

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETTrim;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mTrimRight:Let/song/ui/widgets/ETTrim;

    .line 482
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b003a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETTBTrim;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mTrimSide:Let/song/ui/widgets/ETTBTrim;

    .line 484
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b000c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/app/view/PreviewView;->mLastTime:J

    .line 486
    new-instance v2, Landroid/media/SoundPool;

    const/16 v3, 0xa

    const/4 v4, 0x5

    invoke-direct {v2, v3, v7, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/app/view/PreviewView;->mSoundPool:Landroid/media/SoundPool;

    .line 487
    iget-object v2, p0, Lcom/app/view/PreviewView;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    const/high16 v4, 0x7f050000

    invoke-virtual {v2, v3, v4, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/app/view/PreviewView;->mMusic:I

    .line 488
    iget-object v2, p0, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mSensorManager:Landroid/hardware/SensorManager;

    .line 489
    iget-object v2, p0, Lcom/app/view/PreviewView;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v2, :cond_4

    .line 490
    const-string v2, "PreviewView"

    const-string v3, "deveice not support SensorManager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :goto_2
    new-instance v2, Lcom/app/util/WLANCfg;

    iget-object v3, p0, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/app/util/WLANCfg;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/app/view/PreviewView;->mWifiCfg:Lcom/app/util/WLANCfg;

    .line 522
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/app/view/PreviewView;->hCheckSSID:Landroid/os/Handler;

    .line 528
    invoke-virtual {p0}, Lcom/app/view/PreviewView;->registerReceiver()V

    .line 529
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v2

    new-array v3, v7, [B

    const/16 v4, 0x1a

    aput-byte v4, v3, v6

    invoke-virtual {v2, v3}, Lmacrochip/app/newpl1200/SysApp;->writeUDPCmd([B)V

    goto/16 :goto_0

    .line 494
    :cond_4
    iget-object v2, p0, Lcom/app/view/PreviewView;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/app/view/PreviewView;->mSensor:Landroid/hardware/Sensor;

    .line 496
    iget-object v2, p0, Lcom/app/view/PreviewView;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/app/view/PreviewView;->sensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/app/view/PreviewView;->mSensor:Landroid/hardware/Sensor;

    .line 497
    const/4 v5, 0x3

    .line 496
    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_2

    .line 534
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    iget-object v2, p0, Lcom/app/view/PreviewView;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03001f

    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    .line 535
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 537
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0071

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mSeekBar:Landroid/widget/SeekBar;

    .line 538
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0075

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mPBCurrentTime:Landroid/widget/TextView;

    .line 539
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0072

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/app/view/PreviewView;->mPBStopTime:Landroid/widget/TextView;

    .line 540
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/app/view/PreviewView;->tvPBSpeed:Landroid/widget/TextView;

    .line 541
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0073

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/app/view/PreviewView;->btnPBPlay:Landroid/widget/ImageView;

    .line 542
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0077

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/app/view/PreviewView;->btnPBSpeedDown:Landroid/widget/ImageView;

    .line 543
    iget-object v2, p0, Lcom/app/view/PreviewView;->btnPBSpeedDown:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 544
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b0078

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/app/view/PreviewView;->btnPBSpeedUp:Landroid/widget/ImageView;

    .line 545
    iget-object v2, p0, Lcom/app/view/PreviewView;->btnPBSpeedUp:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b006e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/app/view/PreviewView;->btn3D:Landroid/widget/ImageView;

    .line 548
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b006f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/app/view/PreviewView;->btnBack:Landroid/widget/ImageView;

    .line 550
    iget-object v2, p0, Lcom/app/view/PreviewView;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 551
    iget-object v2, p0, Lcom/app/view/PreviewView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/app/view/PreviewView;->locateSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 552
    iget-object v2, p0, Lcom/app/view/PreviewView;->btnPBPlay:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/app/view/PreviewView;->locatePBPlayListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    iget-object v2, p0, Lcom/app/view/PreviewView;->btnPBSpeedDown:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/app/view/PreviewView;->locatePBSpeedDownListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    iget-object v2, p0, Lcom/app/view/PreviewView;->btnPBSpeedUp:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/app/view/PreviewView;->locatePBSpeedUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b006d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/app/view/PreviewView;->layoutMenu:Landroid/widget/RelativeLayout;

    .line 556
    iget-object v2, p0, Lcom/app/view/PreviewView;->view:Landroid/view/View;

    const v3, 0x7f0b006b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/app/view/PreviewView;->tvStreamInfo:Landroid/widget/TextView;

    .line 557
    iget-object v2, p0, Lcom/app/view/PreviewView;->btn3D:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/app/view/PreviewView;->btn3DListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    iget-object v2, p0, Lcom/app/view/PreviewView;->btn3D:Landroid/widget/ImageView;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 560
    iget-object v2, p0, Lcom/app/view/PreviewView;->btnBack:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/app/view/PreviewView;->btnBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 575
    :cond_6
    sget v2, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 577
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/opengles/GLFrameSurface;

    .line 578
    .local v1, "s":Lcom/android/opengles/GLFrameSurface;
    iget-object v2, p0, Lcom/app/view/PreviewView;->surfaceTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/android/opengles/GLFrameSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1
.end method

.method public layoutUnInit(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "mLayout"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 274
    invoke-static {}, Lcom/app/view/PreviewView;->stopTalkThread()V

    .line 275
    sget v0, Lcom/fh/lib/PlayInfo;->playType:I

    if-eq v3, v0, :cond_0

    const/4 v0, 0x4

    sget v1, Lcom/fh/lib/PlayInfo;->playType:I

    if-ne v0, v1, :cond_1

    .line 276
    :cond_0
    invoke-direct {p0, v3}, Lcom/app/view/PreviewView;->RecordClick(I)V

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/app/view/PreviewView;->mSendThread:Lcom/app/view/PreviewView$SendThread;

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/app/view/PreviewView;->mSendThread:Lcom/app/view/PreviewView$SendThread;

    invoke-virtual {v0}, Lcom/app/view/PreviewView$SendThread;->cancel()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/view/PreviewView;->mSendThread:Lcom/app/view/PreviewView$SendThread;

    .line 282
    :cond_2
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmacrochip/app/newpl1200/SysApp;->StartActive(Z)V

    .line 283
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmacrochip/app/newpl1200/SysApp;->StartCheckWork(Z)V

    .line 284
    invoke-virtual {p0}, Lcom/app/view/PreviewView;->unregisterReceiver()V

    .line 285
    return-void
.end method

.method public leftRockerRefresh()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2614
    iget-object v0, p0, Lcom/app/view/PreviewView;->mLeftRocker:Let/song/ui/widgets/ETLeftRocker;

    invoke-virtual {v0, v1}, Let/song/ui/widgets/ETLeftRocker;->setLock(Z)V

    .line 2615
    iget-object v0, p0, Lcom/app/view/PreviewView;->mLeftRocker:Let/song/ui/widgets/ETLeftRocker;

    invoke-virtual {v0, v1}, Let/song/ui/widgets/ETLeftRocker;->setYV(I)V

    .line 2616
    iget-object v0, p0, Lcom/app/view/PreviewView;->mLeftRocker:Let/song/ui/widgets/ETLeftRocker;

    invoke-virtual {v0}, Let/song/ui/widgets/ETLeftRocker;->Refresh()V

    .line 2622
    invoke-direct {p0, v1}, Lcom/app/view/PreviewView;->HideClick(I)V

    .line 2625
    iget-object v0, p0, Lcom/app/view/PreviewView;->mButtonHide:Let/song/ui/widgets/ETButton;

    invoke-virtual {v0}, Let/song/ui/widgets/ETButton;->performClick()Z

    .line 2627
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmacrochip/app/newpl1200/SysApp;->StartCheckWork(Z)V

    .line 2628
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 289
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 290
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "et.song.sjrc.wifi.app.air.h264.REMOTE_RECORD_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v1, "et.song.sjrc.wifi.app.air.h264.REMOTE_RECORD_END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v1, "et.song.sjrc.wifi.app.air.h264.REMOTE_PHOTO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const-string v1, "et.song.sjrc.wifi.app.air.h264.REMOTE_RECORD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/app/view/PreviewView;->myBroadcastReciver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 296
    return-void
.end method

.method public setLayoutMenuShow(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 636
    iget-object v0, p0, Lcom/app/view/PreviewView;->layoutMenu:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 643
    :goto_0
    return-void

    .line 639
    :cond_0
    if-eqz p1, :cond_1

    .line 640
    iget-object v0, p0, Lcom/app/view/PreviewView;->layoutMenu:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/app/view/PreviewView;->layoutMenu:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public unregisterReceiver()V
    .locals 3

    .prologue
    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/app/view/PreviewView;->myBroadcastReciver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
