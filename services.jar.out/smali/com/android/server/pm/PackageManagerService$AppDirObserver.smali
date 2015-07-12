.class final Lcom/android/server/pm/PackageManagerService$AppDirObserver;
.super Landroid/os/FileObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDirObserver"
.end annotation


# instance fields
.field private final mIsPrivileged:Z

.field private final mIsRom:Z

.field private final mRootDir:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZZ)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mask"    # I
    .param p4, "isrom"    # Z
    .param p5, "isPrivileged"    # Z

    .prologue
    .line 7373
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 7374
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 7375
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    .line 7376
    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    .line 7377
    iput-boolean p5, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsPrivileged:Z

    .line 7378
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 25
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 7381
    const/16 v24, 0x0

    .line 7382
    .local v24, "removedPackage":Ljava/lang/String;
    const/16 v23, -0x1

    .line 7383
    .local v23, "removedAppId":I
    const/4 v11, 0x0

    .line 7384
    .local v11, "removedUsers":[I
    const/4 v13, 0x0

    .line 7385
    .local v13, "addedPackage":Ljava/lang/String;
    const/16 v18, -0x1

    .line 7386
    .local v18, "addedAppId":I
    const/16 v17, 0x0

    .line 7388
    .local v17, "addedUsers":[I
    const/16 v5, 0x61

    .line 7392
    .local v5, "scanMode":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v9

    .line 7393
    const/16 v20, 0x0

    .line 7394
    .local v20, "fullPathStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 7395
    .local v3, "fullPath":Ljava/io/File;
    if-eqz p2, :cond_0

    .line 7396
    :try_start_0
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7397
    .end local v3    # "fullPath":Ljava/io/File;
    .local v19, "fullPath":Ljava/io/File;
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-object v20

    move-object/from16 v3, v19

    .line 7403
    .end local v19    # "fullPath":Ljava/io/File;
    .restart local v3    # "fullPath":Ljava/io/File;
    :cond_0
    :try_start_2
    # invokes: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService;->access$2100(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7406
    monitor-exit v9

    .line 7495
    :cond_1
    :goto_0
    return-void

    .line 7411
    :cond_2
    # invokes: Lcom/android/server/pm/PackageManagerService;->ignoreCodePath(Ljava/lang/String;)Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PackageManagerService;->access$2200(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7412
    monitor-exit v9

    goto :goto_0

    .line 7480
    :catchall_0
    move-exception v2

    :goto_1
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 7414
    :cond_3
    const/16 v21, 0x0

    .line 7415
    .local v21, "p":Landroid/content/pm/PackageParser$Package;
    const/16 v22, 0x0

    .line 7417
    .local v22, "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7418
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    move-object/from16 v21, v0

    .line 7419
    if-eqz v21, :cond_4

    .line 7420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v22, v0

    .line 7421
    if-eqz v22, :cond_a

    .line 7422
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    const/4 v7, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v7}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v11

    .line 7427
    :cond_4
    :goto_2
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v17

    .line 7428
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 7429
    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x248

    if-eqz v2, :cond_5

    .line 7430
    if-eqz v22, :cond_5

    .line 7432
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v6}, Lcom/android/server/pm/PackageManagerService;->removePackageLI(Lcom/android/server/pm/PackageSetting;Z)V

    .line 7433
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 7434
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move/from16 v23, v0

    .line 7438
    :cond_5
    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x88

    if-eqz v2, :cond_8

    .line 7439
    if-nez v21, :cond_8

    .line 7441
    const/4 v4, 0x6

    .line 7442
    .local v4, "flags":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    if-eqz v2, :cond_6

    .line 7443
    or-int/lit8 v4, v4, 0x41

    .line 7445
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsPrivileged:Z

    if-eqz v2, :cond_6

    .line 7446
    or-int/lit16 v4, v4, 0x80

    .line 7451
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v20

    # invokes: Lcom/android/server/pm/PackageManagerService;->isScanningDir(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 7452
    const-string v2, "PackageManager"

    const-string v6, "AppDirObserver.onEvent: preset apk need to check lib"

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7453
    or-int/lit16 v5, v5, 0x400

    .line 7456
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    # invokes: Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$2400(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;

    move-result-object v21

    .line 7459
    if-eqz v21, :cond_8

    .line 7466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 7467
    :try_start_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v21

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, v21

    # invokes: Lcom/android/server/pm/PackageManagerService;->updatePermissionsLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)V
    invoke-static {v7, v10, v0, v2}, Lcom/android/server/pm/PackageManagerService;->access$2500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)V

    .line 7469
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 7470
    :try_start_7
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 7471
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v18

    .line 7477
    .end local v4    # "flags":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 7478
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 7479
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 7480
    :try_start_9
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 7482
    if-eqz v24, :cond_9

    .line 7483
    new-instance v8, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 7484
    .local v8, "extras":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.UID"

    move/from16 v0, v23

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7485
    const-string v2, "android.intent.extra.DATA_REMOVED"

    const/4 v6, 0x0

    invoke-virtual {v8, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7486
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, v24

    invoke-static/range {v6 .. v11}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 7489
    .end local v8    # "extras":Landroid/os/Bundle;
    :cond_9
    if-eqz v13, :cond_1

    .line 7490
    new-instance v8, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 7491
    .restart local v8    # "extras":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.UID"

    move/from16 v0, v18

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7492
    const-string v12, "android.intent.action.PACKAGE_ADDED"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v14, v8

    invoke-static/range {v12 .. v17}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    goto/16 :goto_0

    .line 7424
    .end local v8    # "extras":Landroid/os/Bundle;
    :cond_a
    :try_start_a
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v11

    goto/16 :goto_2

    .line 7428
    :catchall_1
    move-exception v2

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 7467
    .restart local v4    # "flags":I
    :cond_b
    const/4 v2, 0x0

    goto :goto_3

    .line 7469
    :catchall_2
    move-exception v2

    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 7479
    .end local v4    # "flags":I
    :catchall_3
    move-exception v2

    :try_start_e
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 7480
    .end local v3    # "fullPath":Ljava/io/File;
    .end local v21    # "p":Landroid/content/pm/PackageParser$Package;
    .end local v22    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v19    # "fullPath":Ljava/io/File;
    :catchall_4
    move-exception v2

    move-object/from16 v3, v19

    .end local v19    # "fullPath":Ljava/io/File;
    .restart local v3    # "fullPath":Ljava/io/File;
    goto/16 :goto_1
.end method
