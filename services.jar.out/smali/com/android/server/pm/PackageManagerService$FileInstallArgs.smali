.class Lcom/android/server/pm/PackageManagerService$FileInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileInstallArgs"
.end annotation


# instance fields
.field codeFileName:Ljava/lang/String;

.field created:Z

.field installDir:Ljava/io/File;

.field libraryPath:Ljava/lang/String;

.field resourceFileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p2, "packageURI"    # Landroid/net/Uri;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "dataDir"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 9011
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v0, p0

    move-object v1, p2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    .line 9012
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;)V

    .line 8994
    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    .line 9013
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    .line 9014
    const-string v0, ".apk"

    # invokes: Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p3, v0}, Lcom/android/server/pm/PackageManagerService;->access$3900(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 9015
    .local v7, "apkName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 9016
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePathFromCodePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 9017
    new-instance v0, Ljava/io/File;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mAppLibInstallDir:Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->access$4000(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 9018
    return-void

    .line 9013
    .end local v7    # "apkName":Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 7
    .param p2, "params"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    .prologue
    .line 8996
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 8997
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getPackageUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    iget v3, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    iget-object v4, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;)V

    .line 8994
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    .line 9000
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p2, "fullCodePath"    # Ljava/lang/String;
    .param p3, "fullResourcePath"    # Ljava/lang/String;
    .param p4, "nativeLibraryPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 9002
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    .line 9003
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;)V

    .line 8994
    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    .line 9004
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9005
    .local v7, "codeFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    .line 9006
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 9007
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 9008
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 9009
    return-void
.end method

