.class Landroid/app/ContextImpl;
.super Landroid/content/Context;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ContextImpl$ApplicationContentResolver;,
        Landroid/app/ContextImpl$StaticServiceFetcher;,
        Landroid/app/ContextImpl$ServiceFetcher;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_FILE_LIST:[Ljava/lang/String;

.field private static final SYSTEM_SERVICE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ContextImpl$ServiceFetcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ContextImpl"

.field private static WALLPAPER_FETCHER:Landroid/app/ContextImpl$ServiceFetcher;

.field private static sNextPerContextServiceCacheIndex:I

.field private static sSharedPrefs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/SharedPreferencesImpl;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityToken:Landroid/os/IBinder;

.field private final mBasePackageName:Ljava/lang/String;

.field private mCacheDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private final mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

.field private mDatabasesDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private mExternalCacheDirs:[Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mExternalFilesDirs:[Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mExternalObbDirs:[Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mFilesDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field final mMainThread:Landroid/app/ActivityThread;

.field private final mOpPackageName:Ljava/lang/String;

.field private mOuterContext:Landroid/content/Context;

.field private final mOverrideConfiguration:Landroid/content/res/Configuration;

.field final mPackageInfo:Landroid/app/LoadedApk;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreferencesDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mReceiverRestrictedContext:Landroid/content/Context;

.field private final mResources:Landroid/content/res/Resources;

.field private final mResourcesManager:Landroid/app/ResourcesManager;

.field private final mRestricted:Z

.field final mServiceCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mSync:Ljava/lang/Object;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 245
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Landroid/app/ContextImpl;->EMPTY_FILE_LIST:[Ljava/lang/String;

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/ContextImpl;->SYSTEM_SERVICE_MAP:Ljava/util/HashMap;

    .line 313
    sput v1, Landroid/app/ContextImpl;->sNextPerContextServiceCacheIndex:I

    .line 324
    new-instance v0, Landroid/app/ContextImpl$1;

    invoke-direct {v0}, Landroid/app/ContextImpl$1;-><init>()V

    sput-object v0, Landroid/app/ContextImpl;->WALLPAPER_FETCHER:Landroid/app/ContextImpl$ServiceFetcher;

    .line 331
    const-string v0, "accessibility"

    new-instance v1, Landroid/app/ContextImpl$2;

    invoke-direct {v1}, Landroid/app/ContextImpl$2;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 336
    const-string v0, "captioning"

    new-instance v1, Landroid/app/ContextImpl$3;

    invoke-direct {v1}, Landroid/app/ContextImpl$3;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 341
    const-string v0, "account"

    new-instance v1, Landroid/app/ContextImpl$4;

    invoke-direct {v1}, Landroid/app/ContextImpl$4;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 348
    const-string v0, "activity"

    new-instance v1, Landroid/app/ContextImpl$5;

    invoke-direct {v1}, Landroid/app/ContextImpl$5;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 353
    const-string v0, "alarm"

    new-instance v1, Landroid/app/ContextImpl$6;

    invoke-direct {v1}, Landroid/app/ContextImpl$6;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 360
    const-string v0, "audio"

    new-instance v1, Landroid/app/ContextImpl$7;

    invoke-direct {v1}, Landroid/app/ContextImpl$7;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 365
    const-string/jumbo v0, "media_router"

    new-instance v1, Landroid/app/ContextImpl$8;

    invoke-direct {v1}, Landroid/app/ContextImpl$8;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 370
    const-string v0, "bluetooth"

    new-instance v1, Landroid/app/ContextImpl$9;

    invoke-direct {v1}, Landroid/app/ContextImpl$9;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 375
    const-string v0, "clipboard"

    new-instance v1, Landroid/app/ContextImpl$10;

    invoke-direct {v1}, Landroid/app/ContextImpl$10;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 382
    const-string v0, "connectivity"

    new-instance v1, Landroid/app/ContextImpl$11;

    invoke-direct {v1}, Landroid/app/ContextImpl$11;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 395
    const-string v0, "country_detector"

    new-instance v1, Landroid/app/ContextImpl$12;

    invoke-direct {v1}, Landroid/app/ContextImpl$12;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 401
    const-string v0, "device_policy"

    new-instance v1, Landroid/app/ContextImpl$13;

    invoke-direct {v1}, Landroid/app/ContextImpl$13;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 406
    const-string v0, "download"

    new-instance v1, Landroid/app/ContextImpl$14;

    invoke-direct {v1}, Landroid/app/ContextImpl$14;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 411
    const-string/jumbo v0, "nfc"

    new-instance v1, Landroid/app/ContextImpl$15;

    invoke-direct {v1}, Landroid/app/ContextImpl$15;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 416
    const-string v0, "dropbox"

    new-instance v1, Landroid/app/ContextImpl$16;

    invoke-direct {v1}, Landroid/app/ContextImpl$16;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 421
    const-string v0, "input"

    new-instance v1, Landroid/app/ContextImpl$17;

    invoke-direct {v1}, Landroid/app/ContextImpl$17;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 426
    const-string v0, "display"

    new-instance v1, Landroid/app/ContextImpl$18;

    invoke-direct {v1}, Landroid/app/ContextImpl$18;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 432
    const-string v0, "input_method"

    new-instance v1, Landroid/app/ContextImpl$19;

    invoke-direct {v1}, Landroid/app/ContextImpl$19;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 437
    const-string/jumbo v0, "textservices"

    new-instance v1, Landroid/app/ContextImpl$20;

    invoke-direct {v1}, Landroid/app/ContextImpl$20;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 442
    const-string v0, "keyguard"

    new-instance v1, Landroid/app/ContextImpl$21;

    invoke-direct {v1}, Landroid/app/ContextImpl$21;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 451
    const-string v0, "layout_inflater"

    new-instance v1, Landroid/app/ContextImpl$22;

    invoke-direct {v1}, Landroid/app/ContextImpl$22;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 456
    const-string v0, "location"

    new-instance v1, Landroid/app/ContextImpl$23;

    invoke-direct {v1}, Landroid/app/ContextImpl$23;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 462
    const-string/jumbo v0, "netpolicy"

    new-instance v1, Landroid/app/ContextImpl$24;

    invoke-direct {v1}, Landroid/app/ContextImpl$24;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 470
    const-string/jumbo v0, "notification"

    new-instance v1, Landroid/app/ContextImpl$25;

    invoke-direct {v1}, Landroid/app/ContextImpl$25;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 483
    const-string/jumbo v0, "servicediscovery"

    new-instance v1, Landroid/app/ContextImpl$26;

    invoke-direct {v1}, Landroid/app/ContextImpl$26;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 494
    const-string/jumbo v0, "power"

    new-instance v1, Landroid/app/ContextImpl$27;

    invoke-direct {v1}, Landroid/app/ContextImpl$27;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 502
    const-string/jumbo v0, "search"

    new-instance v1, Landroid/app/ContextImpl$28;

    invoke-direct {v1}, Landroid/app/ContextImpl$28;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 508
    const-string/jumbo v0, "sensor"

    new-instance v1, Landroid/app/ContextImpl$29;

    invoke-direct {v1}, Landroid/app/ContextImpl$29;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 514
    const-string/jumbo v0, "statusbar"

    new-instance v1, Landroid/app/ContextImpl$30;

    invoke-direct {v1}, Landroid/app/ContextImpl$30;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 519
    const-string/jumbo v0, "storage"

    new-instance v1, Landroid/app/ContextImpl$31;

    invoke-direct {v1}, Landroid/app/ContextImpl$31;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 538
    const-string/jumbo v0, "phone"

    new-instance v1, Landroid/app/ContextImpl$33;

    invoke-direct {v1}, Landroid/app/ContextImpl$33;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 552
    const-string/jumbo v0, "uimode"

    new-instance v1, Landroid/app/ContextImpl$34;

    invoke-direct {v1}, Landroid/app/ContextImpl$34;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 557
    const-string/jumbo v0, "usb"

    new-instance v1, Landroid/app/ContextImpl$35;

    invoke-direct {v1}, Landroid/app/ContextImpl$35;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 563
    const-string/jumbo v0, "serial"

    new-instance v1, Landroid/app/ContextImpl$36;

    invoke-direct {v1}, Landroid/app/ContextImpl$36;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 569
    const-string/jumbo v0, "vibrator"

    new-instance v1, Landroid/app/ContextImpl$37;

    invoke-direct {v1}, Landroid/app/ContextImpl$37;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 584
    const-string/jumbo v0, "wallpaper"

    sget-object v1, Landroid/app/ContextImpl;->WALLPAPER_FETCHER:Landroid/app/ContextImpl$ServiceFetcher;

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 586
    const-string/jumbo v0, "wifi"

    new-instance v1, Landroid/app/ContextImpl$39;

    invoke-direct {v1}, Landroid/app/ContextImpl$39;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 593
    const-string/jumbo v0, "wifip2p"

    new-instance v1, Landroid/app/ContextImpl$40;

    invoke-direct {v1}, Landroid/app/ContextImpl$40;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 600
    const-string/jumbo v0, "window"

    new-instance v1, Landroid/app/ContextImpl$41;

    invoke-direct {v1}, Landroid/app/ContextImpl$41;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 615
    const-string/jumbo v0, "user"

    new-instance v1, Landroid/app/ContextImpl$42;

    invoke-direct {v1}, Landroid/app/ContextImpl$42;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 622
    const-string v0, "appops"

    new-instance v1, Landroid/app/ContextImpl$43;

    invoke-direct {v1}, Landroid/app/ContextImpl$43;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 629
    const-string v0, "camera"

    new-instance v1, Landroid/app/ContextImpl$44;

    invoke-direct {v1}, Landroid/app/ContextImpl$44;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 635
    const-string/jumbo v0, "print"

    new-instance v1, Landroid/app/ContextImpl$45;

    invoke-direct {v1}, Landroid/app/ContextImpl$45;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 643
    const-string v0, "consumer_ir"

    new-instance v1, Landroid/app/ContextImpl$46;

    invoke-direct {v1}, Landroid/app/ContextImpl$46;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 654
    const-string v0, "coolpadSystem"

    new-instance v1, Landroid/app/ContextImpl$47;

    invoke-direct {v1}, Landroid/app/ContextImpl$47;-><init>()V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 659
    return-void
.end method

.method private constructor <init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "container"    # Landroid/app/ContextImpl;
    .param p2, "mainThread"    # Landroid/app/ActivityThread;
    .param p3, "packageInfo"    # Landroid/app/LoadedApk;
    .param p4, "activityToken"    # Landroid/os/IBinder;
    .param p5, "user"    # Landroid/os/UserHandle;
    .param p6, "restricted"    # Z
    .param p7, "display"    # Landroid/view/Display;
    .param p8, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 2066
    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    .line 216
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 222
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 223
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 225
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    .line 227
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    .line 673
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mServiceCache:Ljava/util/ArrayList;

    .line 2067
    iput-object p0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    .line 2069
    iput-object p2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2070
    iput-object p4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    .line 2071
    move/from16 v0, p6

    iput-boolean v0, p0, Landroid/app/ContextImpl;->mRestricted:Z

    .line 2073
    if-nez p5, :cond_0

    .line 2074
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p5

    .line 2076
    :cond_0
    iput-object p5, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    .line 2078
    iput-object p3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2079
    new-instance v1, Landroid/app/ContextImpl$ApplicationContentResolver;

    invoke-direct {v1, p0, p2, p5}, Landroid/app/ContextImpl$ApplicationContentResolver;-><init>(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/os/UserHandle;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    .line 2080
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2081
    move-object/from16 v0, p7

    iput-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    .line 2082
    move-object/from16 v0, p8

    iput-object v0, p0, Landroid/app/ContextImpl;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 2084
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v4

    .line 2085
    .local v4, "displayId":I
    const/4 v6, 0x0

    .line 2086
    .local v6, "compatInfo":Landroid/content/res/CompatibilityInfo;
    if-eqz p1, :cond_1

    .line 2087
    invoke-virtual {p1, v4}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    .line 2089
    :cond_1
    if-nez v6, :cond_2

    if-nez v4, :cond_2

    .line 2090
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    .line 2092
    :cond_2
    iget-object v1, p0, Landroid/app/ContextImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v1, v6}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 2093
    iget-object v1, p0, Landroid/app/ContextImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v1, p4}, Landroid/view/DisplayAdjustments;->setActivityToken(Landroid/os/IBinder;)V

    .line 2095
    invoke-virtual {p3, p2}, Landroid/app/LoadedApk;->getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;

    move-result-object v9

    .line 2096
    .local v9, "resources":Landroid/content/res/Resources;
    if-eqz v9, :cond_4

    .line 2097
    if-nez p4, :cond_3

    if-nez v4, :cond_3

    if-nez p8, :cond_3

    if-eqz v6, :cond_4

    iget v1, v6, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v9}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 2105
    :cond_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v2, p3, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, p8

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/app/ResourcesManager;->getTopLevelResources(Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)Landroid/content/res/Resources;

    move-result-object v9

    .line 2115
    :cond_4
    iput-object v9, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 2117
    if-eqz p1, :cond_5

    .line 2118
    iget-object v1, p1, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    .line 2119
    iget-object v1, p1, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    .line 2133
    :goto_0
    return-void

    .line 2121
    :cond_5
    iget-object v1, p3, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    .line 2122
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 2123
    .local v8, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_6

    iget v1, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 2128
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    goto :goto_0

    .line 2130
    :cond_6
    iget-object v1, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 192
    sget v0, Landroid/app/ContextImpl;->sNextPerContextServiceCacheIndex:I

    return v0
.end method

.method static synthetic access$100(Landroid/app/ContextImpl;)Landroid/view/Display;
    .locals 1
    .param p0, "x0"    # Landroid/app/ContextImpl;

    .prologue
    .line 192
    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method private bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 11
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1638
    if-nez p2, :cond_0

    .line 1639
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1641
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_2

    .line 1642
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2, p3}, Landroid/app/LoadedApk;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)Landroid/app/IServiceConnection;

    move-result-object v5

    .line 1647
    .local v5, "sd":Landroid/app/IServiceConnection;
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    .line 1649
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getActivityToken()Landroid/os/IBinder;

    move-result-object v10

    .line 1650
    .local v10, "token":Landroid/os/IBinder;
    if-nez v10, :cond_1

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 1653
    or-int/lit8 p3, p3, 0x20

    .line 1655
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1656
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object v3, p1

    move v6, p3

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I

    move-result v9

    .line 1660
    .local v9, "res":I
    if-gez v9, :cond_3

    .line 1661
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to bind to service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1665
    .end local v9    # "res":I
    .end local v10    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v8

    .line 1666
    .local v8, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0

    .line 1645
    .end local v5    # "sd":Landroid/app/IServiceConnection;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1664
    .restart local v5    # "sd":Landroid/app/IServiceConnection;
    .restart local v9    # "res":I
    .restart local v10    # "token":Landroid/os/IBinder;
    :cond_3
    if-eqz v9, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;)Landroid/app/ContextImpl;
    .locals 9
    .param p0, "mainThread"    # Landroid/app/ActivityThread;
    .param p1, "packageInfo"    # Landroid/app/LoadedApk;
    .param p2, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 2058
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2059
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activityInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2060
    :cond_1
    new-instance v0, Landroid/app/ContextImpl;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method static createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;
    .locals 9
    .param p0, "mainThread"    # Landroid/app/ActivityThread;
    .param p1, "packageInfo"    # Landroid/app/LoadedApk;

    .prologue
    const/4 v1, 0x0

    .line 2051
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2052
    :cond_0
    new-instance v0, Landroid/app/ContextImpl;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v1

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method static createDropBoxManager()Landroid/os/DropBoxManager;
    .locals 3

    .prologue
    .line 1713
    const-string v2, "dropbox"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1714
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IDropBoxManagerService;

    move-result-object v1

    .line 1715
    .local v1, "service":Lcom/android/internal/os/IDropBoxManagerService;
    if-nez v1, :cond_0

    .line 1720
    const/4 v2, 0x0

    .line 1722
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/os/DropBoxManager;

    invoke-direct {v2, v1}, Landroid/os/DropBoxManager;-><init>(Lcom/android/internal/os/IDropBoxManagerService;)V

    goto :goto_0
