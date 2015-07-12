.class public Lcom/yulong/android/internal/telephony/PhoneModeService;
.super Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/internal/telephony/PhoneModeService$Record;,
        Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;,
        Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;,
        Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;,
        Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;,
        Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;
    }
.end annotation


# static fields
.field private static final ACTIVE_C_SUBSCRIPTION:I = 0x5

.field private static final ACTIVE_G_SUBSCRIPTION:I = 0x6

.field private static final EVENT_AIR_MODE_CHANGE:I = 0x53

.field private static final EVENT_BROADCAST_LTE_SWITCH_FINISHED:I = 0x50

.field private static final EVENT_CDMA_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xa

.field private static final EVENT_CDMA_RADIO_ON:I = 0xb

.field private static final EVENT_CDMA_RADIO_STATE_CHANGED:I = 0xe

.field private static final EVENT_CDMA_SUBSCRIPTION_DEACTIVE:I = 0x21

.field private static final EVENT_CDMA_SUBSCRIPTION_READY:I = 0x26

.field private static final EVENT_CDMA_SUBSCRIPTION_READY2:I = 0x24

.field private static final EVENT_CDMA_SUPPLYPIN_MODEMRESET:I = 0x15

.field private static final EVENT_CHANGE_PHONE_ONE_SESSION_DONE:I = 0x4a

.field private static final EVENT_CHANGE_PHONE_TWO_SESSION_DONE:I = 0x4b

.field private static final EVENT_CHECK_CDMA_RIL_POWERON_RESULT:I = 0x34

.field private static final EVENT_CHECK_GSM_RIL_POWERON_RESULT:I = 0x35

.field private static final EVENT_CLOSE_CDMA_MODEM_POWER:I = 0x1

.field private static final EVENT_CLOSE_GSM_MODEM_POWER:I = 0x2

.field private static final EVENT_C_LOST_CARD_REBOOT:I = 0x37

.field private static final EVENT_C_PHONE_DISCONNECT:I = 0x39

.field private static final EVENT_DEACTIVE_LOCK_SIM_DONE:I = 0x51

.field private static final EVENT_DEACT_PHONE1_DONE:I = 0x4d

.field private static final EVENT_DEACT_PHONE2_DONE:I = 0x4e

.field private static final EVENT_DELAY_LOST_CARD_REBOOT:I = 0x3b

.field private static final EVENT_ENABLE_LTE_SWITCH:I = 0x4f

.field private static final EVENT_FINISH_SELECT_NET:I = 0x32

.field private static final EVENT_FINISH_SWITCH_SLOT_MODE:I = 0x3

.field private static final EVENT_GET_CARD_TYPE_BY_AT:I = 0x11

.field private static final EVENT_GET_CDMA_MODEM_STATUS:I = 0x6

.field private static final EVENT_GET_GSM_IMSI_BY_AT:I = 0x10

.field private static final EVENT_GET_GSM_MODEM_STATUS:I = 0x7

.field private static final EVENT_GET_PINPUK_LEFT_NUM:I = 0x12

.field private static final EVENT_GET_PREFERRED_NETWORK:I = 0x48

.field private static final EVENT_GET_SESSION_STATE_COMPLETE:I = 0x4c

.field private static final EVENT_GSM_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xc

.field private static final EVENT_GSM_RADIO_ON:I = 0xd

.field private static final EVENT_GSM_RADIO_STATE_CHANGED:I = 0xf

.field private static final EVENT_GSM_SUBSCRIPTION_DEACTIVE:I = 0x20

.field private static final EVENT_GSM_SUBSCRIPTION_READY:I = 0x27

.field private static final EVENT_GSM_SUBSCRIPTION_READY2:I = 0x25

.field private static final EVENT_GSM_SUPPLYPIN_MODEMRESET:I = 0x16

.field private static final EVENT_G_LOST_CARD_REBOOT:I = 0x38

.field private static final EVENT_G_PHONE_DISCONNECT:I = 0x3a

.field private static final EVENT_ICC_STATUS_CHANGE:I = 0x49

.field private static final EVENT_OPEN_CDMA_MODEM_POWER:I = 0x4

.field private static final EVENT_OPEN_CDMA_MODEM_POWER_PINPUK:I = 0x3c

.field private static final EVENT_OPEN_CDMA_SELECT_DONE:I = 0x1f

.field private static final EVENT_OPEN_GSM_MODEM_POWER:I = 0x5

.field private static final EVENT_OPEN_GSM_MODEM_POWER_PINPUK:I = 0x3d

.field private static final EVENT_OPEN_GSM_SELECT_DONE:I = 0x1e

.field private static final EVENT_RILD_SOCKET_CONNECTED:I = 0x40

.field private static final EVENT_SELECT_MODE_DELAY:I = 0x52

.field private static final EVENT_SELECT_NET_TIME_OUT:I = 0x33

.field private static final EVENT_SET_PREFERRED_NETWORK:I = 0x47

.field private static final EVENT_SET_SUBSCRIPTION_MODE_DONE:I = 0x36

.field private static final EVENT_SMS_DELAY_TIME_OUT:I = 0x3f

.field private static final EVENT_SUBSCRIPTION_DEACTIVE_DONE:I = 0x3e

.field private static final EVENT_UNLOCK_PIN_BY_CDMA:I = 0x13

.field private static final EVENT_UNLOCK_PIN_BY_GSM:I = 0x14

.field private static final GET_PIN_OR_PUK_NUM_STEP:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneModeService"

.field private static final OPERATE_C_RADIO_STEP:I = 0x8

.field private static final OPERATE_G_RADIO_STEP:I = 0x9

.field private static final OPERATION_BEGIN:I = 0x0

.field private static final OPERATION_FINISH:I = 0x1

.field private static final POWER_DOWN_STATUS:I = 0x0

.field private static final POWER_ON_STATUS:I = 0x1

.field private static final POWER_STATUS_UNINIT:I = -0x1

.field private static final PWR_ACTION_OFF:I = 0x0

.field private static final PWR_ACTION_ON:I = 0x1

.field private static final SELECT_CLOSE_C_MODEM_STEP:I = 0xa

.field private static final SELECT_CLOSE_G_MODEM_STEP:I = 0xb

.field private static final SELECT_NET_TIME_OUT_MILLIS:I = 0x7530

.field private static final SELECT_OPEN_C_MODEM_STEP:I = 0x3

.field private static final SELECT_OPEN_G_MODEM_STEP:I = 0x4

.field private static final SLOT_CROSS_MODE:I = 0x1

.field private static final SLOT_PARALLEL_MODE:I = 0x0

.field private static final SLOT_UNKNOWN_MODE:I = -0x1

.field private static final SUB_ACTIVATE:I = 0x1

.field private static final SUB_DEACTIVATE:I = 0x0

.field private static final SWITCH_CLOSE_C_MODEM_STEP:I = 0x0

.field private static final SWITCH_CLOSE_G_MODEM_STEP:I = 0x1

.field private static final SWITCH_SLOT_STEP:I = 0x2

.field private static mContext:Landroid/content/Context;

.field private static mHasCardOnSlotOne:I

.field private static mHasCardOnSlotTwo:I

.field public static final mLock4:Ljava/lang/Object;