.method private cleanUp()Z
    .locals 21

    .prologue
    .line 9256
    const/4 v14, 0x1

    .line 9257
    .local v14, "ret":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v15

    .line 9258
    .local v15, "sourceDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v12

    .line 9263
    .local v12, "publicSourceDir":Ljava/lang/String;
    if-eqz v15, :cond_5

    const-string v18, "/system/presetapp"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 9267
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9268
    .local v16, "sourceFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    .line 9269
    .local v17, "strDelPath":Ljava/lang/String;
    const/4 v11, 0x0

    .line 9270
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    .line 9272
    .local v2, "assmgr":Landroid/content/res/AssetManager;
    :try_start_0
    new-instance v3, Landroid/content/res/AssetManager;

    invoke-direct {v3}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    .line 9273
    .end local v2    # "assmgr":Landroid/content/res/AssetManager;
    .local v3, "assmgr":Landroid/content/res/AssetManager;
    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v6

    .line 9274
    .local v6, "cookie":I
    if-eqz v6, :cond_4

    .line 9275
    const-string v18, "AndroidManifest.xml"

    move-object/from16 v0, v18

    invoke-virtual {v3, v6, v0}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    :goto_0
    move-object v2, v3

    .line 9284
    .end local v3    # "assmgr":Landroid/content/res/AssetManager;
    .end local v6    # "cookie":I
    .restart local v2    # "assmgr":Landroid/content/res/AssetManager;
    :goto_1
    move-object v5, v11

    .line 9285
    .local v5, "attrsTemp":Landroid/content/res/XmlResourceParser;
    move-object v4, v5

    .line 9287
    .local v4, "attrs":Landroid/util/AttributeSet;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/pm/PackageManagerService;->parsePackageName(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/lang/String;
    invoke-static {v0, v11, v4}, Lcom/android/server/pm/PackageManagerService;->access$4200(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v10

    .line 9289
    .local v10, "packageName":Ljava/lang/String;
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "delete systemPresetapp apk Name = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9290
    sget-object v18, Lcom/android/server/pm/PackageManagerService;->mDelApkPackagesName:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/PackageManagerService;->writeDelApk()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    .line 9347
    .end local v2    # "assmgr":Landroid/content/res/AssetManager;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "attrsTemp":Landroid/content/res/XmlResourceParser;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v16    # "sourceFile":Ljava/io/File;
    .end local v17    # "strDelPath":Ljava/lang/String;
    :cond_0
    :goto_2
    if-eqz v12, :cond_2

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 9348
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9349
    .local v13, "publicSourceFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_1

    .line 9350
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Package public source "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " does not exist."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9352
    :cond_1
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 9353
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 9357
    .end local v13    # "publicSourceFile":Ljava/io/File;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 9358
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9359
    .local v9, "nativeLibraryFile":Ljava/io/File;
    invoke-static {v9}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;)Z

    .line 9360
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v18

    if-nez v18, :cond_3

    .line 9361
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Couldn\'t delete native library directory "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9365
    .end local v9    # "nativeLibraryFile":Ljava/io/File;
    :cond_3
    return v14

    .line 9278
    .restart local v3    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v6    # "cookie":I
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v16    # "sourceFile":Ljava/io/File;
    .restart local v17    # "strDelPath":Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed adding asset path:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 9280
    .end local v6    # "cookie":I
    :catch_0
    move-exception v7

    move-object v2, v3

    .line 9281
    .end local v3    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v2    # "assmgr":Landroid/content/res/AssetManager;
    .local v7, "e":Ljava/lang/Exception;
    :goto_3
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unable to read AndroidManifest.xml of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 9292
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "attrsTemp":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v7

    .line 9293
    .local v7, "e":Ljava/io/IOException;
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " clean up exception"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/lang/Throwable;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 9294
    .end local v7    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 9295
    .local v8, "ee":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " clean up exception"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/lang/Throwable;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 9296
    .end local v8    # "ee":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v7

    .line 9297
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " clean up exception"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/lang/Throwable;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 9299
    .end local v2    # "assmgr":Landroid/content/res/AssetManager;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "attrsTemp":Landroid/content/res/XmlResourceParser;
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v16    # "sourceFile":Ljava/io/File;
    .end local v17    # "strDelPath":Ljava/lang/String;
    :cond_5
    if-eqz v15, :cond_7

    const-string v18, "/system/presetota"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 9303
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9304
    .restart local v16    # "sourceFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    .line 9305
    .restart local v17    # "strDelPath":Ljava/lang/String;
    const/4 v11, 0x0

    .line 9306
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    .line 9308
    .restart local v2    # "assmgr":Landroid/content/res/AssetManager;
    :try_start_4
    new-instance v3, Landroid/content/res/AssetManager;

    invoke-direct {v3}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 9309
    .end local v2    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v3    # "assmgr":Landroid/content/res/AssetManager;
    :try_start_5
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v6

    .line 9310
    .restart local v6    # "cookie":I
    if-eqz v6, :cond_6

    .line 9311
    const-string v18, "AndroidManifest.xml"

    move-object/from16 v0, v18

    invoke-virtual {v3, v6, v0}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v11

    :goto_4
    move-object v2, v3

    .line 9319
    .end local v3    # "assmgr":Landroid/content/res/AssetManager;
    .end local v6    # "cookie":I
    .restart local v2    # "assmgr":Landroid/content/res/AssetManager;
    :goto_5
    move-object v5, v11

    .line 9320
    .restart local v5    # "attrsTemp":Landroid/content/res/XmlResourceParser;
    move-object v4, v5

    .line 9322
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/pm/PackageManagerService;->parsePackageName(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/lang/String;
    invoke-static {v0, v11, v4}, Lcom/android/server/pm/PackageManagerService;->access$4200(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v10

    .line 9324
    .restart local v10    # "packageName":Ljava/lang/String;
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "delete systemPresetapp ota apk Name = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9325
    sget-object v18, Lcom/android/server/pm/PackageManagerService;->mOTADelApkPackagesName:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/PackageManagerService;->writeDelOTAApk()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_2

    .line 9327
    .end local v10    # "packageName":Ljava/lang/String;
    :catch_4
    move-exception v7

    .line 9328
    .local v7, "e":Ljava/io/IOException;
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " clean up exception"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/lang/Throwable;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 9314
    .end local v2    # "assmgr":Landroid/content/res/AssetManager;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "attrsTemp":Landroid/content/res/XmlResourceParser;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v3    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v6    # "cookie":I
    :cond_6
    :try_start_7
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed adding asset path:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    .line 9316
    .end local v6    # "cookie":I
    :catch_5
    move-exception v7

    move-object v2, v3

    .line 9317
    .end local v3    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v2    # "assmgr":Landroid/content/res/AssetManager;
    .local v7, "e":Ljava/lang/Exception;
    :goto_6
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unable to read AndroidManifest.xml of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 9329
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "attrsTemp":Landroid/content/res/XmlResourceParser;
    :catch_6
    move-exception v8

    .line 9330
    .restart local v8    # "ee":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " clean up exception"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/lang/Throwable;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 9331
    .end local v8    # "ee":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7
    move-exception v7

    .line 9332
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " clean up exception"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/lang/Throwable;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 9335
    .end local v2    # "assmgr":Landroid/content/res/AssetManager;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "attrsTemp":Landroid/content/res/XmlResourceParser;
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v16    # "sourceFile":Ljava/io/File;
    .end local v17    # "strDelPath":Ljava/lang/String;
    :cond_7
    if-eqz v15, :cond_0

    .line 9336
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9337
    .restart local v16    # "sourceFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_8

    .line 9338
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Package source "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " does not exist."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9339
    const/4 v14, 0x0

    .line 9342
    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    .line 9316
    .restart local v2    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v17    # "strDelPath":Ljava/lang/String;
    :catch_8
    move-exception v7

    goto/16 :goto_6

    .line 9280
    :catch_9
    move-exception v7

    goto/16 :goto_3
.end method

.method private getLibraryPathFromCodePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 9244
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mAppLibInstallDir:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$4000(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->getApkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResourcePathFromCodePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 9219
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v0

    .line 9220
    .local v0, "codePath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9223
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9224
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9225
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->getApkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9226
    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9233
    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9234
    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9237
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9239
    .end local v0    # "codePath":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-object v0
.end method

.method private setPermissions()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 9383
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 9384
    const/16 v0, 0x1a4

    .line 9387
    .local v0, "filePermissions":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a4

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v1

    .line 9388
    .local v1, "retCode":I
    if-eqz v1, :cond_0

    .line 9389
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t set new package file permissions for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". The return code was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9393
    const/4 v2, 0x0

    .line 9397
    .end local v0    # "filePermissions":I
    .end local v1    # "retCode":I
    :cond_0
    return v2
.end method


# virtual methods
.method checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z
    .locals 8
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 9023
    const-string v3, "devicestoragemonitor"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceStorageMonitorService;

    .line 9025
    .local v0, "dsm":Lcom/android/server/DeviceStorageMonitorService;
    if-nez v0, :cond_0

    .line 9026
    const-string v3, "PackageManager"

    const-string v4, "Couldn\'t get low memory threshold; no free limit imposed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9027
    const-wide/16 v1, 0x0

    .line 9038
    .local v1, "lowThreshold":J
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "com.android.defcontainer"

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 9040
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v4

    invoke-interface {p1, v3, v4, v1, v2}, Lcom/android/internal/app/IMediaContainerService;->checkInternalFreeStorage(Landroid/net/Uri;ZJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 9042
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .end local v1    # "lowThreshold":J
    :goto_1
    return v3

    .line 9029
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/DeviceStorageMonitorService;->isMemoryLow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9030
    const-string v3, "PackageManager"

    const-string v4, "Memory is reported as being too low; aborting package install"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9031
    const/4 v3, 0x0

    goto :goto_1

    .line 9034
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/DeviceStorageMonitorService;->getMemoryLowThreshold()J

    move-result-wide v1

    .restart local v1    # "lowThreshold":J
    goto :goto_0

    .line 9042
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v3
.end method

.method cleanUpResourcesLI()V
    .locals 5

    .prologue
    .line 9369
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    .line 9370
    .local v1, "sourceDir":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9371
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Installer;->rmdex(Ljava/lang/String;)I

    move-result v0

    .line 9372
    .local v0, "retCode":I
    if-gez v0, :cond_0

    .line 9373
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t remove dex file for package:  at location "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", retcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9379
    .end local v0    # "retCode":I
    :cond_0
    return-void
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .locals 12
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "temp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v1, -0x4

    .line 9071
    if-eqz p2, :cond_1

    .line 9074
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->createCopyFile()V

    .line 9077
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 9079
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to create temp copy package on : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9147
    :cond_0
    :goto_0
    return v1

    .line 9085
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9086
    .local v0, "codeFile":Ljava/io/File;
    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    if-nez v7, :cond_2

    .line 9088
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 9090
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->setPermissions()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 9099
    :cond_2
    const/4 v5, 0x0

    .line 9101
    .local v5, "out":Landroid/os/ParcelFileDescriptor;
    const/high16 v7, 0x30000000

    :try_start_1
    invoke-static {v0, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 9107
    const/4 v6, -0x4

    .line 9109
    .local v6, "ret":I
    :try_start_2
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v8, "com.android.defcontainer"

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 9111
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-interface {p1, v7, v8, v5}, Lcom/android/internal/app/IMediaContainerService;->copyResource(Landroid/net/Uri;Landroid/content/pm/ContainerEncryptionParams;Landroid/os/ParcelFileDescriptor;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 9113
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 9114
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v11}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 9117
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 9118
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9122
    .local v2, "destResourceFile":Ljava/io/File;
    :try_start_3
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    invoke-static {v7, v2}, Lcom/android/internal/content/PackageHelper;->extractPublicFiles(Ljava/lang/String;Ljava/io/File;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 9131
    .end local v2    # "destResourceFile":Ljava/io/File;
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getNativeLibraryPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9132
    .local v4, "nativeLibraryFile":Ljava/io/File;
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Copying native libraries to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9133
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 9134
    invoke-static {v4}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;)Z

    .line 9135
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 9138
    :cond_4
    :try_start_4
    # invokes: Lcom/android/server/pm/PackageManagerService;->copyNativeLibrariesForInternalApp(Ljava/io/File;Ljava/io/File;)I
    invoke-static {v0, v4}, Lcom/android/server/pm/PackageManagerService;->access$4100(Ljava/io/File;Ljava/io/File;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v1

    .line 9139
    .local v1, "copyRet":I
    if-ne v1, v11, :cond_0

    .end local v1    # "copyRet":I
    :goto_1
    move v1, v6

    .line 9147
    goto/16 :goto_0

    .line 9094
    .end local v4    # "nativeLibraryFile":Ljava/io/File;
    .end local v5    # "out":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "ret":I
    :catch_0
    move-exception v3

    .line 9095
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to create file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 9102
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "out":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v3

    .line 9103
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to create file descriptor for : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 9113
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "ret":I
    :catchall_0
    move-exception v7

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 9114
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v7

    .line 9123
    .restart local v2    # "destResourceFile":Ljava/io/File;
    :catch_2
    move-exception v3

    .line 9124
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "PackageManager"

    const-string v8, "Couldn\'t create a new zip file for the public parts of a forward-locked app."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9126
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 9142
    .end local v2    # "destResourceFile":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "nativeLibraryFile":Ljava/io/File;
    :catch_3
    move-exception v3

    .line 9143
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "PackageManager"

    const-string v8, "Copying native libraries failed"

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9144
    const/16 v6, -0x6e

    goto :goto_1
.end method

.method createCopyFile()V
    .locals 3

    .prologue
    .line 9051
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    :goto_0
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    .line 9055
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    # invokes: Lcom/android/server/pm/PackageManagerService;->createTempPackageFile(Ljava/io/File;)Ljava/io/File;
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$2900(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 9056
    .local v0, "codeFile":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 9057
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 9065
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePathFromCodePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 9066
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getLibraryPathFromCodePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 9067
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    .line 9068
    :goto_1
    return-void

    .line 9051
    .end local v0    # "codeFile":Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    goto :goto_0

    .line 9060
    .restart local v0    # "codeFile":Ljava/io/File;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    goto :goto_1
.end method

.method doPostDeleteLI(Z)Z
    .locals 1
    .param p1, "delete"    # Z

    .prologue
    .line 9402
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUpResourcesLI()V

    .line 9403
    const/4 v0, 0x1

    return v0
.end method

.method doPostInstall(II)I
    .locals 1
    .param p1, "status"    # I
    .param p2, "uid"    # I

    .prologue
    .line 9208
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 9209
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 9211
    :cond_0
    return p1
.end method

.method doPreInstall(I)I
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 9151
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 9152
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 9154
    :cond_0
    return p1
.end method

.method doRename(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "status"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "oldCodePath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 9158
    if-eq p1, v8, :cond_1

    .line 9159
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 9203
    :cond_0
    :goto_0
    return v7

    .line 9162
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9163
    .local v4, "oldCodeFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9164
    .local v6, "oldResourceFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getNativeLibraryPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9167
    .local v5, "oldLibraryFile":Ljava/io/File;
    const-string v9, ".apk"

    # invokes: Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p3, p2, v9}, Lcom/android/server/pm/PackageManagerService;->access$3900(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9168
    .local v0, "apkName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".apk"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9169
    .local v1, "newCodeFile":Ljava/io/File;
    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 9172
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 9175
    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePathFromCodePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9176
    .local v3, "newResFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 9179
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 9182
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getLibraryPathFromCodePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9183
    .local v2, "newLibraryFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 9184
    invoke-static {v2}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;)Z

    .line 9185
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 9187
    :cond_3
    invoke-virtual {v5, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 9188
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot rename native library directory "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 9192
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 9195
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->setPermissions()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 9199
    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v8

    .line 9203
    goto/16 :goto_0
.end method

.method getCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9047
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    return-object v0
.end method

.method getNativeLibraryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9249
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 9250
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getLibraryPathFromCodePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 9252
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    return-object v0
.end method

.method getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9215
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    return-object v0
.end method