.end method

.method static createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;
    .locals 9
    .param p0, "mainThread"    # Landroid/app/ActivityThread;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 2042
    new-instance v3, Landroid/app/LoadedApk;

    invoke-direct {v3, p0}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;)V

    .line 2043
    .local v3, "packageInfo":Landroid/app/LoadedApk;
    new-instance v0, Landroid/app/ContextImpl;

    move-object v2, p0

    move-object v4, v1

    move-object v5, v1

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;)V

    .line 2045
    .local v0, "context":Landroid/app/ContextImpl;
    iget-object v1, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    iget-object v2, v0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v2}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v4, v0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v4, v6}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2047
    return-object v0
.end method

.method private enforce(Ljava/lang/String;IZILjava/lang/String;)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "resultOfCheck"    # I
    .param p3, "selfToo"    # Z
    .param p4, "uid"    # I
    .param p5, "message"    # Ljava/lang/String;

    .prologue
    .line 1765
    if-eqz p2, :cond_2

    .line 1766
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Neither user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " nor current process has "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " does not have "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1774
    :cond_2
    return-void
.end method

.method private enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .param p1, "modeFlags"    # I
    .param p2, "resultOfCheck"    # I
    .param p3, "selfToo"    # Z
    .param p4, "uid"    # I
    .param p5, "uri"    # Landroid/net/Uri;
    .param p6, "message"    # Ljava/lang/String;

    .prologue
    .line 1891
    if-eqz p2, :cond_2

    .line 1892
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p6, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Neither user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " nor current process has "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->uriModeFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " permission on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " does not have "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1902
    :cond_2
    return-void