.field private static mPhones:[Lcom/android/internal/telephony/PhoneBase;

.field private static mPinValues:[Ljava/lang/String;

.field private static mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

.field private static sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sInstance:Lcom/yulong/android/internal/telephony/PhoneModeService;


# instance fields
.field private AIRPLANE_MODE_FLAG:I

.field private ActiveOrNoCdma:I

.field private ActiveOrNoGsm:I

.field private actArray:[I

.field private deactArray:[I

.field private firstMemFlag:Z

.field isFirstIn_RUIM:Z

.field isFirstIn_SIM:Z

.field isHasCardforIndia:Z

.field private isShutDown:Z

.field private mActivateOrDeactiveTime:[I

.field private mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

.field private mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

.field private mCardTypeResponse:Ljava/lang/String;

.field private mCdmaModemResetTimes:I

.field private mCdmaModemStatus:I

.field private mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

.field private mCdmaSubDeactiveRegistrant:Landroid/os/RegistrantList;

.field private mGetPinPukNumType:I

.field private mGsmImsiResponse:Ljava/lang/String;

.field private mGsmModemResetTimes:I

.field private mGsmModemStatus:I

.field private mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

.field private mGsmSubDeactiveRegistrant:Landroid/os/RegistrantList;

.field private mInitCompleted:Z

.field private mIntentPhoneType:I

.field private mIsUserSelectNet:Z

.field private mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

.field private mLTESwitched:Z

.field private final mLock:Ljava/lang/Object;

.field private final mLock1:Ljava/lang/Object;

.field private final mLock2:Ljava/lang/Object;

.field private final mLock3:Ljava/lang/Object;

.field private final mLock5:Ljava/lang/Object;

.field mNeedSwitchBindMode:Z

.field mNeedSwitchPhone:Z

.field private mNeedUnlockMode:I

.field mOperatePinPukByPhoneId:I

.field private mOperateSwitchSteps:[I

.field private mPreferredNetwork:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/internal/telephony/PhoneModeService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisterClientNo:I

.field private mSelectLock:Z

.field private mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

.field private mSlotConnectMode:I

.field protected mStateMonitor:Ljava/lang/Object;

.field private mStateRadio:[Z

.field private mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

.field private mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private modechange:[I

.field private nextselect:[I

.field private nextselectEx:[I

.field private pm:Landroid/os/PowerManager;

.field private processStateCdma:I

.field private processStateGsm:I

.field private ruim_insert_state:Ljava/lang/String;

.field private sSmsDelayCount:I

.field private setsubmodestate:I

.field private silenceReboot:Z

.field private sim_insert_state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v2, -0x1

    .line 306
    new-array v0, v1, [Lcom/android/internal/telephony/PhoneBase;

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    .line 327
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    .line 359
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock4:Ljava/lang/Object;

    .line 385
    sput v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotOne:I

    .line 386
    sput v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotTwo:I

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1453
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;-><init>()V

    .line 67
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubDeactiveRegistrant:Landroid/os/RegistrantList;

    .line 68
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubDeactiveRegistrant:Landroid/os/RegistrantList;

    .line 69
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

    .line 70
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

    .line 71
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    .line 72
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    .line 258
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    .line 259
    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->firstMemFlag:Z

    .line 261
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    .line 263
    new-array v2, v4, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mActivateOrDeactiveTime:[I

    .line 269
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    .line 270
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    .line 271
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I

    .line 272
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    .line 295
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 296
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 297
    new-array v2, v4, [Z

    fill-array-data v2, :array_4

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    .line 298
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    .line 299
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I

    .line 300
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I

    .line 301
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->AIRPLANE_MODE_FLAG:I

    .line 302
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->setsubmodestate:I

    .line 303
    iput-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;

    .line 330
    const/16 v2, 0xf

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    .line 334
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    .line 338
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    .line 341
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 344
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    .line 345
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    .line 348
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIntentPhoneType:I

    .line 349
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isHasCardforIndia:Z

    .line 351
    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    .line 354
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    .line 356
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    .line 357
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;

    .line 358
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    .line 360
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

    .line 383
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    .line 387
    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isFirstIn_SIM:Z

    .line 388
    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isFirstIn_RUIM:Z

    .line 390
    const-string v2, ""

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sim_insert_state:Ljava/lang/String;

    .line 391
    const-string v2, ""

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    .line 392
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->silenceReboot:Z

    .line 393
    iput-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    .line 394
    new-array v2, v4, [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .line 397
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    .line 398
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->deactArray:[I

    .line 400
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->actArray:[I

    .line 401
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isShutDown:Z

    .line 402
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mInitCompleted:Z

    .line 404
    new-instance v2, Lcom/yulong/android/internal/telephony/PhoneModeService$1;

    invoke-direct {v2, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$1;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 426
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->IDLE:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    .line 494
    new-array v2, v4, [Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    .line 1454
    const-string v2, "CP_COMM: enter PhoneModeService add iPhoneModeService"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1455
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PhoneModeServiceHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1456
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1457
    new-instance v2, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    .line 1459
    new-array v2, v4, [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    sput-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .line 1460
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I

    .line 1461
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->registerClientToNativeService()V

    .line 1463
    new-instance v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-direct {v2, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    .line 1464
    new-instance v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-direct {v2, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    .line 1465
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    .line 1467
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 1468
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    .line 1469
    const-string v2, "CP_COMM: registerReceiver."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1470
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1471
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1473
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1475
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1476
    const-string v2, "CP_COMM: registerReceiver."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1480
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0x37

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForLostCard(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1482
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0x40

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1483
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;

    .line 1484
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->createWakelock()V

    .line 1485
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;

    if-eqz v2, :cond_4

    .line 1492
    :goto_0
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0xa

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1494
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0xb

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1495
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0xe

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1498
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0xf

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1500
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0xc

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1502
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0xd

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1505
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0x27

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1507
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0x26

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1510
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isHotSwapSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1511
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0x49

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1514
    :cond_0
    const-string v2, "iPhoneModeService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1515
    const-string v2, "iPhoneModeService"

    invoke-static {v2, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: iPhoneModeService is null, current process:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1523
    :goto_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1524
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v3

    aput-object v3, v2, v7

    .line 1531
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    if-eqz v2, :cond_2

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v7

    if-eqz v2, :cond_2

    .line 1532
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-ne v2, v8, :cond_1

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v2, v8, :cond_2

    .line 1534
    :cond_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->notifySlotCardInfo([Lcom/yulong/android/internal/telephony/SlotCardInfo;)V

    .line 1543
    :cond_2
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isLTESwitchSupport()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1544
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xb9

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v5, 0x4c

    invoke-virtual {v4, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v6, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->rilIoControl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1546
    :cond_3
    return-void

    .line 1488
    :cond_4
    const-string v2, "get PowerManager service fail"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1519
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: iPhoneModeService is not null, current process:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 263
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 269
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 270
    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 271
    :array_3
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 297
    :array_4
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 330
    nop

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 398
    :array_6
    .array-data 4
        0x0
        0x0
        0x1
    .end array-data

    .line 400
    :array_7
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data
.end method

.method static synthetic access$002(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isShutDown:Z

    return p1
.end method

.method static synthetic access$100()[Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectCloseModemCdmaOrGsm()V

    return-void
.end method

.method static synthetic access$1100(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    return p1
.end method

.method static synthetic access$1300(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectOpenModemCdmaOrGsm()V

    return-void
.end method

.method static synthetic access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->finishGetPinOrPukLeftNum(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000()[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/yulong/android/internal/telephony/PhoneModeService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPinPukCheckResult(III)V

    return-void
.end method

.method static synthetic access$2200(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->operateRadioCdmaAndGsm()V

    return-void
.end method

.method static synthetic access$2300(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I

    return v0
.end method

.method static synthetic access$2302(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I

    return p1
.end method

.method static synthetic access$2308(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 2
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I

    return v0
.end method

.method static synthetic access$2400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I

    return v0
.end method

.method static synthetic access$2402(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I

    return p1
.end method

.method static synthetic access$2408(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 2
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I

    return v0
.end method

.method static synthetic access$2500(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mActivateOrDeactiveTime:[I

    return-object v0
.end method

.method static synthetic access$2700(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    return v0
.end method

.method static synthetic access$2800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    return-object v0
.end method

.method static synthetic access$2900(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I

    return v0
.end method

.method static synthetic access$3000(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    return v0
.end method

.method static synthetic access$302(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I

    return p1
.end method

.method static synthetic access$3102(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I

    return p1
.end method

.method static synthetic access$3200(Lcom/yulong/android/internal/telephony/PhoneModeService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->sendBroadcastandActiveOrDeactive(II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->switchPhoneoneType()V

    return-void
.end method

.method static synthetic access$3402(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I

    return p1
.end method

.method static synthetic access$3500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    return v0
.end method

.method static synthetic access$3900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getPinPukNumByCdmaOrGsm1()V

    return-void
.end method

.method static synthetic access$4100(Lcom/yulong/android/internal/telephony/PhoneModeService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    return-object v0
.end method

.method static synthetic access$4300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    return v0
.end method

.method static synthetic access$4502(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    return p1
.end method

.method static synthetic access$4600(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSyncMessageToRenew(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->firstMemFlag:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->judgeCardStatus(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    return v0
.end method

.method static synthetic access$5000(Lcom/yulong/android/internal/telephony/PhoneModeService;Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->handleChangeSessionResult()V

    return-void
.end method

.method static synthetic access$5202(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    return p1
.end method

.method static synthetic access$5302(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mInitCompleted:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->changeSession()V

    return-void
.end method

.method static synthetic access$5500(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->handleEnableLTESwitch(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastLTESwitchFinished()V

    return-void
.end method

.method static synthetic access$5700(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I

    return-object v0
.end method

.method static synthetic access$5800(Lcom/yulong/android/internal/telephony/PhoneModeService;ZZII)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSelectNetFinishIntent_EX(ZZII)V

    return-void
.end method

.method static synthetic access$600(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/yulong/android/internal/telephony/PhoneModeService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    return-object v0
.end method

.method static synthetic access$802(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    return p1
.end method

.method static synthetic access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/internal/telephony/PhoneModeService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    return-object v0
.end method

.method private activeOrDeactiveSubscription()V
    .locals 11

    .prologue
    .line 3931
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v6, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 3932
    .local v6, "cdmaRadioPower":Z
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v7, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 3933
    .local v7, "gsmRadioPower":Z
    const/4 v8, 0x0

    .line 3935
    .local v8, "ret":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter activeOrDeactiveSubscription, cdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter activeOrDeactiveSubscription, ACTIVE_C_SUBSCRIPTION = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v3, 0x5

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ACTIVE_G_SUBSCRIPTION = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v3, 0x6

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3941
    const/4 v2, 0x0

    .line 3942
    .local v2, "substate":I
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    if-nez v6, :cond_8

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v0, :cond_8

    .line 3944
    :cond_1
    if-nez v6, :cond_2

    .line 3945
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 3947
    :cond_2
    const-string v0, "activeOrDeactiveSubscription cdma: no need to operate "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3948
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x5

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 4002
    :goto_0
    if-eqz v7, :cond_3

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    :cond_3
    if-nez v7, :cond_11

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v0, :cond_11

    .line 4004
    :cond_4
    if-nez v7, :cond_5

    .line 4005
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 4007
    :cond_5
    const-string v0, "activeOrDeactiveSubscription gsm: no need to operate "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4008
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x6

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 4052
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 4054
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->operateRadioCdmaAndGsm()V

    .line 4056
    :cond_7
    return-void

    .line 3950
    :cond_8
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-lez v0, :cond_9

    .line 3951
    const/4 v2, 0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    move v9, v2

    .line 3956
    .end local v2    # "substate":I
    .local v9, "substate":I
    :goto_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    .line 3957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activeOrDeactiveSubscription  CDMA SUB substate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xinghainan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3959
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3960
    const-string v0, "now in enterprise region ,not need to active/deactive for card 1"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3961
    const/4 v8, 0x1

    .line 3962
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x5

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 3979
    :goto_3
    const/4 v0, 0x1

    if-ne v0, v8, :cond_c

    move v2, v9

    .end local v9    # "substate":I
    .restart local v2    # "substate":I
    goto/16 :goto_0

    .line 3953
    :cond_9
    const/4 v2, 0x0

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 3954
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    move v9, v2

    .end local v2    # "substate":I
    .restart local v9    # "substate":I
    goto :goto_2

    .line 3964
    :cond_a
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_b

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_b

    .line 3967
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v10, 0x51

    invoke-virtual {v5, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    move-result v8

    .line 3970
    const/4 v8, 0x0

    .line 3971
    const-string v0, "SimCard lock"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 3974
    :cond_b
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v3, 0x0

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v10, 0x1f

    invoke-virtual {v5, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    move-result v8

    goto :goto_3

    .line 3981
    :cond_c
    if-nez v8, :cond_e

    .line 3982
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 3983
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 3987
    :goto_4
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x5

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 3988
    const-string v0, "activeOrDeactiveSubscription DEACTIVE CDMA SUB fail "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    move v2, v9

    .end local v9    # "substate":I
    .restart local v2    # "substate":I
    goto/16 :goto_0

    .line 3985
    .end local v2    # "substate":I
    .restart local v9    # "substate":I
    :cond_d
    const/4 v0, 0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    goto :goto_4

    .line 3989
    :cond_e
    const/4 v0, -0x1

    if-ne v0, v8, :cond_f

    .line 3990
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 3991
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 3995
    :goto_5
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x5

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 3996
    const-string v0, "activeOrDeactiveSubscription DEACTIVE CDMA SUB nocard "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    :cond_f
    move v2, v9

    .end local v9    # "substate":I
    .restart local v2    # "substate":I
    goto/16 :goto_0

    .line 3993
    .end local v2    # "substate":I
    .restart local v9    # "substate":I
    :cond_10
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto :goto_5

    .line 4011
    .end local v9    # "substate":I
    .restart local v2    # "substate":I
    :cond_11
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-lez v0, :cond_12

    .line 4012
    const/4 v2, 0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 4018
    :goto_6
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 4019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activeOrDeactiveSubscription  GSM SUB substate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activeOrDeactiveSubscription  nextselectEx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4021
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4022
    const-string v0, "now in enterprise region ,not need to active/deactive for card 2"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4023
    const/4 v8, 0x1

    .line 4024
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x6

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 4030
    :goto_7
    const/4 v0, 0x1

    if-eq v0, v8, :cond_6

    .line 4032
    if-nez v8, :cond_15

    .line 4033
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 4034
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 4038
    :goto_8
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x6

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 4039
    const-string v0, "activeOrDeactiveSubscription  GSM SUB fail "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4014
    :cond_12
    const/4 v2, 0x0

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 4015
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    goto :goto_6

    .line 4026
    :cond_13
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v3, 0x1

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v10, 0x1e

    invoke-virtual {v5, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    move-result v8

    goto :goto_7

    .line 4036
    :cond_14
    const/4 v0, 0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    goto :goto_8

    .line 4040
    :cond_15
    const/4 v0, -0x1

    if-ne v0, v8, :cond_6

    .line 4041
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 4042
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 4046
    :goto_9
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x6

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 4047
    const-string v0, "activeOrDeactiveSubscription  GSM SUB nocard "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4044
    :cond_16
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_9
.end method

.method private broadcastIccStateChanged(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "phoneId"    # I
    .param p4, "pullOrPush"    # I

    .prologue
    .line 1421
    const-string v1, "PhoneModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.DUAL_SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1425
    .local v0, "intentDual":Landroid/content/Intent;
    const-string v1, "phoneName"

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1426
    const-string v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1427
    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1428
    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    .line 1429
    const-string v1, "pullOrPush"

    const-string v2, "pull"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1433
    :cond_0
    :goto_0
    const-string v1, "slotId"

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1434
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1435
    return-void

    .line 1430
    :cond_1
    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    .line 1431
    const-string v1, "pullOrPush"

    const-string v2, "push"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private broadcastLTESwitchFinished()V
    .locals 3

    .prologue
    .line 4508
    const-string v1, "CP_COMM: enter broadcastLTESwitchFinished!"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4510
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->IDLE:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    .line 4511
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.ACTION_LTE_SWITCH_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4513
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4514
    return-void
.end method

.method private broadcastSelectNetFinishIntent(Ljava/lang/String;I)V
    .locals 12
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "errNo"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1761
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CP_COMM: broadcastSelectNetFinish, type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", c = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", g = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", preSlotId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1768
    new-instance v4, Landroid/content/Intent;

    const-string v8, "yulong.intent.action.SELECT_NET_OPERATION"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1770
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "selectNetResult"

    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1774
    const/4 v5, -0x1

    .line 1775
    .local v5, "mSlotConnectMode":I
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v8

    if-ne v8, v6, :cond_5

    .line 1776
    const/4 v5, 0x1

    .line 1780
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CP_COMM: broadcastSelectNetFinish, mSlotConnectMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1781
    const-string v8, "slotConnectMode"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1786
    const/4 v2, 0x0

    .line 1787
    .local v2, "dataState":I
    sget-object v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v8, v8, v7

    iget v8, v8, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v8, :cond_6

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v8, v8, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v8, :cond_6

    move v0, v6

    .line 1788
    .local v0, "card1DataState":Z
    :goto_1
    sget-object v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v8, :cond_7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v8, v8, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v8, :cond_7

    move v1, v6

    .line 1789
    .local v1, "card2DataState":Z
    :goto_2
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 1790
    const/4 v2, 0x3

    .line 1798
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CP_COMM: broadcastSelectNetFinish, dataState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1799
    const-string v8, "dataState"

    invoke-virtual {v4, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1802
    const-string v8, "Success"

    if-ne p1, v8, :cond_d

    .line 1803
    const-string v9, "selectCdmaStatus"

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v8, v6, :cond_0

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v8, v6, :cond_b

    :cond_0
    move v8, v6

    :goto_4
    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1807
    const-string v9, "selectGsmStatus"

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v8, v11, :cond_1

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v8, v11, :cond_c

    :cond_1
    move v8, v6

    :goto_5
    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1811
    const-string v8, "preferredSlotId"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1813
    const-string v8, "errorType"

    invoke-virtual {v4, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1827
    :cond_2
    :goto_6
    sget-object v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1828
    const-string v8, "PhoneModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCardSelectedInfo.mLeftSlotModemType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v10, v10, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    const-string v8, "PhoneModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nextselect[0] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    aget v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    const-string v8, "PhoneModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCardSelectedInfo.mRightSlotModemType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v10, v10, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    const-string v8, "PhoneModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nextselect[1] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    aget v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    const-string v8, "PhoneModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCardSelectedInfo.mPreferredSlotId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v10, v10, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    const-string v8, "PhoneModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nextselect[2] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    aget v8, v8, v7

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v8, v9, :cond_11

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    aget v8, v8, v6

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v8, v9, :cond_11

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    aget v8, v8, v11

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    if-ne v8, v9, :cond_11

    .line 1837
    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    .line 1838
    const/16 v8, 0xa

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v9

    if-ne v8, v9, :cond_10

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v8, v8, v7

    if-eqz v8, :cond_10

    .line 1840
    sget-object v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v8

    if-ne v6, v8, :cond_3

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v8, v8, v7

    if-eq v11, v8, :cond_4

    :cond_3
    sget-object v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v8

    if-ne v11, v8, :cond_f

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v8, v8, v7

    if-ne v6, v8, :cond_f

    .line 1844
    :cond_4
    const-string v6, "PhoneModeService"

    const-string v7, "broadcastSelectNetFinishIntent--->All the three parameter are same"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :goto_7
    return-void

    .line 1778
    .end local v0    # "card1DataState":Z
    .end local v1    # "card2DataState":Z
    .end local v2    # "dataState":I
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0

    .restart local v2    # "dataState":I
    :cond_6
    move v0, v7

    .line 1787
    goto/16 :goto_1

    .restart local v0    # "card1DataState":Z
    :cond_7
    move v1, v7

    .line 1788
    goto/16 :goto_2

    .line 1791
    .restart local v1    # "card2DataState":Z
    :cond_8
    if-nez v0, :cond_9

    if-eqz v1, :cond_9

    .line 1792
    const/4 v2, 0x2

    goto/16 :goto_3

    .line 1793
    :cond_9
    if-eqz v0, :cond_a

    if-nez v1, :cond_a

    .line 1794
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1796
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_b
    move v8, v7

    .line 1803
    goto/16 :goto_4

    :cond_c
    move v8, v7

    .line 1807
    goto/16 :goto_5

    .line 1814
    :cond_d
    const-string v8, "TimeOut"

    if-eq p1, v8, :cond_e

    const-string v8, "RILError"

    if-ne p1, v8, :cond_2

    .line 1819
    :cond_e
    const-string v8, "selectCdmaStatus"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1821
    const-string v8, "selectGsmStatus"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1823
    const-string v8, "preferredSlotId"

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1825
    const-string v8, "errorType"

    invoke-virtual {v4, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_6

    .line 1846
    :cond_f
    const-string v8, "PhoneModeService"

    const-string v9, "broadcastSelectNetFinishIntent--->reselect net 4 GC switch"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    const-wide/16 v8, 0xbb8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1853
    :goto_8
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v7, v8, v7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v6, v8, v6

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v8, v8, v11

    invoke-virtual {p0, v7, v6, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_7

    .line 1850
    :catch_0
    move-exception v3

    .line 1851
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    .line 1857
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_10
    const-string v6, "PhoneModeService"

    const-string v7, "broadcastSelectNetFinishIntent--->All the three parameter are same"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1860
    :cond_11
    const-string v8, "PhoneModeService"

    const-string v9, "broadcastSelectNetFinishIntent--->selectModemAndPreferedSlot"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    const-wide/16 v8, 0xbb8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1866
    :goto_9
    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    .line 1867
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v7, v8, v7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v6, v8, v6

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v8, v8, v11

    invoke-virtual {p0, v7, v6, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto/16 :goto_7

    .line 1863
    :catch_1
    move-exception v3

    .line 1864
    .restart local v3    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9
.end method

.method private broadcastSelectNetFinishIntent_EX(ZZII)V
    .locals 4
    .param p1, "cdma"    # Z
    .param p2, "gsm"    # Z
    .param p3, "dataState"    # I
    .param p4, "iPreferredSlotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: broadcastSelectNetFinishIntent_EX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1873
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.SELECT_NET_OPERATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1874
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "selectNetResult"

    const-string v2, "Success"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1875
    const-string v1, "slotConnectMode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: broadcastSelectNetFinish, dataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1877
    const-string v1, "dataState"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1878
    const-string v1, "selectCdmaStatus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1879
    const-string v1, "selectGsmStatus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1880
    const-string v1, "preferredSlotId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1881
    const-string v1, "errorType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1882
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1883
    return-void
.end method

.method private broadcastSyncMessageToRenew(I)V
    .locals 4
    .param p1, "batteryStatus"    # I

    .prologue
    const/4 v3, 0x0

    .line 1890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter broadcastSyncMessageToRenew "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1892
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.PHONE_EXCEPTION_RENEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1895
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "selectCdmaStatus"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1896
    const-string v1, "selectGsmStatus"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1897
    const-string v1, "batteryInOrOut"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1899
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1900
    return-void
.end method

.method private canSwitchNetWorkbydsds()I
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2429
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 2430
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSmsWorkStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2431
    const-string v0, "PhoneModeService"

    const-string v2, "((GSMPhone)mPhones[0]).getSmsWorkStatus() == true"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2454
    :goto_0
    return v0

    .line 2436
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSmsWorkStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2437
    const-string v0, "PhoneModeService"

    const-string v2, "((GSMPhone)mPhones[0]).getSmsWorkStatus() == true"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2438
    goto :goto_0

    .line 2442
    :cond_1
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSmsWorkStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2443
    const-string v0, "PhoneModeService"

    const-string v2, "((GSMPhone)mPhones[1]).getSmsWorkStatus() == true"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2444
    goto :goto_0

    .line 2446
    :cond_2
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_4

    .line 2449
    :cond_3
    const-string v0, "PhoneModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPhones[0].getState() = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    const-string v0, "PhoneModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhones[1].getState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 2451
    goto/16 :goto_0

    .line 2453
    :cond_4
    const-string v0, "PhoneModeService"

    const-string v1, "canSwitchNetWorkbydsds() == true"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 2454
    goto/16 :goto_0
.end method

.method private changeSession()V
    .locals 12

    .prologue
    const/16 v11, 0x4b

    const/4 v10, 0x2

    const/16 v9, 0x4a

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: changeSession: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4415
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGING:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    .line 4416
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getGlobalAppsIndex(I)[I

    move-result-object v0

    .line 4417
    .local v0, "appId0":[I
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getGlobalAppsIndex(I)[I

    move-result-object v1

    .line 4418
    .local v1, "appId1":[I
    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v2

    .line 4419
    .local v2, "op0":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: changeSession: appId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", op0 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4420
    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    if-eqz v3, :cond_2

    .line 4421
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v8

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    sget-object v4, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_NO:Lcom/yulong/android/telephony/CardInfo$CardType;

    invoke-virtual {v4}, Lcom/yulong/android/telephony/CardInfo$CardType;->ordinal()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 4422
    const-string v3, "CT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4423
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_SEC_1X_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->index:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->access$6300(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;)I

    move-result v4

    aget v5, v0, v8

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v6, v9}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestSetProvSession(IIILandroid/os/Message;)V

    .line 4425
    :cond_0
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_SEC_GW_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->index:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->access$6300(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;)I

    move-result v4

    aget v5, v0, v7

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v6, v9}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestSetProvSession(IIILandroid/os/Message;)V

    .line 4429
    :goto_0
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_PRI_GW_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->index:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->access$6300(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;)I

    move-result v4

    aget v5, v1, v7

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v6, v11}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v10, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestSetProvSession(IIILandroid/os/Message;)V

    .line 4441
    :goto_1
    return-void

    .line 4427
    :cond_1
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGED1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    goto :goto_0

    .line 4431
    :cond_2
    const-string v3, "CT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4432
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_PRI_1X_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->index:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->access$6300(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;)I

    move-result v4

    aget v5, v0, v8

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v6, v9}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestSetProvSession(IIILandroid/os/Message;)V

    .line 4434
    :cond_3
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_PRI_GW_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->index:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->access$6300(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;)I

    move-result v4

    aget v5, v0, v7

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v6, v9}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestSetProvSession(IIILandroid/os/Message;)V

    .line 4435
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v7

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    sget-object v4, Lcom/yulong/android/telephony/CardInfo$CardType;->eCardType_NO:Lcom/yulong/android/telephony/CardInfo$CardType;

    invoke-virtual {v4}, Lcom/yulong/android/telephony/CardInfo$CardType;->ordinal()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 4436
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->SESSION_TYPE_SEC_GW_PROV:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->index:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;->access$6300(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionType;)I

    move-result v4

    aget v5, v1, v7

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v6, v11}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v10, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestSetProvSession(IIILandroid/os/Message;)V

    goto :goto_1

    .line 4438
    :cond_4
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->CHANGED2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    goto :goto_1
.end method

.method private checkUserSelectValid(III)Z
    .locals 8
    .param p1, "iLeftSlotModemType"    # I
    .param p2, "iRightSlotModemType"    # I
    .param p3, "iPreferredSlotId"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 2910
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    .line 2911
    .local v0, "phoneOneType":I
    const-string v3, "PhoneModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: checkUserSelectValid phoneOneType ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    packed-switch v0, :pswitch_data_0

    .line 2969
    :cond_0
    iget v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    if-eq v3, v7, :cond_14

    .line 2970
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: checkUserSelectValid PinPukType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2973
    :cond_1
    :goto_0
    return v1

    .line 2915
    :pswitch_0
    if-nez p2, :cond_2

    if-eqz p1, :cond_0

    .line 2918
    :cond_2
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-gt p1, v6, :cond_1

    if-gt p2, v6, :cond_1

    .line 2923
    if-nez p3, :cond_3

    if-eqz p1, :cond_1

    :cond_3
    if-ne p3, v2, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    .line 2929
    :pswitch_1
    if-ne p1, p2, :cond_4

    if-nez p2, :cond_1

    .line 2933
    :cond_4
    if-lt p3, v7, :cond_1

    if-gt p3, v2, :cond_1

    .line 2935
    if-nez p2, :cond_12

    if-nez p1, :cond_12

    .line 2944
    :cond_5
    if-ne p1, v6, :cond_6

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmApplicationState:I

    if-eqz v3, :cond_11

    :cond_6
    if-ne p1, v2, :cond_7

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaApplicationState:I

    if-eqz v3, :cond_11

    :cond_7
    if-ne p2, v6, :cond_8

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmApplicationState:I

    if-eqz v3, :cond_11

    :cond_8
    if-ne p2, v2, :cond_9

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaApplicationState:I

    if-eqz v3, :cond_11

    :cond_9
    if-ne p1, v6, :cond_a

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v3, v2, :cond_a

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eq v3, v2, :cond_11

    :cond_a
    if-ne p1, v2, :cond_b

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v3, v6, :cond_b

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eq v3, v2, :cond_11

    :cond_b
    if-ne p2, v2, :cond_c

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v6, :cond_c

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eq v3, v2, :cond_11

    :cond_c
    if-ne p2, v6, :cond_d

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v2, :cond_d

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eq v3, v2, :cond_11

    :cond_d
    if-ne p2, v6, :cond_e

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v3, v6, :cond_e

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eq v3, v2, :cond_11

    :cond_e
    if-ne p2, v2, :cond_f

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v3, v2, :cond_f

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eq v3, v2, :cond_11

    :cond_f
    if-ne p1, v2, :cond_10

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v2, :cond_10

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eq v3, v2, :cond_11

    :cond_10
    if-ne p1, v6, :cond_0

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-ne v3, v2, :cond_0

    .line 2964
    :cond_11
    const-string v1, "CP_COMM: checkUserSelectValid APP NOT READY "

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    move v1, v2

    .line 2965
    goto/16 :goto_0

    .line 2938
    :cond_12
    if-nez p3, :cond_13

    if-eqz p1, :cond_1

    :cond_13
    if-ne p3, v2, :cond_5

    if-nez p2, :cond_5

    goto/16 :goto_0

    :cond_14
    move v1, v2

    .line 2973
    goto/16 :goto_0

    .line 2913
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkWhetherNeedSwitchBindMode(II)Z
    .locals 1
    .param p1, "iLeftSlotModemType"    # I
    .param p2, "iRightSlotModemType"    # I

    .prologue
    .line 2987
    const-string v0, "CP_COMM: 9060\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u03b5\ufffdNativeService\ufffd\ufffd\ufffd\ufffd checkWhetherNeedSwitchBindMode"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 2989
    const/4 v0, 0x0

    return v0
.end method

.method private checkWhetherNeedSwitchPhone(II)Z
    .locals 6
    .param p1, "iLeftSlotModemType"    # I
    .param p2, "iRightSlotModemType"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2993
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 3007
    :cond_0
    :goto_0
    return v1

    .line 2996
    :cond_1
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    .line 2997
    .local v0, "phoneOneType":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: checkWhetherNeedSwitchPhone phoneOneType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 2998
    if-ne p1, v5, :cond_2

    if-ne v0, v5, :cond_2

    .line 2999
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIntentPhoneType:I

    move v1, v2

    .line 3001
    goto :goto_0

    .line 3002
    :cond_2
    if-ne p1, v2, :cond_0

    if-ne v0, v2, :cond_0

    .line 3003
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIntentPhoneType:I

    move v1, v2

    .line 3005
    goto :goto_0
.end method

.method private convertPhoneIdToSlotId(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 3094
    const/4 v0, 0x0

    .line 3097
    .local v0, "slotId":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 3099
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 3100
    const/4 v0, 0x1

    .line 3111
    :goto_0
    return v0

    .line 3102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3105
    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 3106
    const/4 v0, 0x0

    goto :goto_0

    .line 3108
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private convertSlotIdToPhoneId(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 3063
    const/4 v0, 0x0

    .line 3065
    .local v0, "phoneId":I
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3066
    if-nez p1, :cond_0

    .line 3067
    const/4 v0, 0x2

    .line 3081
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertSlotIdToPhoneId slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getSlotConnectMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3083
    return v0

    .line 3069
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3075
    :cond_1
    if-nez p1, :cond_2

    .line 3076
    const/4 v0, 0x1

    goto :goto_0

    .line 3078
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3882
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3884
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3886
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 3888
    return-void
.end method

.method private finishGetPinOrPukLeftNum(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 1908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter broadcastGetPinOrPukLeftNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1910
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 1911
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->removeMessages(I)V

    .line 1912
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1913
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    int-to-byte v2, p1

    iput-byte v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 1914
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-byte v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    const-string v2, "ok"

    invoke-direct {p0, v1, v0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPukQueryResult(IILjava/lang/String;)V

    .line 1920
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 1921
    return-void

    .line 1917
    :cond_0
    const-string v1, "ok"

    invoke-direct {p0, p1, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPinQueryResult(IILjava/lang/String;)V

    goto :goto_0
.end method

.method private getCardTypeBySendAt()V
    .locals 3

    .prologue
    .line 2808
    const-string v0, "CP_COMM: getCardTypeBySendAt."

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2811
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2812
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 2816
    :goto_0
    return-void

    .line 2814
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCardType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static declared-synchronized getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;
    .locals 2

    .prologue
    .line 1597
    const-class v1, Lcom/yulong/android/internal/telephony/PhoneModeService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/PhoneModeService;

    if-nez v0, :cond_0

    .line 1598
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/PhoneModeService;

    .line 1601
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/PhoneModeService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1597
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 3047
    const-string v2, "CP_COMM: getITelephony."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3049
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3050
    .local v0, "myBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3052
    .local v1, "myTp":Lcom/android/internal/telephony/ITelephony;
    return-object v1
.end method

.method private getModemPowerStatus(I)I
    .locals 9
    .param p1, "modemType"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 3370
    if-ne v7, p1, :cond_2

    .line 3371
    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    if-eq v2, v6, :cond_1

    .line 3372
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 3400
    :cond_0
    :goto_0
    return v1

    .line 3375
    :cond_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getModemStatus(Landroid/os/Message;)V

    .line 3386
    :goto_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3388
    :try_start_0
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3392
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3394
    if-ne v7, p1, :cond_4

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    if-eq v2, v6, :cond_4

    .line 3395
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    goto :goto_0

    .line 3376
    :cond_2
    if-ne v8, p1, :cond_0

    .line 3377
    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    if-eq v2, v6, :cond_3

    .line 3378
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    goto :goto_0

    .line 3381
    :cond_3
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getModemStatus(Landroid/os/Message;)V

    goto :goto_1

    .line 3389
    :catch_0
    move-exception v0

    .line 3390
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "CP_COMM: interrupted while getModemPowerStatus."

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 3392
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3396
    :cond_4
    if-ne v8, p1, :cond_0

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    if-eq v2, v6, :cond_0

    .line 3397
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    goto :goto_0
.end method

.method private getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .locals 5

    .prologue
    .line 3029
    const/4 v0, 0x0

    .line 3030
    .local v0, "i":I
    const/4 v2, 0x0

    .line 3031
    .local v2, "myBinder":Landroid/os/IBinder;
    const/4 v3, 0x0

    .local v3, "myNS":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    move v1, v0

    .line 3033
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-nez v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    .line 3034
    const-string v4, "nativePhoneSlot"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 3035
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v3

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    :cond_0
    move v0, v1

    .line 3038
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    return-object v3
.end method

.method private getOperatorBySlotId(I)Ljava/lang/String;
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v6, 0x6

    .line 4517
    const/4 v4, 0x0

    .line 4518
    .local v4, "ret":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4519
    .local v2, "iccId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 4520
    .local v3, "operatorIdentify":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v0

    .line 4521
    .local v0, "cardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    if-eqz v0, :cond_0

    .line 4522
    iget-object v2, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    .line 4523
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_0

    .line 4524
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 4525
    invoke-static {}, Lcom/yulong/android/telephony/CPIccidOverride;->getInstance()Lcom/yulong/android/telephony/CPIccidOverride;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/yulong/android/telephony/CPIccidOverride;->getCarrier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4526
    .local v1, "carrier":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 4527
    move-object v4, v1

    .line 4531
    .end local v1    # "carrier":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method private getPinPukNumByCdmaOrGsm1()V
    .locals 4

    .prologue
    const/16 v3, 0x12

    .line 2201
    const-string v0, "CP_COMM: enter getPinPukNumByCdmaOrGsm1."

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2202
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2203
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V

    .line 2209
    :goto_0
    return-void

    .line 2206
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private getSlotConnectMode()I
    .locals 2

    .prologue
    .line 3279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: getSlotConnectMode : mSlotConnectMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 3280
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    return v0
.end method

.method private getSynPinPukValidCount(III)I
    .locals 5
    .param p1, "reqType"    # I
    .param p2, "phoneId"    # I
    .param p3, "slotId"    # I

    .prologue
    const/4 v4, 0x2

    .line 2641
    const/4 v1, -0x1

    .line 2644
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getPinPukValidCount(II)I

    move-result v1

    .line 2645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSynPinPukValidCount count  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reqType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2646
    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 2647
    if-nez p1, :cond_1

    .line 2649
    const/4 v1, -0x1

    .line 2673
    :cond_0
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 2675
    return v1

    .line 2650
    :cond_1
    if-ne p1, v4, :cond_0

    .line 2652
    const/4 v1, -0x1

    goto :goto_0

    .line 2655
    :cond_2
    if-nez v1, :cond_3

    if-nez p1, :cond_3

    .line 2657
    :try_start_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    const/4 v3, 0x3

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 2660
    :cond_3
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    int-to-byte v3, v1

    iput-byte v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 2661
    if-ne p1, v4, :cond_0

    .line 2663
    if-nez v1, :cond_0

    .line 2664
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    const/16 v3, 0xa

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2669
    :catch_0
    move-exception v0

    .line 2670
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: RemoteException from getSynPinPukValidCount()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getValidCardNum()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3168
    const/4 v0, 0x0

    .line 3170
    .local v0, "iCardNum":I
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 3171
    const-string v1, "CP_COMM: getValidCardNum, mSlotCardInfoArray[0] == null."

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    .line 3172
    const/4 v1, -0x1

    .line 3183
    :goto_0
    return v1

    .line 3175
    :cond_0
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v1, :cond_1

    .line 3176
    add-int/lit8 v0, v0, 0x1

    .line 3179
    :cond_1
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v1, :cond_2

    .line 3180
    add-int/lit8 v0, v0, 0x1

    :cond_2
    move v1, v0

    .line 3183
    goto :goto_0
.end method

.method private handleChangeSessionResult()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 4385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: handleChangeSessionResult: mSessionState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4389
    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v12

    .line 4390
    .local v12, "op0":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v13

    .line 4391
    .local v13, "op1":Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4392
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-nez v0, :cond_1

    .line 4393
    const-string v0, "CP_COMM: handleChangeSessionResult: deact slot0"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4394
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->deactArray:[I

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    .line 4401
    :goto_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-nez v0, :cond_2

    .line 4402
    const-string v0, "CP_COMM: handleChangeSessionResult: deact slot1"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4403
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->deactArray:[I

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    .line 4410
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4411
    return-void

    .line 4396
    :cond_1
    const-string v0, "CP_COMM: handleChangeSessionResult: act slot0"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4398
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->actArray:[I

    iget v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    move v9, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    goto :goto_0

    .line 4405
    :cond_2
    const-string v0, "CP_COMM: handleChangeSessionResult: act slot1"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4406
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->actArray:[I

    iget v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    move v9, v8

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    goto :goto_1
.end method

.method private handleEnableLTESwitch(Z)Z
    .locals 11
    .param p1, "enabled"    # Z

    .prologue
    const/16 v10, 0x4e

    const/16 v6, 0x4d

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: enableLTESwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLTESwitched = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SessionState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4537
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isActiveDefaultOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4538
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->initCardInfo()V

    .line 4540
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->IDLE:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    if-eq v0, v1, :cond_1

    .line 4566
    :goto_0
    return v2

    .line 4544
    :cond_1
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v1

    aput-object v1, v0, v2

    .line 4545
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v1

    aput-object v1, v0, v3

    .line 4547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: enableLTESwitch card1PinState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", card2PinState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4549
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    if-ge v0, v4, :cond_4

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    if-ge v0, v4, :cond_4

    .line 4551
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    .line 4552
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTING:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    .line 4553
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v0, :cond_2

    .line 4554
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTED1:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    .line 4555
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->deactArray:[I

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v5, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    :goto_1
    move v2, v3

    .line 4566
    goto :goto_0

    .line 4556
    :cond_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v0, :cond_3

    .line 4557
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->DEACTED2:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V

    .line 4558
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->deactArray:[I

    iget v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move v6, v2

    move v7, v2

    invoke-virtual/range {v4 .. v9}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    goto :goto_1

    .line 4560
    :cond_3
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->deactArray:[I

    iget v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move v6, v2

    move v7, v2

    invoke-virtual/range {v4 .. v9}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    .line 4561
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->deactArray:[I

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v5, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    goto :goto_1

    .line 4564
    :cond_4
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastLTESwitchFinished()V

    goto :goto_1
.end method

.method private isLTEWhiteCard(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 4094
    const/4 v0, 0x0

    .line 4095
    .local v0, "result":Z
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isRuWangMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 4098
    const/4 v0, 0x1

    .line 4101
    :cond_0
    return v0
.end method

.method private isNeedSwitchToUnlockPin(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 3358
    const/4 v0, 0x0

    .line 3359
    .local v0, "result":I
    return v0
.end method

.method private isSEDRegion()Z
    .locals 1

    .prologue
    .line 4299
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSEDRegion()Z

    move-result v0

    return v0
.end method

.method private judgeCardStatus(I)V
    .locals 7
    .param p1, "cardIndex"    # I

    .prologue
    const/4 v6, 0x0

    .line 1346
    const/4 v0, 0x0

    .line 1347
    .local v0, "NeedSwitchPhone":Z
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v4

    aput-object v4, v3, p1

    .line 1348
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getDualUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1349
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getDualUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    .line 1355
    .local v2, "tmpCardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v2, :cond_4

    .line 1357
    :goto_0
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v3, :cond_2

    .line 1359
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 1360
    const-string v3, "PhoneModeService"

    const-string v4, "sleep 1 second"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v4

    aput-object v4, v3, p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1362
    :catch_0
    move-exception v1

    .line 1364
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1351
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "tmpCardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_0
    const-string v3, "PhoneModeService"

    const-string v4, "judgeCardStatus: UiccCard = null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_1
    :goto_1
    return-void

    .line 1367
    .restart local v2    # "tmpCardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_2
    if-nez p1, :cond_3

    .line 1368
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v6, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 1372
    :cond_3
    const-string v3, "PhoneModeService"

    const-string v4, "A new card has been inserted"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v4

    aput-object v4, v3, p1

    .line 1374
    const-string v3, "PhoneModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "judgeCardStatus:cardIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",NeedSwitchPhone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    const-string v3, "PERSENT"

    const-string v4, "NO REASON"

    const/4 v5, 0x2

    invoke-direct {p0, v3, v4, p1, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastIccStateChanged(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 1377
    :cond_4
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v2, :cond_1

    .line 1378
    const-string v3, "PhoneModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "judgeCardStatus:cardIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",card is absent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iput v6, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 1380
    if-nez p1, :cond_5

    .line 1381
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v6, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 1385
    :goto_2
    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isShutDown:Z

    if-nez v3, :cond_1

    .line 1386
    const-string v3, "ABSENT"

    const-string v4, "NO REASON"

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, p1, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastIccStateChanged(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 1383
    :cond_5
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v6, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_2
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 3652
    const-string v0, "PhoneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 3670
    const-string v0, "PhoneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 3661
    const-string v0, "PhoneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3662
    return-void
.end method

.method private notifyPinPukCheckResult(III)V
    .locals 2
    .param p1, "checkType"    # I
    .param p2, "result"    # I
    .param p3, "slotId"    # I

    .prologue
    .line 3556
    const/4 v0, -0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 3558
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3559
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3560
    monitor-exit v1

    .line 3565
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 3568
    :cond_0
    return-void

    .line 3560
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyPinQueryResult(IILjava/lang/String;)V
    .locals 3
    .param p1, "pinLeft"    # I
    .param p2, "slotId"    # I
    .param p3, "errType"    # Ljava/lang/String;

    .prologue
    .line 3484
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3485
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    .line 3487
    .local v1, "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    iget v2, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->events:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 3488
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->sendPinQueryResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V

    .line 3484
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3491
    .end local v1    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :cond_1
    return-void
.end method

.method private notifyPukQueryResult(IILjava/lang/String;)V
    .locals 3
    .param p1, "pukLeft"    # I
    .param p2, "slotId"    # I
    .param p3, "errType"    # Ljava/lang/String;

    .prologue
    .line 3520
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3521
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    .line 3523
    .local v1, "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    iget v2, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->events:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 3524
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->sendPukQueryResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V

    .line 3520
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3527
    .end local v1    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :cond_1
    return-void
.end method

.method private operateRadioCdmaAndGsm()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x8

    const/16 v5, 0x9

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operateRadioCdmaAndGsm ActiveOrNoGsm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ActiveOrNoCdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStateRadio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operateRadioCdmaAndGsm mLeftSlotModemType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRightSlotModemType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2222
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v0, v0, v4

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v0, v0, v3

    if-ne v0, v3, :cond_6

    .line 2225
    :cond_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2226
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 2228
    invoke-static {v7}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 2230
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v5

    .line 2231
    const-string v0, "CP_COMM: operateRadioCdmaAndGsm setModemPowerOperation not need"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2246
    :goto_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v4, v0, v4

    .line 2247
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v4, v0, v3

    .line 2248
    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 2249
    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    .line 2250
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2251
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2252
    const-string v0, "operateRadioCdmaAndGsm mCardSelectedInfo  close radio ok "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2320
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operateRadioCdmaAndGsm mStateRadio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2322
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v0, v0, v6

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v0, v0, v5

    if-ne v0, v3, :cond_1

    .line 2324
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->unlockPinFor3GCard()V

    .line 2325
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectCloseModemCdmaOrGsm()V

    .line 2327
    :cond_1
    return-void

    .line 2233
    :cond_2
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v0, :cond_3

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v0, :cond_4

    .line 2235
    :cond_3
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 2238
    :cond_4
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v5

    goto :goto_0

    .line 2242
    :cond_5
    const-string v0, "now in enterprise region ,not need to turn down radio"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2243
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v5

    .line 2244
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v6

    goto/16 :goto_0

    .line 2256
    :cond_6
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v0, v3, :cond_8

    .line 2257
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_7

    .line 2258
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 2264
    :goto_2
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2265
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2266
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v3, v0, v4

    .line 2287
    :goto_3
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v0, v7, :cond_c

    .line 2288
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_b

    .line 2289
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 2295
    :goto_4
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2296
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2297
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v3, v0, v3

    goto/16 :goto_1

    .line 2261
    :cond_7
    const-string v0, "now in enterprise region ,not need to turn on card 1 radio"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2262
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v6

    goto :goto_2

    .line 2267
    :cond_8
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v0, v7, :cond_a

    .line 2268
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_9

    .line 2269
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 2275
    :goto_5
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2276
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2277
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v3, v0, v4

    goto :goto_3

    .line 2272
    :cond_9
    const-string v0, "now in enterprise region ,not need to turn on card 1 radio"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2273
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v6

    goto :goto_5

    .line 2279
    :cond_a
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v6

    .line 2280
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v4, v0, v4

    .line 2281
    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 2282
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2283
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto/16 :goto_3

    .line 2292
    :cond_b
    const-string v0, "now in enterprise region ,not need to turn on card 2 radio"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2293
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v5

    goto :goto_4

    .line 2299
    :cond_c
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v0, v3, :cond_e

    .line 2300
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_d

    .line 2301
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 2307
    :goto_6
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2308
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2309
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v3, v0, v3

    goto/16 :goto_1

    .line 2304
    :cond_d
    const-string v0, "now in enterprise region ,not need to turn on card 2 radio"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2305
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v5

    goto :goto_6

    .line 2312
    :cond_e
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v3, v0, v5

    .line 2313
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v4, v0, v3

    .line 2314
    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    .line 2315
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2316
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v4, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto/16 :goto_1
.end method

.method private registerClientToNativeService()V
    .locals 2

    .prologue
    .line 1565
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 1567
    .local v0, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    .line 1568
    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->registerClient()I

    move-result v1

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1574
    .end local v0    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    return-void

    .line 1570
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 3576
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3577
    :try_start_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3579
    .local v1, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3580
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 3581
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3583
    monitor-exit v3

    .line 3587
    :goto_1
    return-void

    .line 3579
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3586
    :cond_1
    monitor-exit v3

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "recordCount":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private resetNet()I
    .locals 3

    .prologue
    .line 3843
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3844
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "yulong.intent.action.RESET_NET_OPERATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3845
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3846
    const/4 v1, 0x1

    return v1
.end method

.method private resetTouchScreen()I
    .locals 3

    .prologue
    .line 3425
    const/4 v1, 0x0

    .line 3428
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 3430
    .local v0, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    .line 3431
    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->resetTouchScreen()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3437
    .end local v0    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    return v1

    .line 3433
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private savePinToNativeService(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 3303
    const/4 v1, 0x0

    .line 3308
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 3310
    .local v0, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    .line 3311
    invoke-interface {v0, p1, p2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->savePinToNativeService(Ljava/lang/String;I)I

    move-result v1

    .line 3314
    :cond_0
    const-string v2, "CP_COMM: save pin to native service"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3319
    .end local v0    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :goto_0
    return v1

    .line 3315
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private selectCloseModemCdmaOrGsm()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    const/16 v2, 0xa

    const/4 v1, 0x1

    .line 2416
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v1, v0, v3

    .line 2417
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v1, v0, v2

    .line 2419
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v0, v0, v3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v0, v0, v2

    if-ne v0, v1, :cond_0

    .line 2421
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2425
    :cond_0
    return-void
.end method

.method private selectOpenModemCdmaOrGsm()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectOpenModemCdmaOrGsm mUserWishSelectedInfo mLeftSlotModemType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRightSlotModemType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectOpenModemCdmaOrGsm mCardSelectedInfo  mGsmRadio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCdmaRadio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2163
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 2164
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    .line 2165
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 2166
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 2167
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v0, :cond_0

    .line 2169
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v0, :cond_2

    .line 2171
    const-string v0, "CP_COMM: enter selectOpenModemCdmaOrGsm.333"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2172
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2173
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2186
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 2190
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    if-nez v0, :cond_1

    .line 2191
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPreferredNetworkModeForCGSwitch()V

    .line 2194
    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->activeOrDeactiveSubscription()V

    .line 2195
    return-void

    .line 2175
    :cond_2
    const-string v0, "CP_COMM: enter selectOpenModemCdmaOrGsm.222"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2176
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v0, v2, :cond_3

    .line 2178
    const-string v0, "PhoneModeService"

    const-string v1, "set mCardSelectedInfo.mCdmaRaido true with no card availible"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto :goto_0

    .line 2181
    :cond_3
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_0
.end method

.method private sendBroadcastandActiveOrDeactive(II)V
    .locals 3
    .param p1, "phoneid"    # I
    .param p2, "type"    # I

    .prologue
    .line 1439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter sendBroadcastandActiveOrDeactive phoneid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1440
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTIVE_OR_DEACTIVE_CARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1441
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PHONEID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1442
    const-string v1, "TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1443
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1445
    return-void
.end method

.method private sendPinQueryResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V
    .locals 2
    .param p1, "r"    # Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .param p2, "pinLeft"    # I
    .param p3, "slotId"    # I
    .param p4, "errType"    # Ljava/lang/String;

    .prologue
    .line 3504
    :try_start_0
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    if-eqz v1, :cond_0

    .line 3505
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->onQueryPinResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3510
    :cond_0
    :goto_0
    return-void

    .line 3507
    :catch_0
    move-exception v0

    .line 3508
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private sendPukQueryResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V
    .locals 2
    .param p1, "r"    # Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .param p2, "pukLeft"    # I
    .param p3, "slotId"    # I
    .param p4, "errType"    # Ljava/lang/String;

    .prologue
    .line 3540
    :try_start_0
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    if-eqz v1, :cond_0

    .line 3541
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->onQueryPinResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3546
    :cond_0
    :goto_0
    return-void

    .line 3543
    :catch_0
    move-exception v0

    .line 3544
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static setCardInfoofImsiBySlotId(ILjava/lang/String;I)V
    .locals 5
    .param p0, "slot"    # I
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "phonetype"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 2467
    const-string v0, "PhoneModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: setCardInfoofImsiBySlotId: slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "imsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phonetype ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    .line 2470
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    if-eqz v0, :cond_3

    .line 2471
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 2472
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    .line 2473
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 2474
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 2490
    :cond_0
    :goto_0
    return-void

    .line 2477
    :cond_1
    if-nez p0, :cond_2

    .line 2478
    const-string v0, "yulong.left.g.ismi"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2482
    :goto_1
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    .line 2483
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 2484
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    goto :goto_0

    .line 2480
    :cond_2
    const-string v0, "yulong.right.g.ismi"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2488
    :cond_3
    const-string v0, "PhoneModeService"

    const-string v1, "CP_COMM: mSlotCardInfoArray[slot] = null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setCardInfoofPinBySlotId(ILjava/lang/String;)V
    .locals 1
    .param p0, "slot"    # I
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2501
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    .line 2502
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p1, v0, p0

    .line 2504
    :cond_0
    return-void
.end method

.method public static setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V
    .locals 2
    .param p0, "phone1"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "phone2"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1586
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1587
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1588
    sput-object p2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    .line 1589
    return-void
.end method

.method private setPreferredModemType(I)Z
    .locals 4
    .param p1, "iPreferredModemType"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: setPreferredModemType iPreferredModemType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2879
    const-string v0, "gsm.current.modem-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2882
    if-ne v3, p1, :cond_0

    .line 2886
    const-string v0, "gsm.current.phone-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2896
    :goto_0
    return v2

    .line 2892
    :cond_0
    const-string v0, "gsm.current.phone-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPreferredNetworkModeForCGSwitch()V
    .locals 14

    .prologue
    const/4 v8, 0x2

    const/16 v13, 0xb

    const/16 v12, 0x47

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 4194
    const/4 v1, 0x0

    .line 4195
    .local v1, "is1xOrDoLteOnly":Z
    const/4 v2, 0x0

    .line 4196
    .local v2, "lteSwitch":I
    const/4 v5, 0x0

    .line 4197
    .local v5, "tdLteSwitch":I
    const-string v6, "persist.yulong.net.current"

    const-string v7, "4g"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4198
    .local v4, "netCurrent":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The netCurrent of this software version is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4199
    const-string v6, "4g"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4200
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lte_switch_status"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 4201
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "cdma_td_lte_switch_statue"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 4202
    if-ne v8, v2, :cond_0

    .line 4203
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lte_switch_status"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4204
    const/4 v2, 0x1

    .line 4208
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enter setPreferredNetworkModeForCGSwitch: TdlteSwitch is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ne v5, v11, :cond_6

    const-string v6, "ON"

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "lteSwitch is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ne v2, v11, :cond_7

    const-string v6, "ON"

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4212
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isRuWangMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4213
    :cond_1
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v8, 0x48

    invoke-virtual {v7, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/PhoneBase;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 4214
    const-string v6, "waiting for get preferred network type!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4215
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    monitor-enter v7

    .line 4217
    :try_start_0
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    const-wide/16 v8, 0x1f40

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4222
    :goto_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4223
    iget v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    if-ne v6, v13, :cond_3

    .line 4226
    :cond_2
    const-string v6, "operateRadioCdmaAndGsm: is1xOrDoLteOnly = true"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4227
    const/4 v1, 0x1

    .line 4229
    :cond_3
    iget v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPreferredNetwork:I

    if-ne v6, v13, :cond_4

    if-nez v2, :cond_4

    .line 4230
    const/4 v1, 0x0

    .line 4234
    :cond_4
    if-ne v2, v11, :cond_8

    if-ne v5, v11, :cond_8

    .line 4235
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v7, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v13, v7}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 4237
    const-string v6, "wait set preferred network type!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4238
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

    monitor-enter v7

    .line 4240
    :try_start_2
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4245
    :goto_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4246
    const-string v6, "set preferred network type over!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4287
    :cond_5
    :goto_4
    return-void

    .line 4208
    :cond_6
    const-string v6, "OFF"

    goto/16 :goto_0

    :cond_7
    const-string v6, "OFF"

    goto/16 :goto_1

    .line 4218
    :catch_0
    move-exception v0

    .line 4220
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 4222
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 4241
    :catch_1
    move-exception v0

    .line 4243
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 4245
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    .line 4249
    :cond_8
    if-nez v1, :cond_5

    .line 4256
    const-string v6, "persist.yulong.net.mpseries"

    const-string v7, "4G_V1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4257
    .local v3, "mpseriesMode":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enter setPreferredNetworkModeForCGSwitch:mpseriesMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4259
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v6

    if-ne v6, v11, :cond_a

    .line 4260
    const-string v6, "4G_V3"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isRuWangMode()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4261
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    const/16 v7, 0x9

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v8, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 4277
    :goto_5
    const-string v6, "wait set preferred network type!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4278
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

    monitor-enter v7

    .line 4280
    :try_start_6
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 4285
    :goto_6
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 4286
    const-string v6, "set preferred network type over!"

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 4264
    :cond_9
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v7, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_5

    .line 4268
    :cond_a
    if-ne v2, v11, :cond_c

    invoke-virtual {p0, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isLTECard(I)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-direct {p0, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isLTEWhiteCard(I)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_b
    const-string v6, "4G_V3"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 4270
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    const/16 v7, 0x8

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v8, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_5

    .line 4273
    :cond_c
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v10

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v8, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_5

    .line 4281
    :catch_2
    move-exception v0

    .line 4283
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 4285
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v6
.end method

.method private setSessionState(Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;)V
    .locals 2
    .param p1, "ss"    # Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    .prologue
    .line 4445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: setSessionState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4446
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    .line 4447
    return-void
.end method

.method public static setSlotConnectMode(I)V
    .locals 0
    .param p0, "SlotConnectMode"    # I

    .prologue
    .line 3292
    return-void
.end method

.method private switchPhoneOneOrNot(I)Z
    .locals 11
    .param p1, "cardIndex"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1392
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    .line 1393
    .local v3, "oldPhoneOneType":I
    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v1

    .line 1394
    .local v1, "newPhoneOneType":I
    const-string v6, "PhoneModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchPhoneOneOrNot: oldPhoneOneType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",newPhoneOneType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    const-string v2, ""

    .line 1397
    .local v2, "newPhoneType":Ljava/lang/String;
    if-ne v3, v4, :cond_0

    if-ne v1, v4, :cond_0

    .line 1399
    const-string v2, "cdma"

    .line 1400
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aput v4, v6, v5

    .line 1408
    :goto_0
    const-string v6, "PhoneModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchPhoneOneOrNot: newPhoneType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->dispose()V

    .line 1411
    const/4 v6, -0x1

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIntentPhoneType:I

    .line 1412
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1413
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v5, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 1414
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v5, v6, v5

    .line 1415
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v10, v2, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1416
    .local v0, "arEx":Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v5, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1417
    .end local v0    # "arEx":Landroid/os/AsyncResult;
    :goto_1
    return v4

    .line 1401
    :cond_0
    if-ne v3, v9, :cond_1

    if-eq v1, v4, :cond_1

    .line 1403
    const-string v2, "gsm"

    .line 1404
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aput v9, v6, v5

    goto :goto_0

    :cond_1
    move v4, v5

    .line 1406
    goto :goto_1
.end method

.method private switchPhoneoneType()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 4116
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->dispose()V

    .line 4117
    const-string v1, ""

    .line 4118
    .local v1, "newPhoneType":Ljava/lang/String;
    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIntentPhoneType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 4119
    const-string v1, "gsm"

    .line 4123
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIntentPhoneType:I

    .line 4124
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 4125
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 4126
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v4, v2, v4

    .line 4127
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v5, v1, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 4129
    .local v0, "arEx":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 4130
    return-void

    .line 4121
    .end local v0    # "arEx":Landroid/os/AsyncResult;
    :cond_0
    const-string v1, "cdma"

    goto :goto_0
.end method

.method private switchSlotBindMode()Z
    .locals 2

    .prologue
    .line 3016
    const/4 v0, 0x1

    .line 3018
    .local v0, "success":Z
    const-string v1, "CP_COMM: 9060\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u03b5\ufffdNativeService\ufffd\ufffd\ufffd\ufffd switchSlotBindMode"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 3020
    return v0
.end method

.method private updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1641
    const/4 v0, 0x0

    .line 1643
    .local v0, "errNo":I
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->removeMessages(I)V

    .line 1645
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->Isequal(Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1649
    const-string v2, "CP_COMM: broadcastSelectNetFinish  uneuqal "

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1650
    const-string p1, "RILError"

    .line 1653
    :cond_0
    const-string v2, "Success"

    if-ne p1, v2, :cond_5

    .line 1654
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-eq v2, v3, :cond_1

    .line 1655
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPreferredModemType(I)Z

    .line 1658
    :cond_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->copyData(Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;)V

    .line 1660
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v2, :cond_3

    .line 1661
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1666
    :goto_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v2, :cond_4

    .line 1667
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1748
    :cond_2
    :goto_1
    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 1749
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    .line 1750
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    .line 1751
    invoke-direct {p0, p1, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSelectNetFinishIntent(Ljava/lang/String;I)V

    .line 1752
    return-void

    .line 1663
    :cond_3
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_0

    .line 1669
    :cond_4
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_1

    .line 1671
    :cond_5
    const-string v2, "RILError"

    if-eq p1, v2, :cond_6

    const-string v2, "TimeOut"

    if-ne p1, v2, :cond_2

    .line 1673
    :cond_6
    const/4 v1, 0x0

    .line 1675
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0xb

    if-gt v1, v2, :cond_8

    .line 1676
    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v1

    if-nez v2, :cond_7

    .line 1677
    add-int/lit8 v0, v1, 0x1

    .line 1682
    :cond_7
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v1

    .line 1675
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1685
    :cond_8
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v6, v2, :cond_9

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_9

    .line 1687
    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPreferredModemType(I)Z

    .line 1688
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 1694
    :goto_3
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v2

    if-ne v2, v4, :cond_d

    .line 1695
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_a

    .line 1696
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1697
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1703
    :goto_4
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v2, :cond_b

    .line 1704
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1705
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1711
    :goto_5
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v4, :cond_c

    .line 1712
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 1743
    :goto_6
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-nez v2, :cond_2

    .line 1744
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v7, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_1

    .line 1690
    :cond_9
    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPreferredModemType(I)Z

    .line 1691
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    goto :goto_3

    .line 1699
    :cond_a
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1700
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_4

    .line 1707
    :cond_b
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1708
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_5

    .line 1714
    :cond_c
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto :goto_6

    .line 1720
    :cond_d
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v2, :cond_e

    .line 1721
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1722
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1728
    :goto_7
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_f

    .line 1729
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1730
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1736
    :goto_8
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v6, :cond_10

    .line 1737
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto :goto_6

    .line 1724
    :cond_e
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1725
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_7

    .line 1732
    :cond_f
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1733
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_8

    .line 1739
    :cond_10
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto :goto_6
.end method

.method private updateInfoWhenPullOutBattery(I)I
    .locals 2
    .param p1, "status"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 3411
    if-nez p1, :cond_0

    .line 3412
    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 3413
    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    .line 3415
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 3416
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 3419
    :cond_0
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSyncMessageToRenew(I)V

    .line 3421
    return v1
.end method

.method private waitBeforeorAfterUnlockPin()V
    .locals 5

    .prologue
    .line 2858
    const-string v1, "CP_COMM: waitActiveCardBeforeUnlockPin "

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2860
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    monitor-enter v2

    .line 2862
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2866
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 2867
    return-void

    .line 2863
    :catch_0
    move-exception v0

    .line 2864
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CP_COMM: interrupted while waitParseCardAfterUnlockPin"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 2866
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private waitParseCardAfterUnlockPin(I)I
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x1

    .line 2826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: waitParseCardAfterUnlockPin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2828
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    :cond_0
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_2

    .line 2831
    :cond_1
    const-string v1, "CP_COMM: sleep 1 second and return."

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2833
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2847
    :goto_0
    return v5

    .line 2839
    :cond_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2841
    :try_start_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2845
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2842
    :catch_0
    move-exception v0

    .line 2843
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "CP_COMM: interrupted while waitParseCardAfterUnlockPin"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2834
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public ActivateCardBeforeUnlockPin(II)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "SlotConnectMode"    # I

    .prologue
    const/4 v1, 0x1

    .line 3772
    const-string v0, "CP_COMM: enter activate net"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3774
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-ne p1, v1, :cond_2

    if-ne p2, v1, :cond_2

    .line 3776
    :cond_1
    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    .line 3782
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: ActivateCardBeforeUnlockPin mNeedUnlockMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3785
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->waitBeforeorAfterUnlockPin()V

    .line 3786
    return-void

    .line 3780
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    goto :goto_0
.end method

.method public DeactivateCardAfterUnlockPin(IIIZ)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "SlotConnectMode"    # I
    .param p3, "callback"    # I
    .param p4, "result"    # Z

    .prologue
    const/4 v5, 0x1

    .line 3790
    const-string v1, "CP_COMM: enter deactivate net"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3791
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;

    monitor-enter v2

    .line 3793
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;

    const-wide/16 v3, 0x1f40

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3797
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3798
    const-string v1, "CP_COMM: DeactivateCardAfterUnlockPin wait end"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3799
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-ne p1, v5, :cond_4

    if-ne p2, v5, :cond_4

    .line 3801
    :cond_1
    if-nez p4, :cond_3

    .line 3831
    :cond_2
    :goto_1
    return-void

    .line 3794
    :catch_0
    move-exception v0

    .line 3795
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "CP_COMM: interrupted while waitParseCardAfterUnlockPin"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 3797
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3805
    :cond_3
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    monitor-enter v2

    .line 3807
    :try_start_3
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 3808
    const-string v1, "CP_COMM: wait untill deactive card1 success"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3812
    :goto_2
    :try_start_4
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 3809
    :catch_1
    move-exception v0

    .line 3810
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v1, "CP_COMM: interrupted while deactive"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 3816
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    if-eqz p4, :cond_2

    .line 3820
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    monitor-enter v2

    .line 3822
    :try_start_6
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 3823
    const-string v1, "CP_COMM: wait untill deactive card2 success"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3827
    :goto_3
    :try_start_7
    monitor-exit v2

    goto :goto_1

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    .line 3824
    :catch_2
    move-exception v0

    .line 3825
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_8
    const-string v1, "CP_COMM: interrupted while deactive"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3
.end method

.method public RestartNet4ModemReset()V
    .locals 2

    .prologue
    .line 4290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modem has been reseted,restart net again! mSessionState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4291
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->IDLE:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    if-eq v0, v1, :cond_0

    .line 4292
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->removeMessages(I)V

    .line 4293
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastLTESwitchFinished()V

    .line 4295
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSyncMessageToRenew(I)V

    .line 4296
    return-void
.end method

.method declared-synchronized acquireCpuWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3897
    monitor-enter p0

    :try_start_0
    const-string v1, "CP_COMM: Acquiring cpu wake lock"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3898
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3909
    :goto_0
    monitor-exit p0

    return-void

    .line 3902
    :cond_0
    :try_start_1
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3905
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x30000001

    const-string v2, "PhoneModeService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3908
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3897
    .end local v0    # "pm":Landroid/os/PowerManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public canGetCardInfo()V
    .locals 1

    .prologue
    .line 3874
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->silenceReboot:Z

    .line 3875
    return-void
.end method

.method public cdmaSubActiveNotify()V
    .locals 1

    .prologue
    .line 3870
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3871
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1549
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 1550
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 1551
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 1552
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLostCard(Landroid/os/Handler;)V

    .line 1553
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSubscriptionReady(Landroid/os/Handler;)V

    .line 1554
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    .line 1555
    return-void
.end method

.method public enableLTESwitch(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4375
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSessionState:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;->IDLE:Lcom/yulong/android/internal/telephony/PhoneModeService$SessionState;

    if-eq v3, v4, :cond_0

    .line 4381
    :goto_0
    return v1

    .line 4378
    :cond_0
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v4, 0x4f

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4379
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4380
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    move v1, v2

    .line 4381
    goto :goto_0
.end method

.method public enableLTESwitchAuto()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4450
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorTypeFromSys()I

    move-result v0

    .line 4451
    .local v0, "carrierType":I
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isRuWangMode()Z

    move-result v1

    .line 4453
    .local v1, "isRWMode":Z
    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isLTESwitchSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_1

    .line 4454
    :cond_0
    const-string v3, "CP_COMM: enableLTESwitchAuto: not allowed!"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4504
    :goto_0
    return v2

    .line 4480
    :cond_1
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v5

    aput-object v5, v4, v3

    .line 4481
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v5

    aput-object v5, v4, v2

    .line 4482
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    new-instance v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;ILcom/yulong/android/internal/telephony/PhoneModeService$1;)V

    aput-object v5, v4, v3

    .line 4483
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    new-instance v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;ILcom/yulong/android/internal/telephony/PhoneModeService$1;)V

    aput-object v5, v4, v2

    .line 4484
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v4, v4, v3

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mPriority:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6100(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v5, v5, v2

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mPriority:I
    invoke-static {v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6100(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 4485
    const-string v3, "CP_COMM: enableLTESwitchAuto: priority equal: mCardPri[0].mPriority , auto switch not needed!"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4489
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: enableLTESwitchAuto! mCardPri[0].mPriority = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v5, v5, v3

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mPriority:I
    invoke-static {v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6100(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCardPri[1].mPriority = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v5, v5, v2

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mPriority:I
    invoke-static {v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6100(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4492
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isActiveDefaultOn()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4493
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->initCardInfo()V

    .line 4496
    :cond_3
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v4, v4, v3

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mPriority:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6100(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v5, v5, v2

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mPriority:I
    invoke-static {v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6100(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 4498
    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->enableLTESwitch(Z)Z

    :goto_1
    move v2, v3

    .line 4504
    goto/16 :goto_0

    .line 4501
    :cond_4
    invoke-virtual {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->enableLTESwitch(Z)Z

    goto :goto_1
.end method

.method public getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 7
    .param p1, "iSlotId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 2515
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isFastPowerOnEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2516
    const-string v4, "persist.sys.fastbootup.mode"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 2517
    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->silenceReboot:Z

    if-eqz v4, :cond_1

    .line 2518
    const-string v4, "getCardInfoBySlotId silenceReboot == true"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2577
    :cond_0
    :goto_0
    return-object v3

    .line 2525
    :cond_1
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isLTESwitchSupport()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mInitCompleted:Z

    if-eqz v4, :cond_0

    .line 2530
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v1

    .line 2531
    .local v1, "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    const/4 v2, 0x0

    .line 2532
    .local v2, "tempSlotCardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    if-eqz v1, :cond_3

    .line 2533
    invoke-interface {v1, p1}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    .line 2535
    if-nez v2, :cond_4

    .line 2536
    const-string v4, "CP_COMM: myNativeSlotService.getCardInfoBySlotId == null"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2571
    .end local v1    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .end local v2    # "tempSlotCardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :catch_0
    move-exception v0

    .line 2573
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "CP_COMM: myNativeSlotService == null"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 2577
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    goto :goto_0

    .line 2541
    .restart local v1    # "myNativeSlotService":Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .restart local v2    # "tempSlotCardInfo":Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :cond_4
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM:iSlotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", getCardInfoBySlotId == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2545
    if-nez p1, :cond_6

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_6

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2546
    iget v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_5

    iget v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v3, v6, :cond_5

    iget v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 2550
    :cond_5
    const/4 v3, -0x4

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 2553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimCard on slot1,make it no card,cardtype ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2558
    :cond_6
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aput-object v2, v3, p1

    .line 2560
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    if-ne v3, v6, :cond_3

    .line 2562
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    if-eqz v3, :cond_7

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 2564
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    aput-object v4, v3, p1

    .line 2565
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    .line 2568
    :cond_7
    invoke-static {}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getDefault()Lcom/yulong/android/internal/telephony/CardInfoParse;

    move-result-object v3

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getCarrierNameBySlotInfo(Lcom/yulong/android/internal/telephony/SlotCardInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public getCardStatusByPhoneId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, -0x1

    .line 3194
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 3196
    .local v0, "slotId":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3203
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 3204
    const-string v2, "CP_COMM: mSlotCardInfoArray[slotId] = null."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    .line 3209
    :cond_1
    :goto_0
    return v1

    :cond_2
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    goto :goto_0
.end method

.method public getCardTypeBySlotId(I)I
    .locals 2
    .param p1, "iSlotId"    # I

    .prologue
    .line 2589
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2591
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 2593
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    const-string v1, "1234567890"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCardTypeBySlotId  1234567890 iSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2595
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    const/4 v1, 0x2

    iput v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 2600
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCardTypeBySlotId  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " iSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2601
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    return v0
.end method

.method public getDataFirewall(I)I
    .locals 2
    .param p1, "phoneid"    # I

    .prologue
    .line 3853
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataFirewall()I

    move-result v0

    return v0
.end method

.method public getImsi(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 4302
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 4303
    .local v0, "slotId":I
    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_1

    .line 4305
    const-string v2, "Wrong slot id!"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4328
    :cond_0
    :goto_0
    return-object v1

    .line 4310
    :cond_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    .line 4311
    if-ne p1, v3, :cond_3

    .line 4312
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v3, v1, :cond_2

    .line 4313
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    goto :goto_0

    .line 4315
    :cond_2
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    goto :goto_0

    .line 4317
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 4318
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v3, v1, :cond_4

    .line 4319
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    goto :goto_0

    .line 4321
    :cond_4
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    goto :goto_0

    .line 4327
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null == mSlotCardInfoArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPinPukValidCount(II)I
    .locals 5
    .param p1, "pinType"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 2613
    const/4 v1, -0x5

    .line 2615
    .local v1, "result":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: getPinPukValidCount, pinType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSelectNet="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2618
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p2

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v3, :cond_0

    move v2, v1

    .line 2628
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 2623
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v0

    .line 2624
    .local v0, "phoneId":I
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 2625
    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    .line 2626
    invoke-direct {p0, p1, v0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSynPinPukValidCount(III)I

    move-result v1

    .line 2627
    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->finishGetPinOrPukLeftNum(I)V

    move v2, v1

    .line 2628
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public gsmSubActiveNotify()V
    .locals 1

    .prologue
    .line 3865
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3866
    return-void
.end method

.method public handleAirBrocast(Z)Z
    .locals 5
    .param p1, "isAirplaneModeOn"    # Z

    .prologue
    const/16 v4, 0x53

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " xinghainan handleAirBrocast = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4572
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 4576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xinghainan handleAirBrocast : isAirplaneModeOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4577
    if-eqz p1, :cond_1

    .line 4578
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 4580
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 4582
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->AIRPLANE_MODE_FLAG:I

    .line 4592
    :cond_0
    :goto_0
    return v2

    .line 4585
    :cond_1
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 4587
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v1, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 4589
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->AIRPLANE_MODE_FLAG:I

    goto :goto_0
.end method

.method public isActivePhoneByPhoneId(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 3234
    const/4 v1, 0x0

    .line 3235
    .local v1, "slotId":I
    const/4 v0, 0x0

    .line 3236
    .local v0, "radioState":Z
    if-ne p1, v3, :cond_3

    .line 3237
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 3241
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v1

    .line 3243
    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_2

    .line 3250
    :cond_1
    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v5

    if-nez v5, :cond_4

    .line 3251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: mSlotCardInfoArray[slotId] = null. phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    .line 3269
    :cond_2
    :goto_1
    return v2

    .line 3238
    :cond_3
    if-ne p1, v4, :cond_0

    .line 3239
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_0

    .line 3257
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isActivePhoneByPhoneId phoneId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "radioState = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "mSlotCardInfoArray[slotId].mCardType = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3261
    if-eqz v0, :cond_6

    .line 3262
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v2, :cond_5

    move v2, v3

    .line 3263
    goto :goto_1

    :cond_5
    move v2, v4

    .line 3265
    goto :goto_1

    .line 3269
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isHasCard()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3220
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v2, :cond_0

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v2, :cond_0

    .line 3223
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isLTECard(I)Z
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4060
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    .line 4061
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getDualUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 4062
    .local v2, "icc":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v2, :cond_2

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 4063
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplications()[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 4064
    .local v0, "app":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_2

    .line 4065
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 4066
    aget-object v5, v0, v1

    if-eqz v5, :cond_0

    .line 4067
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLTECard: app[i].getType() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4068
    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v5, v6, :cond_0

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p1

    if-eqz v5, :cond_0

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 4071
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLTECard: mSlotCardInfoArray["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "].mGsmImsi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4089
    .end local v0    # "app":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "i":I
    .end local v2    # "icc":Lcom/android/internal/telephony/uicc/UiccCard;
    :goto_1
    return v3

    .line 4065
    .restart local v0    # "app":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v1    # "i":I
    .restart local v2    # "icc":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4076
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLTECard: mSlotCardInfoArray["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "].mGsmImsi = null"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    move v3, v4

    .line 4077
    goto :goto_1

    .end local v0    # "app":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "i":I
    :cond_2
    move v3, v4

    .line 4080
    goto :goto_1

    .line 4083
    .end local v2    # "icc":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_3
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p1

    if-eqz v5, :cond_4

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCsimImsi:Ljava/lang/String;

    if-eqz v5, :cond_4

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCsimImsi:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 4085
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLTECard: mSlotCardInfoArray["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "].mCsimImsi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCsimImsi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 4088
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLTECard: mSlotCardInfoArray["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "].mCsimImsi = null"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    move v3, v4

    .line 4089
    goto/16 :goto_1
.end method

.method public isLTESwitchAllowed()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4335
    const/4 v2, 0x0

    .line 4340
    .local v2, "ret":Z
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorTypeFromSys()I

    move-result v0

    .line 4341
    .local v0, "carrierType":I
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isRuWangMode()Z

    move-result v1

    .line 4343
    .local v1, "isRWMode":Z
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v4

    aput-object v4, v3, v7

    .line 4344
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v4

    aput-object v4, v3, v8

    .line 4346
    if-eqz v1, :cond_1

    .line 4347
    const/4 v2, 0x0

    .line 4365
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: isLTESwitchAllowed: carrierType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isRWMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4366
    return v2

    .line 4348
    :cond_1
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isLTESwitchSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4349
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 4350
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    new-instance v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v6, v6, v7

    iget v6, v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-direct {v4, p0, v5, v6, v9}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;ILcom/yulong/android/internal/telephony/PhoneModeService$1;)V

    aput-object v4, v3, v7

    .line 4351
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    new-instance v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getOperatorBySlotId(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v6, v6, v8

    iget v6, v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-direct {v4, p0, v5, v6, v9}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;ILcom/yulong/android/internal/telephony/PhoneModeService$1;)V

    aput-object v4, v3, v8

    .line 4352
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v3, v3, v7

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mPriority:I
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6100(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v4, v4, v8

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mPriority:I
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6100(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v3, v3, v7

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mOperatorTag:I
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6200(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v3, v3, v7

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mOperatorTag:I
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6200(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardPri:[Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;

    aget-object v3, v3, v8

    # getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->mOperatorTag:I
    invoke-static {v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;->access$6200(Lcom/yulong/android/internal/telephony/PhoneModeService$CardRatPriority;)I

    move-result v3

    if-nez v3, :cond_4

    .line 4354
    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 4356
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 4358
    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 4359
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 4361
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public isLTESwitched()Z
    .locals 1

    .prologue
    .line 4371
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLTESwitched:Z

    return v0
.end method

.method public operateUniversalInterface(III)I
    .locals 3
    .param p1, "actionId"    # I
    .param p2, "phoneId"    # I
    .param p3, "slotId"    # I

    .prologue
    .line 3124
    const/4 v0, 0x0

    .line 3126
    .local v0, "result":I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 3127
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getValidCardNum()I

    move-result v0

    .line 3159
    :cond_0
    :goto_0
    return v0

    .line 3128
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 3129
    invoke-virtual {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isActivePhoneByPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 3130
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 3131
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isNeedSwitchToUnlockPin(I)I

    move-result v0

    goto :goto_0

    .line 3132
    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 3133
    invoke-virtual {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardStatusByPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 3134
    :cond_4
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    .line 3135
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->waitParseCardAfterUnlockPin(I)I

    move-result v0

    goto :goto_0

    .line 3136
    :cond_5
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    .line 3137
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    goto :goto_0

    .line 3138
    :cond_6
    const/16 v2, 0xa

    if-ne p1, v2, :cond_7

    .line 3139
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 3140
    :cond_7
    const/4 v2, 0x7

    if-ne p1, v2, :cond_8

    .line 3141
    move v1, p2

    .line 3142
    .local v1, "status":I
    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoWhenPullOutBattery(I)I

    move-result v0

    .line 3143
    goto :goto_0

    .end local v1    # "status":I
    :cond_8
    const/16 v2, 0x8

    if-ne p1, v2, :cond_9

    .line 3144
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->resetTouchScreen()I

    move-result v0

    goto :goto_0

    .line 3145
    :cond_9
    const/16 v2, 0x9

    if-ne p1, v2, :cond_a

    .line 3146
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->resetNet()I

    move-result v0

    goto :goto_0

    .line 3147
    :cond_a
    const/16 v2, 0xc

    if-ne p1, v2, :cond_b

    .line 3148
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v0

    goto :goto_0

    .line 3151
    :cond_b
    const/16 v2, 0xd

    if-ne p1, v2, :cond_0

    .line 3152
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    if-nez v2, :cond_c

    .line 3153
    const/4 v0, 0x0

    goto :goto_0

    .line 3155
    :cond_c
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    iget v0, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto :goto_0
.end method

.method public registerForCdmaSubActive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3618
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3619
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 3620
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3621
    monitor-exit v2

    .line 3623
    return-void

    .line 3621
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForCdmaSubDeactive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3591
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3592
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 3593
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubDeactiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3594
    monitor-exit v2

    .line 3595
    return-void

    .line 3594
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForGsmSubActive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3634
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3635
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 3636
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3637
    monitor-exit v2

    .line 3638
    return-void

    .line 3637
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForGsmSubDeactive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3604
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3605
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 3606
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubDeactiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3607
    monitor-exit v2

    .line 3609
    return-void

    .line 3607
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForSwitchPhone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4104
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4105
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 4106
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 4107
    monitor-exit v2

    .line 4108
    return-void

    .line 4107
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method declared-synchronized releaseCpuLock()V
    .locals 1

    .prologue
    .line 3916
    monitor-enter p0

    :try_start_0
    const-string v0, "CP_COMM: Releasing cpu wake lock"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3917
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 3918
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3919
    const/4 v0, 0x0

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3921
    :cond_0
    monitor-exit p0

    return-void

    .line 3916
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1611
    const-string v0, "CP_COMM: PhoneModeService  reset "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1612
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 1613
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 1614
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    aput-boolean v2, v0, v2

    .line 1615
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:[Z

    const/4 v1, 0x1

    aput-boolean v2, v0, v1

    .line 1616
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    .line 1617
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I

    .line 1618
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I

    .line 1619
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->setsubmodestate:I

    .line 1620
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    .line 1621
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    .line 1622
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 1623
    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    .line 1624
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 1625
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 1626
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1627
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1628
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 1629
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 1630
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1631
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1633
    return-void
.end method

.method public savaAllCardInfoToNativeService(Lcom/yulong/android/internal/telephony/SlotCardInfo;I)I
    .locals 1
    .param p1, "slotInfo"    # Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .param p2, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3927
    const/4 v0, 0x0

    return v0
.end method

.method public selectCheck(II)V
    .locals 4
    .param p1, "iLeftSlotModemType"    # I
    .param p2, "iRightSlotModemType"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4172
    const-string v0, "0"

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    if-ne v0, v2, :cond_0

    if-nez p1, :cond_0

    .line 4175
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 4177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSlotCardInfoArray[0].mAppTypes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSlotCardInfoArray[0].mUniversalPinState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4181
    const-string v0, "0"

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    if-ne v0, v2, :cond_1

    if-nez p2, :cond_1

    .line 4184
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 4186
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSlotCardInfoArray[1].mAppTypes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mAppTypes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSlotCardInfoArray[1].mUniversalPinState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4190
    return-void
.end method

.method public selectCloseModemCdmaOrGsmInternal(IZ)V
    .locals 5
    .param p1, "modetype"    # I
    .param p2, "powersate"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectCloseModemCdmaOrGsmInternal  phonetype= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " powersate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2383
    if-ne p1, v4, :cond_1

    .line 2384
    if-nez p2, :cond_0

    .line 2385
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    .line 2409
    :goto_0
    return-void

    .line 2390
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {p0, v0, v4, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_0

    .line 2395
    :cond_1
    if-ne p1, v3, :cond_3

    .line 2396
    if-nez p2, :cond_2

    .line 2397
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_0

    .line 2401
    :cond_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {p0, v3, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_0

    .line 2406
    :cond_3
    const-string v0, "selectCloseModemCdmaOrGsmInternal err phonetype "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public selectModemAndPreferredSlot(III)I
    .locals 12
    .param p1, "iLeftSlotModemType"    # I
    .param p2, "iRightSlotModemType"    # I
    .param p3, "iPreferredSlotId"    # I

    .prologue
    .line 1934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2015 CP_COMM: PhoneModeService selectModemAndPreferredSlot, left = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preSID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SwitchintPhone ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1938
    sget v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->airplanecount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isXianWangMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: AIRPLANE_MODE_FLAG= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->AIRPLANE_MODE_FLAG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1943
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1947
    :goto_0
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->AIRPLANE_MODE_FLAG:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1950
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1951
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 1952
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->modechange:[I

    const/4 v1, 0x3

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->AIRPLANE_MODE_FLAG:I

    aput v2, v0, v1

    .line 1953
    const/4 v0, -0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->AIRPLANE_MODE_FLAG:I

    .line 1954
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x52

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1956
    const/4 v0, 0x1

    .line 2149
    :goto_1
    return v0

    .line 1944
    :catch_0
    move-exception v7

    .line 1945
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1960
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    if-eqz v0, :cond_1

    .line 1961
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1962
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1963
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 1964
    const/4 v0, 0x1

    goto :goto_1

    .line 1966
    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->canSwitchNetWorkbydsds()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1967
    const/4 v0, 0x3

    goto :goto_1

    .line 1970
    :cond_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1971
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mKeepSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1972
    invoke-virtual {p0, p1, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectCheck(II)V

    .line 1973
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->firstMemFlag:Z

    if-eqz v0, :cond_3

    .line 1974
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->firstMemFlag:Z

    .line 1976
    :cond_3
    const-string v0, "PhoneModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelectLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isActiveDefaultOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1981
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->initCardInfo()V

    .line 1983
    :cond_4
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1984
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1985
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 1989
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1992
    const/4 p1, 0x1

    .line 1995
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 1998
    const/4 p2, 0x2

    .line 2000
    :cond_6
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 2001
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 2002
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 2005
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 2007
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2010
    :cond_7
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->canSwitchNetWorkbydsds()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_9

    .line 2011
    const-string v0, "PhoneModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sSmsDelayCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-gt v0, p1, :cond_8

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-le v0, p2, :cond_9

    .line 2014
    :cond_8
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->removeMessages(I)V

    .line 2015
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2017
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    .line 2018
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2021
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    .line 2023
    const-string v0, "ABSENT"

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "ABSENT"

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sim_insert_state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2025
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v0, p1, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eq v0, p2, :cond_d

    .line 2027
    :cond_b
    const-string v0, "PhoneModeService"

    const-string v1, "The last action : not airmode ,then close net and back"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    const/4 p1, 0x0

    .line 2029
    const/4 p2, 0x0

    .line 2030
    const/4 p3, -0x1

    .line 2068
    :cond_c
    :goto_2
    const/4 v8, 0x0

    .line 2070
    .local v8, "i":I
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_12

    .line 2071
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isHasCardforIndia:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 2072
    const-string v0, "selectModemAndPreferredSlot india no mts CARD "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2073
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2074
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2075
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 2032
    .end local v8    # "i":I
    :cond_d
    const-string v0, "PhoneModeService"

    const-string v1, "The last action: airMode OR  same choice"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2036
    :cond_e
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->checkWhetherNeedSwitchPhone(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    .line 2037
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 2038
    const/4 v10, 0x0

    .line 2039
    .local v10, "ret":I
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v6, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2040
    .local v6, "cdmaRadioPower":Z
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSEDRegion()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    if-ne v6, v0, :cond_11

    .line 2041
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v9

    .line 2042
    .local v9, "isDisconnected":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operateRadioCdmaAndGsm isDisconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2043
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2044
    if-nez v9, :cond_f

    .line 2045
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock4:Ljava/lang/Object;

    monitor-enter v1

    .line 2047
    :try_start_1
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock4:Ljava/lang/Object;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2051
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2053
    :cond_f
    invoke-static {}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/yulong/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselectEx:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v11, 0x1f

    invoke-virtual {v5, v11}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/yulong/android/internal/telephony/SubscriptionManager;->activateorDeactivateRequest([IIIILandroid/os/Message;)I

    move-result v10

    .line 2056
    const/4 v0, 0x1

    if-ne v0, v10, :cond_10

    .line 2064
    .end local v9    # "isDisconnected":Z
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2048
    .restart local v9    # "isDisconnected":Z
    :catch_1
    move-exception v7

    .line 2049
    .restart local v7    # "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v0, "CP_COMM: interrupted"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_3

    .line 2051
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2059
    :cond_10
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->switchPhoneoneType()V

    goto :goto_4

    .line 2062
    .end local v9    # "isDisconnected":Z
    :cond_11
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->switchPhoneoneType()V

    goto :goto_4

    .line 2079
    .end local v6    # "cdmaRadioPower":Z
    .end local v10    # "ret":I
    .restart local v8    # "i":I
    :cond_12
    invoke-direct {p0, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->checkUserSelectValid(III)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2081
    const-string v0, "CP_COMM: selectModemAndPreferredSlot  SELECT_NET_CHOICE_ERROR"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2082
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 2084
    :cond_13
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    .line 2085
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 2086
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 2087
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p3, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 2088
    if-nez p3, :cond_14

    .line 2089
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 2092
    :cond_14
    const/4 v0, 0x1

    if-ne p3, v0, :cond_15

    .line 2093
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p2, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 2096
    :cond_15
    const/4 v0, -0x1

    if-eq p3, v0, :cond_16

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-nez v0, :cond_17

    .line 2098
    :cond_16
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 2101
    :cond_17
    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v0, 0x1

    if-ne v0, p2, :cond_1a

    .line 2103
    :cond_18
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2108
    :goto_5
    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-ne v0, p2, :cond_1b

    .line 2110
    :cond_19
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2115
    :goto_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    .line 2118
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v0, p1, :cond_1c

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v0, p2, :cond_1c

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-ne v0, v1, :cond_1c

    .line 2122
    const-string v0, "PhoneModeService"

    const-string v1, "shixiaogang selectModemAndPreferedSlotId() the two modemtypes are as same as the previous ones,just return FINISH."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2126
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2105
    :cond_1a
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto :goto_5

    .line 2112
    :cond_1b
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_6

    .line 2130
    :cond_1c
    const/4 v8, 0x0

    :goto_7
    const/16 v0, 0xb

    if-gt v8, v0, :cond_1d

    .line 2131
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x0

    aput v1, v0, v8

    .line 2130
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 2134
    :cond_1d
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 2135
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    .line 2136
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setSlotId(I)V

    .line 2138
    const/4 v8, 0x0

    :goto_8
    const/4 v0, 0x2

    if-gt v8, v0, :cond_1e

    .line 2139
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x1

    aput v1, v0, v8

    .line 2138
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 2141
    :cond_1e
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    .line 2143
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectOpenModemCdmaOrGsm()V

    .line 2144
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->removeMessages(I)V

    .line 2146
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x9c40

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2149
    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method public selectModemAndPreferredSlotId()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 4148
    const-string v0, "selectModemAndPreferredSlotId() after switch phone instance"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4149
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x37

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForLostCard(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4150
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4152
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4153
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4157
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x26

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4159
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v2, 0x40

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4162
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService$2;

    invoke-direct {v0, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$2;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    invoke-virtual {v0}, Lcom/yulong/android/internal/telephony/PhoneModeService$2;->start()V

    .line 4168
    return-void
.end method

.method public setCallBack(Lcom/yulong/android/internal/telephony/IPhoneModeListener;I)V
    .locals 7
    .param p1, "callback"    # Lcom/yulong/android/internal/telephony/IPhoneModeListener;
    .param p2, "events"    # I

    .prologue
    .line 3447
    if-eqz p2, :cond_2

    .line 3448
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 3450
    const/4 v3, 0x0

    .line 3452
    .local v3, "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3453
    .local v1, "b":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3455
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v4, v3

    .end local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .local v4, "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3456
    :try_start_1
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3458
    .end local v4    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .restart local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :try_start_2
    iget-object v5, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v5, :cond_0

    .line 3469
    :goto_1
    iput p2, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->events:I

    .line 3470
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3474
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "i":I
    .end local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :goto_2
    return-void

    .line 3455
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v2    # "i":I
    .restart local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .restart local v4    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    goto :goto_0

    .line 3463
    :cond_1
    :try_start_3
    new-instance v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3464
    .end local v4    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .restart local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :try_start_4
    iput-object v1, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    .line 3465
    iput-object p1, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    .line 3466
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3470
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "i":I
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 3472
    .end local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :cond_2
    invoke-interface {p1}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 3470
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v2    # "i":I
    .restart local v4    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .restart local v3    # "r":Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    goto :goto_3
.end method

.method public setCurConnectMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 3834
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    .line 3835
    return-void
.end method

.method public setDataFirewall(II)V
    .locals 2
    .param p1, "phoneid"    # I
    .param p2, "responseCode"    # I

    .prologue
    .line 3860
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneBase;->setDataFirewall(I)Z

    .line 3861
    return-void
.end method

.method public setNetSelectMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3838
    const-string v0, "yulong.net.select"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3840
    return-void
.end method

.method public setPinByIccLockSettings(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    .line 3334
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 3335
    .local v0, "slotId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: setPinByIccLockSettings sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3338
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p2, v1, v0

    .line 3340
    if-nez v0, :cond_0

    .line 3341
    const-string v1, "yulong.left.pin"

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3345
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    .line 3347
    const/4 v1, 0x1

    return v1

    .line 3343
    :cond_0
    const-string v1, "yulong.right.pin"

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSilenceRebootFlag()V
    .locals 1

    .prologue
    .line 3878
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->silenceReboot:Z

    .line 3879
    return-void
.end method

.method public setSwitchPhoneFalse()V
    .locals 1

    .prologue
    .line 4142
    const-string v0, "selectmodem  setSwitchPhoneFalse"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    .line 4144
    return-void
.end method

.method public supplyDualPin(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    const/4 v6, 0x0

    .line 2687
    const/4 v3, 0x0

    .line 2688
    .local v3, "result":Z
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v2

    .line 2689
    .local v2, "phoneId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: enter supplyDualPin, sid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSelectNet="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2693
    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 2694
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    .line 2697
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4, p1, v2}, Lcom/android/internal/telephony/ITelephony;->supplyDualPin(Ljava/lang/String;I)Z

    move-result v3

    .line 2699
    if-eqz v3, :cond_3

    .line 2700
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    const/4 v5, 0x1

    iput v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 2701
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    const-string v5, ""

    iput-object v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 2702
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    const-string v5, ""

    iput-object v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 2703
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p1, v4, p2

    .line 2705
    if-nez p2, :cond_2

    .line 2706
    const-string v4, "yulong.left.pin"

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2711
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    .line 2715
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardTypeBySendAt()V

    .line 2723
    :cond_0
    :goto_1
    const-string v4, "CP_COMM: sleep 3s to wait card state to ready"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2725
    const-wide/16 v4, 0xbb8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2733
    :goto_2
    if-nez v3, :cond_1

    .line 2734
    const/4 v4, -0x1

    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 2737
    :cond_1
    return v3

    .line 2708
    :cond_2
    :try_start_2
    const-string v4, "yulong.right.pin"

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2729
    :catch_0
    move-exception v1

    .line 2730
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: RemoteException from supplyDualPin()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_2

    .line 2717
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_3
    :try_start_3
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, p2

    .line 2718
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    iget-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    .line 2719
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    iget-byte v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    if-gez v4, :cond_0

    .line 2720
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    const/4 v5, 0x0

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    goto :goto_1

    .line 2726
    :catch_1
    move-exception v0

    .line 2727
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method public supplyDualPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .prologue
    .line 2750
    const/4 v3, 0x0

    .line 2751
    .local v3, "result":Z
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v2

    .line 2752
    .local v2, "phoneId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: enter supplyDualPuk, sid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSelectNet="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2757
    const/4 v4, 0x2

    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 2758
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    .line 2761
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4, p1, p2, v2}, Lcom/android/internal/telephony/ITelephony;->supplyDualPuk(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 2763
    if-eqz v3, :cond_3

    .line 2764
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const/4 v5, 0x1

    iput v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 2765
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const/16 v5, 0xa

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 2766
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const-string v5, ""

    iput-object v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 2767
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const-string v5, ""

    iput-object v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 2768
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p2, v4, p3

    .line 2770
    if-nez p3, :cond_2

    .line 2771
    const-string v4, "yulong.left.pin"

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2775
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    .line 2779
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardTypeBySendAt()V

    .line 2787
    :cond_0
    :goto_1
    const-string v4, "CP_COMM: sleep 3s to wait card state to ready"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2789
    const-wide/16 v4, 0xbb8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2797
    :goto_2
    if-nez v3, :cond_1

    .line 2798
    const/4 v4, -0x1

    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 2801
    :cond_1
    return v3

    .line 2773
    :cond_2
    :try_start_2
    const-string v4, "yulong.right.pin"

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2793
    :catch_0
    move-exception v1

    .line 2794
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: RemoteException from supplyDualPuk()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_2

    .line 2781
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_3
    :try_start_3
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    iget-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 2783
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    iget-byte v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    if-gez v4, :cond_0

    .line 2784
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const/4 v5, 0x0

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    goto :goto_1

    .line 2790
    :catch_1
    move-exception v0

    .line 2791
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method public switchPhoneEx()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4133
    const-string v2, "selectmodem  switchphoneEx begin"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4134
    const-string v1, "none"

    .line 4135
    .local v1, "newPhoneType":Ljava/lang/String;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchPhone:Z

    .line 4136
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 4138
    .local v0, "arEx":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 4139
    return-void
.end method

.method public unlockPinFor3GCard()V
    .locals 12

    .prologue
    const/16 v11, 0x13

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2330
    const/4 v2, 0x0

    .line 2331
    .local v2, "slot":I
    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v1

    .line 2332
    .local v1, "phoneId":I
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v3, :cond_0

    .line 2334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: mIs3GUimCard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPinValues = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2337
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    if-ne v3, v7, :cond_0

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v10, :cond_0

    .line 2339
    const-string v3, "CP_COMM: enter unlock3Gpin"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2341
    const-wide/16 v3, 0x7d0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2346
    :goto_0
    if-ne v1, v9, :cond_2

    .line 2347
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 2355
    :cond_0
    :goto_1
    const/4 v2, 0x1

    .line 2356
    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v1

    .line 2357
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v3, :cond_1

    .line 2359
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    if-ne v3, v7, :cond_1

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v10, :cond_1

    .line 2362
    const-wide/16 v3, 0x7d0

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2367
    :goto_2
    if-ne v1, v9, :cond_3

    .line 2368
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 2376
    :cond_1
    :goto_3
    return-void

    .line 2342
    :catch_0
    move-exception v0

    .line 2344
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 2349
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    if-ne v1, v7, :cond_0

    .line 2350
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v5, v11}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 2363
    :catch_1
    move-exception v0

    .line 2365
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 2370
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    if-ne v1, v7, :cond_1

    .line 2371
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v5, v11}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_3
.end method

.method public unregisterForCdmaSubActive(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3626
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 3627
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3629
    monitor-exit v1

    .line 3631
    return-void

    .line 3629
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForCdmaSubDeactive(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3598
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 3599
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubDeactiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3600
    monitor-exit v1

    .line 3601
    return-void

    .line 3600
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForGsmSubActive(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3641
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 3642
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3643
    monitor-exit v1

    .line 3644
    return-void

    .line 3643
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForGsmSubDeactive(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3612
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 3613
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubDeactiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3614
    monitor-exit v1

    .line 3615
    return-void

    .line 3614
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForSwitchPhone(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 4110
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 4111
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4112
    monitor-exit v1

    .line 4113
    return-void

    .line 4112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
