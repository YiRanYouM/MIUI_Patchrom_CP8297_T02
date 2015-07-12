.class public Lcom/yulong/android/content/res/ThemeResourcesSystem;
.super Lcom/yulong/android/content/res/ThemeResources;
.source "ThemeResourcesSystem.java"


# static fields
.field private static sCPCommonThemeResources:Lcom/yulong/android/content/res/ThemeResources;

.field private static sSystemThemeResources:Lcom/yulong/android/content/res/ThemeResourcesSystem;


# direct methods
.method protected constructor <init>(Landroid/content/res/CoollifeUIResources;)V
    .locals 1
    .param p1, "coollefeUIResources"    # Landroid/content/res/CoollifeUIResources;

    .prologue
    .line 20
    const-string v0, "android"

    invoke-direct {p0, p1, v0}, Lcom/yulong/android/content/res/ThemeResources;-><init>(Landroid/content/res/CoollifeUIResources;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method static getSystem()Lcom/yulong/android/content/res/ThemeResourcesSystem;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/yulong/android/content/res/ThemeResourcesSystem;->sSystemThemeResources:Lcom/yulong/android/content/res/ThemeResourcesSystem;

    return-object v0
.end method

.method public static declared-synchronized getSystem(Landroid/content/res/CoollifeUIResources;)Lcom/yulong/android/content/res/ThemeResourcesSystem;
    .locals 3
    .param p0, "coollefeUIResources"    # Landroid/content/res/CoollifeUIResources;

    .prologue
    .line 25
    const-class v1, Lcom/yulong/android/content/res/ThemeResourcesSystem;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yulong/android/content/res/ThemeResourcesSystem;->sSystemThemeResources:Lcom/yulong/android/content/res/ThemeResourcesSystem;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/yulong/android/content/res/ThemeResourcesSystem;

    invoke-direct {v0, p0}, Lcom/yulong/android/content/res/ThemeResourcesSystem;-><init>(Landroid/content/res/CoollifeUIResources;)V

    sput-object v0, Lcom/yulong/android/content/res/ThemeResourcesSystem;->sSystemThemeResources:Lcom/yulong/android/content/res/ThemeResourcesSystem;

    .line 27
    new-instance v0, Lcom/yulong/android/content/res/ThemeResources;

    const-string v2, "com.yulong.android"

    invoke-direct {v0, p0, v2}, Lcom/yulong/android/content/res/ThemeResources;-><init>(Landroid/content/res/CoollifeUIResources;Ljava/lang/String;)V

    sput-object v0, Lcom/yulong/android/content/res/ThemeResourcesSystem;->sCPCommonThemeResources:Lcom/yulong/android/content/res/ThemeResources;

    .line 30
    :cond_0
    sget-object v0, Lcom/yulong/android/content/res/ThemeResourcesSystem;->sSystemThemeResources:Lcom/yulong/android/content/res/ThemeResourcesSystem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getThemeFile(Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 2
    .param p1, "option"    # Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;
    .param p2, "accessPackageName"    # Ljava/lang/String;

    .prologue
    .line 53
    iget v0, p1, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->inAssetCookie:I

    sget v1, Landroid/content/res/CoollifeUIResources;->sCookieCPCommon:I

    if-ne v0, v1, :cond_0

    .line 54
    sget-object v0, Lcom/yulong/android/content/res/ThemeResourcesSystem;->sCPCommonThemeResources:Lcom/yulong/android/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lcom/yulong/android/content/res/ThemeResources;->getThemeFile(Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yulong/android/content/res/ThemeResources;->getThemeFile(Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public mergeThemeValues(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 1
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
    .line 62
    .local p2, "integers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p3, "charSequences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/CharSequence;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/yulong/android/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 63
    sget-object v0, Lcom/yulong/android/content/res/ThemeResourcesSystem;->sCPCommonThemeResources:Lcom/yulong/android/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yulong/android/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 64
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/yulong/android/content/res/ThemeResources;->reload()V

    .line 45
    sget-object v0, Lcom/yulong/android/content/res/ThemeResourcesSystem;->sCPCommonThemeResources:Lcom/yulong/android/content/res/ThemeResources;

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/yulong/android/content/res/ThemeResourcesSystem;->sCPCommonThemeResources:Lcom/yulong/android/content/res/ThemeResources;

    invoke-virtual {v0}, Lcom/yulong/android/content/res/ThemeResources;->reload()V

    .line 48
    :cond_0
    return-void
.end method