.end method

.method private ensureDirsExistOrFilter([Ljava/io/File;)[Ljava/io/File;
    .locals 8
    .param p1, "dirs"    # [Ljava/io/File;

    .prologue
    .line 2221
    array-length v5, p1

    new-array v4, v5, [Ljava/io/File;

    .line 2222
    .local v4, "result":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_1

    .line 2223
    aget-object v0, p1, v1

    .line 2224
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2225
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2227
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2230
    const-string/jumbo v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 2232
    .local v2, "mount":Landroid/os/storage/IMountService;
    const/4 v3, -0x1

    .line 2234
    .local v3, "res":I
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/os/storage/IMountService;->mkdirs(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2237
    :goto_1
    if-eqz v3, :cond_0

    .line 2238
    const-string v5, "ContextImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to ensure directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    const/4 v0, 0x0

    .line 2244
    .end local v2    # "mount":Landroid/os/storage/IMountService;
    .end local v3    # "res":I
    :cond_0
    aput-object v0, v4, v1

    .line 2222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2246
    .end local v0    # "dir":Ljava/io/File;
    :cond_1
    return-object v4

    .line 2235
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "mount":Landroid/os/storage/IMountService;
    .restart local v3    # "res":I
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private getDataDirFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 2018
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    .line 2019
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getDataDirFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 2021
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDatabasesDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 1053
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1054
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 1055
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "databases"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    .line 1057
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "databases"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1058
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    .line 1060
    :cond_1
    iget-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    monitor-exit v1

    return-object v0

    .line 1061
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getDisplayId()I
    .locals 1

    .prologue
    .line 2004
    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 664
    :goto_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "nextContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 665
    move-object p0, v0

    goto :goto_0

    .line 667
    .end local v0    # "nextContext":Landroid/content/Context;
    :cond_0
    check-cast p0, Landroid/app/ContextImpl;

    .end local p0    # "context":Landroid/content/Context;
    return-object p0
.end method

.method private getPreferencesDir()Ljava/io/File;
    .locals 5

    .prologue
    .line 837
    iget-object v3, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 838
    :try_start_0
    iget-object v2, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 841
    const/4 v1, 0x0

    .line 843
    .local v1, "fd":Ljava/io/File;
    :try_start_1
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 847
    :goto_0
    if-nez v1, :cond_0

    .line 848
    :try_start_2
    new-instance v1, Ljava/io/File;

    .end local v1    # "fd":Ljava/io/File;
    const-string v2, "/data/system"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 850
    .restart local v1    # "fd":Ljava/io/File;
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "shared_prefs"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    .line 853
    .end local v1    # "fd":Ljava/io/File;
    :cond_1
    iget-object v2, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    monitor-exit v3

    return-object v2

    .line 844
    .restart local v1    # "fd":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "ContextImpl"

    const-string v4, "getPreferencesDir exception"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 854
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "fd":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private getWallpaperManager()Landroid/app/WallpaperManager;
    .locals 1

    .prologue
    .line 1709
    sget-object v0, Landroid/app/ContextImpl;->WALLPAPER_FETCHER:Landroid/app/ContextImpl$ServiceFetcher;

    invoke-virtual {v0, p0}, Landroid/app/ContextImpl$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "base"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2209
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 2210
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 2212
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Intent;
    .locals 9
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "userId"    # I
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 1505
    const/4 v3, 0x0

    .line 1506
    .local v3, "rd":Landroid/content/IIntentReceiver;
    if-eqz p1, :cond_1

    .line 1507
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_2

    if-eqz p6, :cond_2

    .line 1508
    if-nez p5, :cond_0

    .line 1509
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p5

    .line 1511
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    move-object v1, p1

    move-object v2, p6

    move-object v3, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    .end local v3    # "rd":Landroid/content/IIntentReceiver;
    move-result-object v3

    .line 1523
    .restart local v3    # "rd":Landroid/content/IIntentReceiver;
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    move-object v4, p3

    move-object v5, p4

    move v6, p2

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1527
    :goto_1
    return-object v0

    .line 1515
    :cond_2
    if-nez p5, :cond_3

    .line 1516
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p5

    .line 1518
    :cond_3
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v1, p1

    move-object v2, p6

    move-object v3, p5

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .end local v3    # "rd":Landroid/content/IIntentReceiver;
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v3

    .restart local v3    # "rd":Landroid/content/IIntentReceiver;
    goto :goto_0

    .line 1526
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    move-object v0, v8

    .line 1527
    goto :goto_1
.end method

.method private static registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V
    .locals 2
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "fetcher"    # Landroid/app/ContextImpl$ServiceFetcher;

    .prologue
    .line 315
    instance-of v0, p1, Landroid/app/ContextImpl$StaticServiceFetcher;

    if-nez v0, :cond_0

    .line 316
    sget v0, Landroid/app/ContextImpl;->sNextPerContextServiceCacheIndex:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/app/ContextImpl;->sNextPerContextServiceCacheIndex:I

    iput v0, p1, Landroid/app/ContextImpl$ServiceFetcher;->mContextCacheIndex:I

    .line 318
    :cond_0
    sget-object v0, Landroid/app/ContextImpl;->SYSTEM_SERVICE_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-void
.end method

.method static setFilePermissionsFromMode(Ljava/lang/String;II)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "extraPermissions"    # I

    .prologue
    const/4 v2, -0x1

    .line 2169
    or-int/lit16 v0, p2, 0x1b0

    .line 2172
    .local v0, "perms":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 2173
    or-int/lit8 v0, v0, 0x4

    .line 2175
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 2176
    or-int/lit8 v0, v0, 0x2

    .line 2182
    :cond_1
    invoke-static {p0, v0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2183
    return-void
.end method

.method private startServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 6
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1577
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    .line 1578
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1579
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-interface {v2, v3, p1, v4, v5}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 1582
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 1583
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1584
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed to start service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1594
    .end local v0    # "cn":Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    .line 1595
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v0

    .line 1587
    .restart local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1588
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method private stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .locals 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v2, 0x0

    .line 1606
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    .line 1607
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1608
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-interface {v3, v4, p1, v5, v6}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    .line 1611
    .local v1, "res":I
    if-gez v1, :cond_1

    .line 1612
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed to stop service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1616
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 1617
    :cond_0
    :goto_0
    return v2

    .line 1615
    .restart local v1    # "res":I
    :cond_1
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private uriModeFlagToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "uriModeFlags"    # I

    .prologue
    .line 1875
    packed-switch p1, :pswitch_data_0

    .line 1884
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission mode flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1878
    :pswitch_0
    const-string/jumbo v0, "read and write"

    .line 1882
    :goto_0
    return-object v0

    .line 1880
    :pswitch_1
    const-string/jumbo v0, "read"

    goto :goto_0

    .line 1882
    :pswitch_2
    const-string/jumbo v0, "write"

    goto :goto_0

    .line 1875
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private validateFilePath(Ljava/lang/String;Z)Ljava/io/File;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "createDirectory"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 2189
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_1

    .line 2190
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2191
    .local v1, "dirPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2192
    .local v0, "dir":Ljava/io/File;
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2193
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2199
    .end local v1    # "dirPath":Ljava/lang/String;
    .local v2, "f":Ljava/io/File;
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2200
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2205
    :cond_0
    return-object v2

    .line 2195
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    :cond_1
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    move-result-object v0

    .line 2196
    .restart local v0    # "dir":Ljava/io/File;
    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .restart local v2    # "f":Ljava/io/File;
    goto :goto_0
.end method

.method private validateServiceIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    .line 1546
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1548
    const-string v0, "ContextImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Implicit intents with startService are not safe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_0
    return-void
.end method

.method private warnIfCallingFromSystemProcess()V
    .locals 3

    .prologue
    .line 1946
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1947
    const-string v0, "ContextImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling a method in the system process without a qualified user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    :cond_0
    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    .line 1624
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1625
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1632
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1754
    if-nez p1, :cond_0

    .line 1755
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1758
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .prologue
    .line 1844
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    return v0
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1741
    if-nez p1, :cond_0

    .line 1742
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "permission is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1745
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1746
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1747
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    .line 1749
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public checkCallingUriPermission(Landroid/net/Uri;I)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .prologue
    .line 1834
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1835
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1836
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v1

    .line 1839
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 1727
    if-nez p1, :cond_0

    .line 1728
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "permission is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1732
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1735
    :goto_0
    return v1

    .line 1734
    :catch_0
    move-exception v0

    .line 1735
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .prologue
    .line 1825
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1828
    :goto_0
    return v1

    .line 1827
    :catch_0
    move-exception v0

    .line 1828
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I

    .prologue
    const/4 v0, 0x0

    .line 1856
    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_1

    .line 1857
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1

    .line 1870
    :cond_0
    :goto_0
    return v0

    .line 1863
    :cond_1
    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_2

    .line 1864
    if-eqz p3, :cond_0

    invoke-virtual {p0, p3, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1870
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public clearWallpaper()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1096
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->clear()V

    .line 1097
    return-void
.end method

.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 9
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 1985
    if-nez p1, :cond_0

    .line 1986
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "overrideConfiguration must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1989
    :cond_0
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget-boolean v6, p0, Landroid/app/ContextImpl;->mRestricted:Z

    iget-object v7, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    move-object v1, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .locals 9
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 1995
    if-nez p1, :cond_0

    .line 1996
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1999
    :cond_0
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget-boolean v6, p0, Landroid/app/ContextImpl;->mRestricted:Z

    iget-object v8, p0, Landroid/app/ContextImpl;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1955
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ContextImpl;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1962
    and-int/lit8 v1, p2, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v6, 0x1

    .line 1963
    .local v6, "restricted":Z
    :goto_0
    const-string/jumbo v1, "system"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1964
    :cond_0
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    iget-object v7, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    iget-object v8, p0, Landroid/app/ContextImpl;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;)V

    .line 1974
    :cond_1
    return-object v0

    .line 1962
    .end local v6    # "restricted":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1968
    .restart local v6    # "restricted":Z
    :cond_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v1, p1, v2, p2, v4}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v3

    .line 1970
    .local v3, "pi":Landroid/app/LoadedApk;
    if-eqz v3, :cond_4

    .line 1971
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    iget-object v7, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    iget-object v8, p0, Landroid/app/ContextImpl;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;)V

    .line 1973
    .local v0, "c":Landroid/app/ContextImpl;
    iget-object v1, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_1

    .line 1979
    .end local v0    # "c":Landroid/app/ContextImpl;
    :cond_4
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " not found"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public databaseList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1047
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1048
    .local v0, "list":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "list":[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "list":[Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/app/ContextImpl;->EMPTY_FILE_LIST:[Ljava/lang/String;

    goto :goto_0
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1033
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v2}, Landroid/app/ContextImpl;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 1034
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1037
    .end local v0    # "f":Ljava/io/File;
    :goto_0
    return v1

    .line 1035
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 889
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 890
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1795
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 1800
    return-void
.end method

.method public enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 1921
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 1925
    return-void
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1786
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 1791
    return-void
.end method

.method public enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 1913
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 1917
    return-void
.end method

.method public enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 1778
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 1783
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "message"    # Ljava/lang/String;

    .prologue
    .line 1906
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p4

    move v4, p3

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 1909
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I
    .param p7, "message"    # Ljava/lang/String;

    .prologue
    .line 1930
    invoke-virtual/range {p0 .. p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p6

    move v4, p5

    move-object v5, p1

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 1938
    return-void
.end method

.method public fileList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1008
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, "list":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "list":[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "list":[Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/app/ContextImpl;->EMPTY_FILE_LIST:[Ljava/lang/String;

    goto :goto_0
.end method

.method final getActivityToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 2164
    iget-object v0, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplication()Landroid/app/Application;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 770
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 677
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getBasePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 5

    .prologue
    .line 961
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 962
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 963
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "cache"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    .line 965
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 966
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 967
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    monitor-exit v1

    .line 980
    :goto_0
    return-object v0

    .line 971
    :cond_1
    const-string v0, "ContextImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create cache directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 979
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 974
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 979
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 980
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    return-object v0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1042
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ContextImpl;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 2026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2027
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2028
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2029
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 2030
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    invoke-static {v1, p2, v2}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 2033
    :cond_0
    return-object v0
.end method

.method public getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 2014
    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    return-object v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 986
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getExternalCacheDirs()[Ljava/io/File;
    .locals 2

    .prologue
    .line 991
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 992
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalCacheDirs:[Ljava/io/File;

    if-nez v0, :cond_0

    .line 993
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Environment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mExternalCacheDirs:[Ljava/io/File;

    .line 997
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalCacheDirs:[Ljava/io/File;

    invoke-direct {p0, v0}, Landroid/app/ContextImpl;->ensureDirsExistOrFilter([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 998
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 920
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 925
    iget-object v2, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 926
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mExternalFilesDirs:[Ljava/io/File;

    if-nez v1, :cond_0

    .line 927
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mExternalFilesDirs:[Ljava/io/File;

    .line 931
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalFilesDirs:[Ljava/io/File;

    .line 932
    .local v0, "dirs":[Ljava/io/File;
    if-eqz p1, :cond_1

    .line 933
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 937
    :cond_1
    invoke-direct {p0, v0}, Landroid/app/ContextImpl;->ensureDirsExistOrFilter([Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 938
    .end local v0    # "dirs":[Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1003
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 5

    .prologue
    .line 895
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 896
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 897
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "files"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    .line 899
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 900
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 901
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    monitor-exit v1

    .line 913
    :goto_0
    return-object v0

    .line 905
    :cond_1
    const-string v0, "ContextImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create files directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 914
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 908
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 913
    :cond_3
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getMainLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getObbDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 944
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getObbDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getObbDirs()[Ljava/io/File;
    .locals 2

    .prologue
    .line 949
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 950
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalObbDirs:[Ljava/io/File;

    if-nez v0, :cond_0

    .line 951
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Environment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mExternalObbDirs:[Ljava/io/File;

    .line 955
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalObbDirs:[Ljava/io/File;

    invoke-direct {p0, v0}, Landroid/app/ContextImpl;->ensureDirsExistOrFilter([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 956
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOpPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final getOuterContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2160
    iget-object v0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 786
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 2

    .prologue
    .line 687
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_0

    .line 688
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 697
    :goto_0
    return-object v1

    .line 691
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 692
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v0, :cond_1

    .line 694
    new-instance v1, Landroid/app/ApplicationPackageManager;

    invoke-direct {v1, p0, v0}, Landroid/app/ApplicationPackageManager;-><init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    goto :goto_0

    .line 697
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 750
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "android"

    goto :goto_0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 775
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 778
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final getReceiverRestrictedContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 2149
    iget-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2150
    iget-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    .line 2152
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/ReceiverRestrictedContext;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ReceiverRestrictedContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 796
    const-class v6, Landroid/app/ContextImpl;

    monitor-enter v6

    .line 797
    :try_start_0
    sget-object v5, Landroid/app/ContextImpl;->sSharedPrefs:Landroid/util/ArrayMap;

    if-nez v5, :cond_0

    .line 798
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    sput-object v5, Landroid/app/ContextImpl;->sSharedPrefs:Landroid/util/ArrayMap;

    .line 801
    :cond_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "packageName":Ljava/lang/String;
    sget-object v5, Landroid/app/ContextImpl;->sSharedPrefs:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 803
    .local v1, "packagePrefs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/SharedPreferencesImpl;>;"
    if-nez v1, :cond_1

    .line 804
    new-instance v1, Landroid/util/ArrayMap;

    .end local v1    # "packagePrefs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/SharedPreferencesImpl;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 805
    .restart local v1    # "packagePrefs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/SharedPreferencesImpl;>;"
    sget-object v5, Landroid/app/ContextImpl;->sSharedPrefs:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    :cond_1
    iget-object v5, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v5}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x13

    if-ge v5, v7, :cond_2

    .line 813
    if-nez p1, :cond_2

    .line 814
    const-string/jumbo p1, "null"

    .line 818
    :cond_2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SharedPreferencesImpl;

    .line 819
    .local v3, "sp":Landroid/app/SharedPreferencesImpl;
    if-nez v3, :cond_3

    .line 820
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 821
    .local v2, "prefsFile":Ljava/io/File;
    new-instance v3, Landroid/app/SharedPreferencesImpl;

    .end local v3    # "sp":Landroid/app/SharedPreferencesImpl;
    invoke-direct {v3, v2, p2}, Landroid/app/SharedPreferencesImpl;-><init>(Ljava/io/File;I)V

    .line 822
    .restart local v3    # "sp":Landroid/app/SharedPreferencesImpl;
    invoke-virtual {v1, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    monitor-exit v6

    move-object v4, v3

    .line 833
    .end local v2    # "prefsFile":Ljava/io/File;
    .end local v3    # "sp":Landroid/app/SharedPreferencesImpl;
    .local v4, "sp":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 825
    .end local v4    # "sp":Ljava/lang/Object;
    .restart local v3    # "sp":Landroid/app/SharedPreferencesImpl;
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    and-int/lit8 v5, p2, 0x4

    if-nez v5, :cond_4

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_5

    .line 831
    :cond_4
    invoke-virtual {v3}, Landroid/app/SharedPreferencesImpl;->startReloadIfChangedUnexpectedly()V

    :cond_5
    move-object v4, v3

    .line 833
    .restart local v4    # "sp":Ljava/lang/Object;
    goto :goto_0

    .line 825
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "packagePrefs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/SharedPreferencesImpl;>;"
    .end local v3    # "sp":Landroid/app/SharedPreferencesImpl;
    .end local v4    # "sp":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 790
    invoke-direct {p0}, Landroid/app/ContextImpl;->getPreferencesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1704
    sget-object v1, Landroid/app/ContextImpl;->SYSTEM_SERVICE_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ContextImpl$ServiceFetcher;

    .line 1705
    .local v0, "fetcher":Landroid/app/ContextImpl$ServiceFetcher;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p0}, Landroid/app/ContextImpl$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 3

    .prologue
    .line 728
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_0

    .line 729
    iget v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0, v1}, Landroid/content/res/Resources;->selectDefaultTheme(II)I

    move-result v0

    iput v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 731
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 732
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 734
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public getThemeResId()I
    .locals 1

    .prologue
    .line 723
    iget v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 2038
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public getWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1066
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperDesiredMinimumHeight()I
    .locals 1

    .prologue
    .line 1081
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getWallpaperDesiredMinimumWidth()I
    .locals 1

    .prologue
    .line 1076
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v0

    return v0
.end method

.method public grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 2
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "modeFlags"    # I

    .prologue
    .line 1805
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/IActivityManager;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    :goto_0
    return-void

    .line 1808
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 2136
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0, p1}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 2137
    return-void
.end method

.method public isRestricted()Z
    .locals 1

    .prologue
    .line 2009
    iget-boolean v0, p0, Landroid/app/ContextImpl;->mRestricted:Z

    return v0
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 860
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 861
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 867
    const v5, 0x8000

    and-int/2addr v5, p2

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    .line 868
    .local v0, "append":Z
    :goto_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 870
    .local v1, "f":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 871
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, p2, v6}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    :goto_1
    return-object v2

    .end local v0    # "append":Z
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    move v0, v4

    .line 867
    goto :goto_0

    .line 873
    .restart local v0    # "append":Z
    .restart local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 876
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 877
    .local v3, "parent":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 878
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 882
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 883
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2, v4}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    goto :goto_1
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 1014
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ContextImpl;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 1020
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Landroid/app/ContextImpl;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 1021
    .local v1, "f":Ljava/io/File;
    const/high16 v2, 0x10000000

    .line 1022
    .local v2, "flags":I
    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_0

    .line 1023
    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    .line 1025
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1026
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p2, v4}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 1027
    return-object v0
.end method

.method public peekWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1071
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->peekDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method final performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;

    .prologue
    .line 2145
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/LoadedApk;->removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    const/4 v0, 0x0

    .line 1485
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/ContextImpl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 7
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;

    .prologue
    .line 1491
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 7
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;

    .prologue
    .line 1498
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public removeStickyBroadcast(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1410
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 1411
    .local v1, "resolvedType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1412
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1413
    .end local p1    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-object p1, v0

    .line 1416
    .end local v0    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1417
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v4

    invoke-interface {v2, v3, p1, v4}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1421
    :goto_0
    return-void

    .line 1419
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1470
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 1471
    .local v1, "resolvedType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1472
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1473
    .end local p1    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-object p1, v0

    .line 1476
    .end local v0    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1477
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v2, v3, p1, v4}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1481
    :goto_0
    return-void

    .line 1479
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public revokeUriPermission(Landroid/net/Uri;I)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .prologue
    .line 1815
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1820
    :goto_0
    return-void

    .line 1818
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;

    .prologue
    .line 2140
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/ActivityThread;->scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1204
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1205
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1207
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1208
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v12

    move-object v2, p1

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1214
    :goto_0
    return-void

    .line 1212
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .prologue
    .line 1218
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1219
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1221
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1222
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v12

    move-object v2, p1

    move-object v8, p2

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1228
    :goto_0
    return-void

    .line 1226
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I

    .prologue
    .line 1232
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1233
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1235
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1236
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v12

    move-object v2, p1

    move-object v8, p2

    move/from16 v9, p3

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    :goto_0
    return-void

    .line 1240
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1304
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1306
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1307
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    move-object v2, p1

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    :goto_0
    return-void

    .line 1310
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;

    .prologue
    .line 1317
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1319
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1320
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    move-object v2, p1

    move-object/from16 v8, p3

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1326
    :goto_0
    return-void

    .line 1324
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .prologue
    .line 1247
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1248
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1250
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1251
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v12

    move-object v2, p1

    move-object v8, p2

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    :goto_0
    return-void

    .line 1255
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1273
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1274
    const/4 v4, 0x0

    .line 1275
    .local v4, "rd":Landroid/content/IIntentReceiver;
    if-eqz p4, :cond_1

    .line 1276
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_2

    .line 1277
    if-nez p5, :cond_0

    .line 1278
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p5

    .line 1280
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    .end local v4    # "rd":Landroid/content/IIntentReceiver;
    const/4 v5, 0x0

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v4

    .line 1291
    .restart local v4    # "rd":Landroid/content/IIntentReceiver;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1293
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1294
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v12

    move-object v2, p1

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object v8, p2

    move/from16 v9, p3

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1300
    :goto_1
    return-void

    .line 1284
    .end local v3    # "resolvedType":Ljava/lang/String;
    :cond_2
    if-nez p5, :cond_3

    .line 1285
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p5

    .line 1287
    :cond_3
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .end local v4    # "rd":Landroid/content/IIntentReceiver;
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v4

    .restart local v4    # "rd":Landroid/content/IIntentReceiver;
    goto :goto_0

    .line 1298
    .restart local v3    # "resolvedType":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1264
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1266
    return-void
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1332
    const/4 v4, 0x0

    .line 1333
    .local v4, "rd":Landroid/content/IIntentReceiver;
    if-eqz p4, :cond_1

    .line 1334
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_2

    .line 1335
    if-nez p5, :cond_0

    .line 1336
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p5

    .line 1338
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    .end local v4    # "rd":Landroid/content/IIntentReceiver;
    const/4 v5, 0x0

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v4

    .line 1349
    .restart local v4    # "rd":Landroid/content/IIntentReceiver;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1351
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1352
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    move-object v2, p1

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p3

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    :goto_1
    return-void

    .line 1342
    .end local v3    # "resolvedType":Ljava/lang/String;
    :cond_2
    if-nez p5, :cond_3

    .line 1343
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p5

    .line 1345
    :cond_3
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .end local v4    # "rd":Landroid/content/IIntentReceiver;
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v4

    .restart local v4    # "rd":Landroid/content/IIntentReceiver;
    goto :goto_0

    .line 1356
    .restart local v3    # "resolvedType":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1362
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1363
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1365
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1366
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v12

    move-object v2, p1

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1372
    :goto_0
    return-void

    .line 1370
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1425
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1427
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1428
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    move-object v2, p1

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1433
    :goto_0
    return-void

    .line 1431
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "scheduler"    # Landroid/os/Handler;
    .param p4, "initialCode"    # I
    .param p5, "initialData"    # Ljava/lang/String;
    .param p6, "initialExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1379
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1380
    const/4 v4, 0x0

    .line 1381
    .local v4, "rd":Landroid/content/IIntentReceiver;
    if-eqz p2, :cond_1

    .line 1382
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_2

    .line 1383
    if-nez p3, :cond_0

    .line 1384
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    .line 1386
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    .end local v4    # "rd":Landroid/content/IIntentReceiver;
    const/4 v5, 0x0

    move-object v1, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v4

    .line 1397
    .restart local v4    # "rd":Landroid/content/IIntentReceiver;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1399
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1400
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v12

    move-object v2, p1

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1406
    :goto_1
    return-void

    .line 1390
    .end local v3    # "resolvedType":Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    .line 1391
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    .line 1393
    :cond_3
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .end local v4    # "rd":Landroid/content/IIntentReceiver;
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v4

    .restart local v4    # "rd":Landroid/content/IIntentReceiver;
    goto :goto_0

    .line 1404
    .restart local v3    # "resolvedType":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1440
    const/4 v4, 0x0

    .line 1441
    .local v4, "rd":Landroid/content/IIntentReceiver;
    if-eqz p3, :cond_1

    .line 1442
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_2

    .line 1443
    if-nez p4, :cond_0

    .line 1444
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    .line 1446
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    .end local v4    # "rd":Landroid/content/IIntentReceiver;
    const/4 v5, 0x0

    move-object/from16 v1, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v4

    .line 1457
    .restart local v4    # "rd":Landroid/content/IIntentReceiver;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1459
    .local v3, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1460
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    move-object v2, p1

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1466
    :goto_1
    return-void

    .line 1450
    .end local v3    # "resolvedType":Ljava/lang/String;
    :cond_2
    if-nez p4, :cond_3

    .line 1451
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    .line 1453
    :cond_3
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p3

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .end local v4    # "rd":Landroid/content/IIntentReceiver;
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v4

    .restart local v4    # "rd":Landroid/content/IIntentReceiver;
    goto :goto_0

    .line 1464
    .restart local v3    # "resolvedType":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method final setOuterContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2156
    iput-object p1, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    .line 2157
    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 718
    iput p1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 719
    return-void
.end method

.method public setWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1086
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1087
    return-void
.end method

.method public setWallpaper(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1091
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 1092
    return-void
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 1140
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1142
    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 1160
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1161
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1162
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Calling startActivities() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag on first Intent. Is this really what you want?"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1167
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    move-object v4, v3

    check-cast v4, Landroid/app/Activity;

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1170
    return-void
.end method

.method public startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 8
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v3, 0x0

    .line 1147
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1148
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Calling startActivities() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag on first Intent. Is this really what you want?"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1153
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    move-object v4, v3

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)V

    .line 1156
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1101
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1103
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 1113
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1114
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1115
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Calling startActivity() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag. Is this really what you want?"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1120
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    move-object v4, v3

    check-cast v4, Landroid/app/Activity;

    const/4 v6, -0x1

    move-object v5, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    .line 1123
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1129
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x10000000

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    move-object v3, p1

    move-object v11, p2

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    :goto_0
    return-void

    .line 1134
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/ContextImpl;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1109
    return-void
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "profileFile"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 1691
    if-eqz p3, :cond_0

    .line 1692
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 1694
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v7

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1699
    :goto_0
    return v0

    .line 1696
    :catch_0
    move-exception v0

    move v0, v8

    .line 1699
    goto :goto_0
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 7
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 1176
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/ContextImpl;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 1177
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 1184
    const/4 v4, 0x0

    .line 1185
    .local v4, "resolvedType":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1186
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 1187
    invoke-virtual {p2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1188
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1190
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p6

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v11

    .line 1194
    .local v11, "result":I
    const/4 v0, -0x6

    if-ne v11, v0, :cond_1

    .line 1195
    new-instance v0, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v0}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    throw v0

    .line 1198
    .end local v11    # "result":I
    :catch_0
    move-exception v0

    .line 1200
    :goto_0
    return-void

    .line 1197
    .restart local v11    # "result":I
    :cond_1
    const/4 v0, 0x0

    invoke-static {v11, v0}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    .line 1560
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1561
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, p1, v0}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1572
    invoke-direct {p0, p1, p2}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    .line 1566
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1567
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, p1, v0}, Landroid/app/ContextImpl;->stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1601
    invoke-direct {p0, p1, p2}, Landroid/app/ContextImpl;->stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 3
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 1672
    if-nez p1, :cond_0

    .line 1673
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connection is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1675
    :cond_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v1, :cond_1

    .line 1676
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/app/LoadedApk;->forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;

    move-result-object v0

    .line 1679
    .local v0, "sd":Landroid/app/IServiceConnection;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1685
    :goto_0
    return-void

    .line 1683
    .end local v0    # "sd":Landroid/app/IServiceConnection;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Not supported in system context"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1680
    .restart local v0    # "sd":Landroid/app/IServiceConnection;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 3
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1533
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v1, :cond_0

    .line 1534
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/app/LoadedApk;->forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;

    move-result-object v0

    .line 1537
    .local v0, "rd":Landroid/content/IIntentReceiver;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1543
    :goto_0
    return-void

    .line 1541
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Not supported in system context"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1538
    .restart local v0    # "rd":Landroid/content/IIntentReceiver;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
