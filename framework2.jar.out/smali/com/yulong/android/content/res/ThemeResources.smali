.class public Lcom/yulong/android/content/res/ThemeResources;
.super Ljava/lang/Object;
.source "ThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/content/res/ThemeResources$FilterInfo;
    }
.end annotation


# static fields
.field private static final ATTR_FILTER_PATH:Ljava/lang/String; = "path"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PROP_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_PROP_VALUE:Ljava/lang/String; = "value"

.field public static final CP_COMMON_PACKAGE_NAME:Ljava/lang/String; = "com.yulong.android"

.field public static final CP_COMMON_TOPDIR_NAME:Ljava/lang/String; = "com.yulong.android"

.field private static final DEFAULT_THEME_FILTER_PATH:Ljava/lang/String; = ""

.field public static final DEFAULT_THEME_ROOT_PATH:Ljava/lang/String; = "system/lib/uitechno/defaulttheme"

.field public static final FRAMEWORK_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final FRAMEWORK_TOPDIR_NAME:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "ThemeResources"

.field private static final TAG_COLOR:Ljava/lang/String; = "color"

.field private static final TAG_FILTER:Ljava/lang/String; = "filter"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_STRING:Ljava/lang/String; = "string"

.field private static final THEME_FILTER_FILE:Ljava/lang/String; = "filters.xml"

.field private static final THEME_PROPERTY_FILE:Ljava/lang/String; = "properties.xml"


# instance fields
.field private mCoollifeUIResources:Landroid/content/res/CoollifeUIResources;

.field private mFilterInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/content/res/ThemeResources$FilterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mThemePath:Ljava/lang/String;

.field private mThemeTopDir:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/res/CoollifeUIResources;Ljava/lang/String;)V
    .locals 3
    .param p1, "coollefeUIResources"    # Landroid/content/res/CoollifeUIResources;
    .param p2, "themeTopDir"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "ThemeResources"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThemeResources init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput-object p1, p0, Lcom/yulong/android/content/res/ThemeResources;->mCoollifeUIResources:Landroid/content/res/CoollifeUIResources;

    .line 83
    iput-object p2, p0, Lcom/yulong/android/content/res/ThemeResources;->mThemeTopDir:Ljava/lang/String;

    .line 84
    invoke-direct {p0, p2}, Lcom/yulong/android/content/res/ThemeResources;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    .line 86
    invoke-direct {p0}, Lcom/yulong/android/content/res/ThemeResources;->init()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/yulong/android/content/res/ThemeResources;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/content/res/ThemeResources;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yulong/android/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yulong/android/content/res/ThemeResources;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/content/res/ThemeResources;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yulong/android/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yulong/android/content/res/ThemeResources;)Landroid/content/res/CoollifeUIResources;
    .locals 1
    .param p0, "x0"    # Lcom/yulong/android/content/res/ThemeResources;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yulong/android/content/res/ThemeResources;->mCoollifeUIResources:Landroid/content/res/CoollifeUIResources;

    return-object v0
.end method

.method private clearFilterInfo()V
    .locals 4

    .prologue
    .line 267
    iget-object v3, p0, Lcom/yulong/android/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 268
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 269
    iget-object v3, p0, Lcom/yulong/android/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;

    .line 270
    .local v0, "filter":Lcom/yulong/android/content/res/ThemeResources$FilterInfo;
    iget-object v3, v0, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;->mIntegers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 271
    iget-object v3, v0, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;->mCharSequences:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 272
    iget-object v3, v0, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;->mPackages:Ljava/util/HashSet;

    if-eqz v3, :cond_0

    .line 273
    iget-object v3, v0, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;->mPackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 268
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "filter":Lcom/yulong/android/content/res/ThemeResources$FilterInfo;
    :cond_1
    iget-object v3, p0, Lcom/yulong/android/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 277
    return-void
.end method

.method private getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "themeTopDir"    # Ljava/lang/String;

    .prologue
    .line 248
    return-object p1
.end method

