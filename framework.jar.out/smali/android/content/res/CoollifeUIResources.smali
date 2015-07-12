.class public Landroid/content/res/CoollifeUIResources;
.super Landroid/content/res/Resources;
.source "CoollifeUIResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;,
        Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CoollifeUIResources"

.field public static sCookieCPCommon:I

.field public static sCookieFramework:I

.field private static sPreloadDrawableSources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mIsPreloadOverlayed:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTime:J

.field private mPackageName:Ljava/lang/String;

.field private mPreloadingIds:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadingInfo:Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;

.field private mSkipFiles:Landroid/util/SparseBooleanArray;

.field private mThemeCharSequences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeIntegers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeResources:Lcom/yulong/android/content/res/ThemeResources;

.field private mUpdateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 27
    sput v0, Landroid/content/res/CoollifeUIResources;->sCookieFramework:I

    .line 28
    sput v0, Landroid/content/res/CoollifeUIResources;->sCookieCPCommon:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/CoollifeUIResources;->mSkipFiles:Landroid/util/SparseBooleanArray;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/CoollifeUIResources;->mThemeIntegers:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/CoollifeUIResources;->mThemeCharSequences:Ljava/util/HashMap;

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/CoollifeUIResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/CoollifeUIResources;->mUpdateTime:J

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/res/CoollifeUIResources;->mLoadTime:J

    .line 54
    const-string v0, "android"

    invoke-virtual {p0, v0}, Landroid/content/res/CoollifeUIResources;->init(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 59
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/CoollifeUIResources;->mSkipFiles:Landroid/util/SparseBooleanArray;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/CoollifeUIResources;->mThemeIntegers:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/CoollifeUIResources;->mThemeCharSequences:Ljava/util/HashMap;

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/CoollifeUIResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/CoollifeUIResources;->mUpdateTime:J

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/res/CoollifeUIResources;->mLoadTime:J

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/CoollifeUIResources;->init(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "token"    # Landroid/os/IBinder;

    .prologue
    .line 70
    invoke-direct/range {p0 .. p5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    .line 71
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/CoollifeUIResources;->mSkipFiles:Landroid/util/SparseBooleanArray;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/CoollifeUIResources;->mThemeIntegers:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/CoollifeUIResources;->mThemeCharSequences:Ljava/util/HashMap;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/CoollifeUIResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/CoollifeUIResources;->mUpdateTime:J

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/res/CoollifeUIResources;->mLoadTime:J

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/CoollifeUIResources;->init(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private getThemeFile(Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;)Z
    .locals 2
    .param p1, "option"    # Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;

    .prologue
    .line 309
    iget-object v0, p0, Landroid/content/res/CoollifeUIResources;->mThemeResources:Lcom/yulong/android/content/res/ThemeResources;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Landroid/content/res/CoollifeUIResources;->mThemeResources:Lcom/yulong/android/content/res/ThemeResources;

    iget-object v1, p0, Landroid/content/res/CoollifeUIResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/yulong/android/content/res/ThemeResources;->getThemeFile(Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    .line 312
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThemeInt(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 304
    invoke-direct {p0}, Landroid/content/res/CoollifeUIResources;->loadThemeValues()V

    .line 305
    iget-object v0, p0, Landroid/content/res/CoollifeUIResources;->mThemeIntegers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method private initCookie()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 330
    const/4 v1, 0x0

    .line 332
    .local v1, "cookie":I
    :goto_0
    const/16 v2, 0x64

    if-gt v1, v2, :cond_0

    sget v2, Landroid/content/res/CoollifeUIResources;->sCookieFramework:I

    if-eq v2, v3, :cond_3

    sget v2, Landroid/content/res/CoollifeUIResources;->sCookieCPCommon:I

    if-eq v2, v3, :cond_3

    .line 347
    :cond_0
    sget v2, Landroid/content/res/CoollifeUIResources;->sCookieFramework:I

    if-eq v2, v3, :cond_1

    sget v2, Landroid/content/res/CoollifeUIResources;->sCookieCPCommon:I

    if-ne v2, v3, :cond_2

    .line 348
    :cond_1
    const-string v2, "CoollifeUIResources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initCookie failed: sCookieFramework="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/content/res/CoollifeUIResources;->sCookieFramework:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; sCookieCPCommon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/content/res/CoollifeUIResources;->sCookieCPCommon:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_2
    return-void

    .line 336
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/CoollifeUIResources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->getCookieName(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "cooKieName":Ljava/lang/String;
    const-string v2, "/system/framework/framework-res.apk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 338
    sput v1, Landroid/content/res/CoollifeUIResources;->sCookieFramework:I

    .line 345
    .end local v0    # "cooKieName":Ljava/lang/String;
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    .restart local v0    # "cooKieName":Ljava/lang/String;
    :cond_5
    const-string v2, "/system/framework/CP_Common-res.apk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 340
    sput v1, Landroid/content/res/CoollifeUIResources;->sCookieCPCommon:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 342
    .end local v0    # "cooKieName":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private loadThemeValues()V
    .locals 4

    .prologue
    .line 316
    iget-wide v0, p0, Landroid/content/res/CoollifeUIResources;->mLoadTime:J

    iget-wide v2, p0, Landroid/content/res/CoollifeUIResources;->mUpdateTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/CoollifeUIResources;->mLoadTime:J

    .line 320
    iget-object v0, p0, Landroid/content/res/CoollifeUIResources;->mThemeIntegers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 321
    iget-object v0, p0, Landroid/content/res/CoollifeUIResources;->mThemeCharSequences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 322
    iget-object v0, p0, Landroid/content/res/CoollifeUIResources;->mThemeResources:Lcom/yulong/android/content/res/ThemeResources;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Landroid/content/res/CoollifeUIResources;->mThemeResources:Lcom/yulong/android/content/res/ThemeResources;

    iget-object v1, p0, Landroid/content/res/CoollifeUIResources;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/res/CoollifeUIResources;->mThemeIntegers:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/content/res/CoollifeUIResources;->mThemeCharSequences:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yulong/android/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    .line 286
    invoke-super {p0}, Landroid/content/res/Resources;->clearCache()V

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/CoollifeUIResources;->mUpdateTime:J

    .line 288
    iget-object v0, p0, Landroid/content/res/CoollifeUIResources;->mSkipFiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 289
    sget-object v0, Landroid/content/res/CoollifeUIResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 290
    iget-object v0, p0, Landroid/content/res/CoollifeUIResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 291
    iget-object v0, p0, Landroid/content/res/CoollifeUIResources;->mThemeResources:Lcom/yulong/android/content/res/ThemeResources;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Landroid/content/res/CoollifeUIResources;->mThemeResources:Lcom/yulong/android/content/res/ThemeResources;

    invoke-virtual {v0}, Lcom/yulong/android/content/res/ThemeResources;->reload()V

    .line 294
    :cond_0
    return-void
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Landroid/content/res/CoollifeUIResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 104
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 107
    .end local v0    # "text":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Landroid/content/res/CoollifeUIResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 113
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 116
    .end local v0    # "text":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 299
    invoke-direct {p0}, Landroid/content/res/CoollifeUIResources;->loadThemeValues()V

    .line 300
    iget-object v0, p0, Landroid/content/res/CoollifeUIResources;->mThemeCharSequences:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 122
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_1

    :cond_0
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 124
    :cond_1
    invoke-direct {p0, p1}, Landroid/content/res/CoollifeUIResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 125
    .local v0, "data":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    .line 132
    .end local v0    # "data":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Landroid/content/res/CoollifeUIResources;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 84
    :cond_0
    iput-object p1, p0, Landroid/content/res/CoollifeUIResources;->mPackageName:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.yulong.android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    :cond_1
    invoke-static {p0}, Lcom/yulong/android/content/res/ThemeResourcesSystem;->getSystem(Landroid/content/res/CoollifeUIResources;)Lcom/yulong/android/content/res/ThemeResourcesSystem;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/CoollifeUIResources;->mThemeResources:Lcom/yulong/android/content/res/ThemeResources;

    .line 92
    :goto_1
    invoke-direct {p0}, Landroid/content/res/CoollifeUIResources;->initCookie()V

    goto :goto_0

    .line 90
    :cond_2
    invoke-static {p0, p1}, Lcom/yulong/android/content/res/ThemeResourcesPackage;->getTopLevelThemeResources(Landroid/content/res/CoollifeUIResources;Ljava/lang/String;)Lcom/yulong/android/content/res/ThemeResourcesPackage;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/CoollifeUIResources;->mThemeResources:Lcom/yulong/android/content/res/ThemeResources;

    goto :goto_1
.end method

.method isPreloadOverlayed(I)Z
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x0

    .line 252
    iget-object v6, p0, Landroid/content/res/CoollifeUIResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 253
    .local v5, "value":Ljava/lang/Boolean;
    if-eqz v5, :cond_0

    .line 254
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 280
    :goto_0
    return v6

    .line 257
    :cond_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 258
    .local v0, "isOverlayed":Ljava/lang/Boolean;
    sget-object v6, Landroid/content/res/CoollifeUIResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 259
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;>;"
    if-eqz v3, :cond_3

    .line 260
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 261
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 262
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;

    .line 263
    .local v4, "source":Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;
    new-instance v2, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;

    iget v6, v4, Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;->mAssetCookie:I

    iget-object v7, v4, Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;->mResourcePath:Ljava/lang/String;

    invoke-direct {v2, v6, v7, v8}, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;-><init>(ILjava/lang/String;Z)V

    .line 265
    .local v2, "option":Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;
    invoke-direct {p0, v2}, Landroid/content/res/CoollifeUIResources;->getThemeFile(Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;)Z

    .line 268
    iget-object v6, v2, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, v2, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->outIsDefaultTheme:Z

    iget-boolean v7, v4, Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;->mIsDefaultTheme:Z

    if-eq v6, v7, :cond_1

    .line 272
    :cond_2
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 277
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;>;"
    .end local v2    # "option":Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;
    .end local v4    # "source":Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;
    :cond_3
    iget-object v6, p0, Landroid/content/res/CoollifeUIResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_0
.end method

.method public isPreloading()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Landroid/content/res/CoollifeUIResources;->mPreloading:Z

    return v0
.end method

.method loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 180
    invoke-virtual {p0}, Landroid/content/res/CoollifeUIResources;->isPreloading()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 181
    sget-object v6, Landroid/content/res/CoollifeUIResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    if-nez v6, :cond_0

    .line 182
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    sput-object v6, Landroid/content/res/CoollifeUIResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    .line 184
    :cond_0
    iget-object v6, p0, Landroid/content/res/CoollifeUIResources;->mPreloadingIds:Ljava/util/Stack;

    if-nez v6, :cond_1

    .line 185
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    iput-object v6, p0, Landroid/content/res/CoollifeUIResources;->mPreloadingIds:Ljava/util/Stack;

    .line 188
    :cond_1
    iget-object v6, p0, Landroid/content/res/CoollifeUIResources;->mPreloadingIds:Ljava/util/Stack;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 191
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/res/CoollifeUIResources;->isPreloading()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 192
    iget v6, p1, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_3

    iget v6, p1, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1f

    if-le v6, v7, :cond_6

    .line 194
    :cond_3
    iget-object v6, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "str":Ljava/lang/String;
    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 196
    new-instance v4, Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;

    iget v6, p1, Landroid/util/TypedValue;->assetCookie:I

    const/4 v7, 0x0

    invoke-direct {v4, v6, v5, v7, v8}, Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;-><init>(ILjava/lang/String;ZLjava/lang/String;)V

    .line 198
    .local v4, "source":Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;
    iget-object v6, p0, Landroid/content/res/CoollifeUIResources;->mPreloadingInfo:Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;

    if-eqz v6, :cond_4

    .line 199
    iget-object v6, p0, Landroid/content/res/CoollifeUIResources;->mPreloadingInfo:Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;

    iget-object v6, v6, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    iput-object v6, v4, Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    .line 200
    iget-object v6, p0, Landroid/content/res/CoollifeUIResources;->mPreloadingInfo:Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;

    iget-boolean v6, v6, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->outIsDefaultTheme:Z

    iput-boolean v6, v4, Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;->mIsDefaultTheme:Z

    .line 201
    iput-object v8, p0, Landroid/content/res/CoollifeUIResources;->mPreloadingInfo:Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;

    .line 203
    :cond_4
    iget-object v6, p0, Landroid/content/res/CoollifeUIResources;->mPreloadingIds:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 204
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 205
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 206
    .local v2, "key":Ljava/lang/Integer;
    sget-object v6, Landroid/content/res/CoollifeUIResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 208
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;>;"
    if-nez v3, :cond_5

    .line 209
    new-instance v3, Ljava/util/HashSet;

    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;>;"
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 210
    .restart local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;>;"
    sget-object v6, Landroid/content/res/CoollifeUIResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    :cond_5
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "key":Ljava/lang/Integer;
    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;>;"
    .end local v4    # "source":Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;
    .end local v5    # "str":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Landroid/content/res/CoollifeUIResources;->mPreloadingIds:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 220
    :cond_7
    return-object v0
.end method

.method loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 225
    iget-object v5, p0, Landroid/content/res/CoollifeUIResources;->mSkipFiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 247
    :goto_0
    return-object v0

    .line 229
    :cond_0
    iget-object v5, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "resourcePath":Ljava/lang/String;
    new-instance v3, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;

    iget v5, p1, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {v3, v5, v4, v6}, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;-><init>(ILjava/lang/String;Z)V

    .line 231
    .local v3, "option":Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;
    invoke-virtual {p0}, Landroid/content/res/CoollifeUIResources;->isPreloading()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 232
    iput-object v3, p0, Landroid/content/res/CoollifeUIResources;->mPreloadingInfo:Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;

    .line 234
    :cond_1
    invoke-direct {p0, v3}, Landroid/content/res/CoollifeUIResources;->getThemeFile(Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;)Z

    move-result v2

    .line 235
    .local v2, "hasTheme":Z
    if-eqz v2, :cond_2

    .line 236
    iget-object v5, v3, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-static {p0, p1, v5, v4, v0}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 239
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v5, v3, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 246
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v5, p0, Landroid/content/res/CoollifeUIResources;->mSkipFiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0
.end method

.method loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 9
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/content/res/CoollifeUIResources;->loadThemeValues()V

    .line 137
    iget-object v6, p0, Landroid/content/res/CoollifeUIResources;->mThemeIntegers:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-eqz v6, :cond_3

    .line 138
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 139
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 140
    mul-int/lit8 v2, v4, 0x6

    .line 141
    .local v2, "dataIndex":I
    iget-object v6, p1, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v7, v2, 0x0

    aget v5, v6, v7

    .line 142
    .local v5, "type":I
    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    const/16 v6, 0x1f

    if-le v5, v6, :cond_1

    :cond_0
    const/4 v6, 0x5

    if-ne v5, v6, :cond_2

    .line 144
    :cond_1
    iget-object v6, p1, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v7, v2, 0x3

    aget v3, v6, v7

    .line 145
    .local v3, "id":I
    invoke-direct {p0, v3}, Landroid/content/res/CoollifeUIResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v1

    .line 146
    .local v1, "data":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 147
    iget-object v6, p1, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v7

    .line 139
    .end local v1    # "data":Ljava/lang/Integer;
    .end local v3    # "id":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "count":I
    .end local v2    # "dataIndex":I
    .end local v4    # "index":I
    .end local v5    # "type":I
    :cond_3
    return-object p1
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 169
    invoke-super {p0, p1, p2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 170
    new-instance v0, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;

    iget v1, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;-><init>(ILjava/lang/String;Z)V

    .line 172
    .local v0, "option":Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;
    invoke-direct {p0, v0}, Landroid/content/res/CoollifeUIResources;->getThemeFile(Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, v0, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    .line 175
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method
