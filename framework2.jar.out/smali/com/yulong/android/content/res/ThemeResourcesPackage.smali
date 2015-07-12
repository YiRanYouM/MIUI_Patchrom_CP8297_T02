.class public Lcom/yulong/android/content/res/ThemeResourcesPackage;
.super Lcom/yulong/android/content/res/ThemeResources;
.source "ThemeResourcesPackage.java"


# static fields
.field private static sPackageResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yulong/android/content/res/ThemeResourcesPackage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yulong/android/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/res/CoollifeUIResources;Ljava/lang/String;)V
    .locals 0
    .param p1, "coollefeUIResources"    # Landroid/content/res/CoollifeUIResources;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/content/res/ThemeResources;-><init>(Landroid/content/res/CoollifeUIResources;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/CoollifeUIResources;Ljava/lang/String;)Lcom/yulong/android/content/res/ThemeResourcesPackage;
    .locals 6
    .param p0, "coollefeUIResources"    # Landroid/content/res/CoollifeUIResources;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 25
    sget-object v4, Lcom/yulong/android/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/HashMap;

    monitor-enter v4

    .line 26
    :try_start_0
    sget-object v3, Lcom/yulong/android/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 28
    .local v2, "themeResPkgRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/yulong/android/content/res/ThemeResourcesPackage;>;"
    const/4 v0, 0x0

    .line 29
    .local v0, "themeResPkg":Lcom/yulong/android/content/res/ThemeResourcesPackage;
    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "themeResPkg":Lcom/yulong/android/content/res/ThemeResourcesPackage;
    check-cast v0, Lcom/yulong/android/content/res/ThemeResourcesPackage;

    .line 31
    .restart local v0    # "themeResPkg":Lcom/yulong/android/content/res/ThemeResourcesPackage;
    if-eqz v0, :cond_0

    .line 32
    monitor-exit v4

    move-object v1, v0

    .line 38
    .end local v0    # "themeResPkg":Lcom/yulong/android/content/res/ThemeResourcesPackage;
    .local v1, "themeResPkg":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 35
    .end local v1    # "themeResPkg":Ljava/lang/Object;
    .restart local v0    # "themeResPkg":Lcom/yulong/android/content/res/ThemeResourcesPackage;
    :cond_0
    new-instance v0, Lcom/yulong/android/content/res/ThemeResourcesPackage;

    .end local v0    # "themeResPkg":Lcom/yulong/android/content/res/ThemeResourcesPackage;
    invoke-direct {v0, p0, p1}, Lcom/yulong/android/content/res/ThemeResourcesPackage;-><init>(Landroid/content/res/CoollifeUIResources;Ljava/lang/String;)V

    .line 36
    .restart local v0    # "themeResPkg":Lcom/yulong/android/content/res/ThemeResourcesPackage;
    sget-object v3, Lcom/yulong/android/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    monitor-exit v4

    move-object v1, v0

    .restart local v1    # "themeResPkg":Ljava/lang/Object;
    goto :goto_0

    .line 39
    .end local v0    # "themeResPkg":Lcom/yulong/android/content/res/ThemeResourcesPackage;
    .end local v1    # "themeResPkg":Ljava/lang/Object;
    .end local v2    # "themeResPkgRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/yulong/android/content/res/ThemeResourcesPackage;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public getThemeFile(Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 2
    .param p1, "option"    # Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;
    .param p2, "accessPackageName"    # Ljava/lang/String;

    .prologue
    .line 59
    iget v0, p1, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->inAssetCookie:I

    sget v1, Landroid/content/res/CoollifeUIResources;->sCookieFramework:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->inAssetCookie:I

    sget v1, Landroid/content/res/CoollifeUIResources;->sCookieCPCommon:I

    if-eq v0, v1, :cond_0

    .line 61
    invoke-super {p0, p1, p2}, Lcom/yulong/android/content/res/ThemeResources;->getThemeFile(Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    .line 64
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/yulong/android/content/res/ThemeResourcesSystem;->getSystem()Lcom/yulong/android/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yulong/android/content/res/ThemeResourcesSystem;->getThemeFile(Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;Ljava/lang/String;)Z

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
    .line 52
    .local p2, "integers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p3, "charSequences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/CharSequence;>;"
    invoke-static {}, Lcom/yulong/android/content/res/ThemeResourcesSystem;->getSystem()Lcom/yulong/android/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/yulong/android/content/res/ThemeResourcesSystem;->mergeThemeValues(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/yulong/android/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 55
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/yulong/android/content/res/ThemeResources;->reload()V

    .line 45
    invoke-static {}, Lcom/yulong/android/content/res/ThemeResourcesSystem;->getSystem()Lcom/yulong/android/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/content/res/ThemeResourcesSystem;->reload()V

    .line 46
    return-void
.end method