.method private getThemePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const-string v0, "persist.sys.ui.theme.path"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/content/res/ThemeResources;->mThemePath:Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/yulong/android/content/res/ThemeResources;->mThemePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "system/lib/uitechno/defaulttheme"

    iput-object v0, p0, Lcom/yulong/android/content/res/ThemeResources;->mThemePath:Ljava/lang/String;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/content/res/ThemeResources;->mThemePath:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 235
    .local v4, "lastTime":J
    invoke-direct {p0}, Lcom/yulong/android/content/res/ThemeResources;->initFilterInfo()V

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 237
    .local v2, "curTime":J
    sub-long v0, v2, v4

    .line 238
    .local v0, "cost":J
    move-wide v4, v2

    .line 240
    invoke-direct {p0}, Lcom/yulong/android/content/res/ThemeResources;->loadThemeValues()V

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 242
    sub-long v0, v2, v4

    .line 244
    return-void
.end method

.method private initFilterInfo()V
    .locals 10

    .prologue
    const/16 v7, 0x2f

    .line 280
    invoke-direct {p0}, Lcom/yulong/android/content/res/ThemeResources;->getThemePath()Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, "themePath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 284
    iget-object v6, p0, Lcom/yulong/android/content/res/ThemeResources;->mThemeTopDir:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 286
    const-string v6, "filters.xml"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 291
    :cond_0
    iget-object v6, p0, Lcom/yulong/android/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    new-instance v7, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;

    const-string v8, ""

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;-><init>(Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 296
    .local v2, "factory":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v4, 0x0

    .line 298
    .local v4, "parser":Ljavax/xml/parsers/SAXParser;
    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 299
    new-instance v6, Lcom/yulong/android/content/res/ThemeResources$1;

    invoke-direct {v6, p0}, Lcom/yulong/android/content/res/ThemeResources$1;-><init>(Lcom/yulong/android/content/res/ThemeResources;)V

    invoke-virtual {v4, v3, v6}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "ThemeResources"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadThemeProperties fail: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadThemeProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 11
    .param p1, "themeRootPath"    # Ljava/lang/String;
    .param p2, "themeDir"    # Ljava/lang/String;
    .param p3, "filerPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p4, "integers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p5, "charSequences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 372
    .local v6, "buffer":Ljava/lang/StringBuffer;
    const/16 v0, 0x2f

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 373
    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    const/16 v0, 0x2f

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 376
    const-string v0, "properties.xml"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    :goto_0
    new-instance v9, Ljava/io/File;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    :cond_0
    :goto_1
    return-void

    .line 378
    .end local v9    # "file":Ljava/io/File;
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 379
    invoke-virtual {v6, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    const/16 v0, 0x2f

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 381
    const-string v0, "properties.xml"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 389
    .restart local v9    # "file":Ljava/io/File;
    :cond_2
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v8

    .line 390
    .local v8, "factory":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v10, 0x0

    .line 392
    .local v10, "parser":Ljavax/xml/parsers/SAXParser;
    :try_start_0
    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v10

    .line 393
    new-instance v0, Lcom/yulong/android/content/res/ThemeResources$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/yulong/android/content/res/ThemeResources$2;-><init>(Lcom/yulong/android/content/res/ThemeResources;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v10, v9, v0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 437
    :catch_0
    move-exception v7

    .line 438
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "ThemeResources"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadThemeProperties fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private loadThemeValues()V
    .locals 9

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/yulong/android/content/res/ThemeResources;->getThemePath()Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "themePath":Ljava/lang/String;
    iget-object v0, p0, Lcom/yulong/android/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 345
    .local v8, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 346
    iget-object v0, p0, Lcom/yulong/android/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;

    .line 347
    .local v6, "filter":Lcom/yulong/android/content/res/ThemeResources$FilterInfo;
    iget-object v2, p0, Lcom/yulong/android/content/res/ThemeResources;->mThemeTopDir:Ljava/lang/String;

    iget-object v3, v6, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;->mPath:Ljava/lang/String;

    iget-object v4, v6, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;->mIntegers:Ljava/util/HashMap;

    iget-object v5, v6, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;->mCharSequences:Ljava/util/HashMap;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yulong/android/content/res/ThemeResources;->loadThemeProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 345
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 360
    .end local v6    # "filter":Lcom/yulong/android/content/res/ThemeResources$FilterInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public getThemeFile(Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 13
    .param p1, "option"    # Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;
    .param p2, "accessPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x0

    const/16 v11, 0x2f

    .line 111
    invoke-direct {p0}, Lcom/yulong/android/content/res/ThemeResources;->getThemePath()Ljava/lang/String;

    move-result-object v8

    .line 113
    .local v8, "themePath":Ljava/lang/String;
    iget-object v10, p0, Lcom/yulong/android/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 114
    .local v6, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_4

    .line 115
    iget-object v10, p0, Lcom/yulong/android/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;

    .line 116
    .local v3, "filter":Lcom/yulong/android/content/res/ThemeResources$FilterInfo;
    invoke-virtual {v3, p2}, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;->match(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 114
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 122
    iget-object v10, p0, Lcom/yulong/android/content/res/ThemeResources;->mThemeTopDir:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    iget-object v10, v3, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;->mPath:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 124
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    iget-object v10, p1, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "themeFilePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 136
    const/4 v4, 0x1

    .line 137
    .local v4, "found":Z
    iget-object v10, v3, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;->mPath:Ljava/lang/String;

    iput-object v10, p1, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    .line 138
    iget-boolean v10, p1, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->inRequestStream:Z

    if-eqz v10, :cond_2

    .line 140
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v10, p1, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_2
    :goto_2
    if-eqz v4, :cond_0

    .line 147
    const-string v9, "system/lib/uitechno/defaulttheme"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p1, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->outIsDefaultTheme:Z

    .line 148
    const/4 v9, 0x1

    .line 185
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filter":Lcom/yulong/android/content/res/ThemeResources$FilterInfo;
    .end local v4    # "found":Z
    .end local v7    # "themeFilePath":Ljava/lang/String;
    :goto_3
    return v9

    .line 127
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "filter":Lcom/yulong/android/content/res/ThemeResources$FilterInfo;
    :cond_3
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 128
    iget-object v10, v3, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    iget-object v10, p1, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 141
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "found":Z
    .restart local v7    # "themeFilePath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 143
    const/4 v4, 0x0

    goto :goto_2

    .line 182
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filter":Lcom/yulong/android/content/res/ThemeResources$FilterInfo;
    .end local v4    # "found":Z
    .end local v7    # "themeFilePath":Ljava/lang/String;
    :cond_4
    iput-boolean v9, p1, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->outIsDefaultTheme:Z

    .line 183
    iput-object v12, p1, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    .line 184
    iput-object v12, p1, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    goto :goto_3
.end method

.method public mergeThemeValues(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "accessPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p2, "integers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p3, "charSequences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/CharSequence;>;"
    iget-object v3, p0, Lcom/yulong/android/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 214
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 215
    iget-object v3, p0, Lcom/yulong/android/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;

    .line 216
    .local v0, "filter":Lcom/yulong/android/content/res/ThemeResources$FilterInfo;
    invoke-virtual {v0, p1}, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;->match(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 214
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_1
    iget-object v3, v0, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;->mIntegers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 224
    iget-object v3, v0, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;->mIntegers:Ljava/util/HashMap;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 226
    :cond_2
    iget-object v3, v0, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;->mCharSequences:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 227
    iget-object v3, v0, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;->mCharSequences:Ljava/util/HashMap;

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 230
    .end local v0    # "filter":Lcom/yulong/android/content/res/ThemeResources$FilterInfo;
    :cond_3
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yulong/android/content/res/ThemeResources;->mThemePath:Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lcom/yulong/android/content/res/ThemeResources;->clearFilterInfo()V

    .line 95
    invoke-direct {p0}, Lcom/yulong/android/content/res/ThemeResources;->init()V

    .line 96
    return-void
.end method
