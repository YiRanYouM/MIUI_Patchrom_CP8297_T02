.class Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeTriStateAction"
.end annotation


# instance fields
.field private final IMAGE_BLACK:[I

.field private final IMAGE_IDS:[I

.field private final IMAGE_LIGHT:[I

.field private final ITEM_IDS:[I

.field private final TEXT_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioManager"    # Landroid/media/AudioManager;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x4

    .line 1573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1560
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    .line 1561
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->TEXT_IDS:[I

    .line 1562
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->IMAGE_IDS:[I

    .line 1563
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->IMAGE_LIGHT:[I

    .line 1565
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->IMAGE_BLACK:[I

    .line 1574
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    .line 1575
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    .line 1576
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    .line 1579
    new-array v0, v1, [I

    const/4 v1, 0x0

    const-string v2, "MODEL_STANDARD"

    invoke-static {v2}, Lcom/yulong/android/reflect/YLReflect;->getSceneModeType(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MODEL_MEETING"

    invoke-static {v2}, Lcom/yulong/android/reflect/YLReflect;->getSceneModeType(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MODEL_QUIET"

    invoke-static {v2}, Lcom/yulong/android/reflect/YLReflect;->getSceneModeType(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "MODEL_FLIGHT"

    invoke-static {v2}, Lcom/yulong/android/reflect/YLReflect;->getSceneModeType(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->modeValue:[I
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$2102([I)[I

    .line 1584
    return-void

    .line 1560
    nop

    :array_0
    .array-data 4
        0x102029a
        0x102029b
        0x102029c
        0x1020396
    .end array-data

    .line 1561
    :array_1
    .array-data 4
        0x1020391
        0x1020393
        0x1020395
        0x1020398
    .end array-data

    .line 1562
    :array_2
    .array-data 4
        0x1020390
        0x1020392
        0x1020394
        0x1020397
    .end array-data

    .line 1563
    :array_3
    .array-data 4
        0x10807df
        0x10807dd
        0x10807e1
        0x10802e9
    .end array-data

    .line 1565
    :array_4
    .array-data 4
        0x10807e0
        0x10807de
        0x10807e2
        0x10807e5
    .end array-data
.end method

.method private indexToRingerMode(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1593
    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .param p1, "ringerMode"    # I

    .prologue
    .line 1588
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 1598
    const v11, 0x1090046

    const/4 v12, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v11, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 1601
    .local v10, "v":Landroid/view/View;
    sget-object v11, Lcom/android/internal/policy/impl/GlobalActions;->OsystemManager:Ljava/lang/Object;

    invoke-static {v11}, Lcom/yulong/android/reflect/YLReflect;->SystemManager_getCurrentModel(Ljava/lang/Object;)I

    move-result v2

    .line 1602
    .local v2, "currentIndex":I
    const/4 v8, 0x0

    .line 1603
    .local v8, "selectedIndex":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->modeValue:[I
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$2100()[I

    move-result-object v11

    array-length v11, v11

    if-ge v6, v11, :cond_0

    .line 1604
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->modeValue:[I
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$2100()[I

    move-result-object v11

    aget v11, v11, v6

    if-ne v2, v11, :cond_1

    .line 1605
    move v8, v6

    .line 1611
    :cond_0
    const-string v11, "GlobalActions"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "currentIndex = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; selectedIndex = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    iget-object v11, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    array-length v7, v11

    .line 1614
    .local v7, "lengths":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v7, :cond_4

    .line 1615
    iget-object v11, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    aget v11, v11, v3

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1616
    .local v5, "itemView":Landroid/view/View;
    if-ne v8, v3, :cond_2

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v5, v11}, Landroid/view/View;->setSelected(Z)V

    .line 1617
    iget-object v11, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->TEXT_IDS:[I

    aget v11, v11, v3

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1618
    .local v9, "text":Landroid/widget/TextView;
    iget-object v11, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->IMAGE_IDS:[I

    aget v11, v11, v3

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1619
    .local v4, "image":Landroid/widget/ImageView;
    if-ne v8, v3, :cond_3

    .line 1620
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x106009b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1621
    iget-object v11, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->IMAGE_LIGHT:[I

    aget v11, v11, v3

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1627
    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1628
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1614
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1608
    .end local v3    # "i":I
    .end local v4    # "image":Landroid/widget/ImageView;
    .end local v5    # "itemView":Landroid/view/View;
    .end local v7    # "lengths":I
    .end local v9    # "text":Landroid/widget/TextView;
    :cond_1
    move v8, v2

    .line 1603
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1616
    .restart local v3    # "i":I
    .restart local v5    # "itemView":Landroid/view/View;
    .restart local v7    # "lengths":I
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 1623
    .restart local v4    # "image":Landroid/widget/ImageView;
    .restart local v9    # "text":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x106009c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1624
    iget-object v11, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->IMAGE_BLACK:[I

    aget v11, v11, v3

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1630
    .end local v4    # "image":Landroid/widget/ImageView;
    .end local v5    # "itemView":Landroid/view/View;
    .end local v9    # "text":Landroid/widget/TextView;
    :cond_4
    return-object v10
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1649
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1656
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 1679
    :goto_0
    return-void

    .line 1658
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1662
    .local v0, "index":I
    const-string v2, "GlobalActions"

    const-string v3, "SceneMode change"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    new-instance v1, Landroid/content/Intent;

    const-string v2, "yulong.intent.action.SCENE_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1665
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "sceneMode"

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->modeValue:[I
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$2100()[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1666
    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1668
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1677
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 1637
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 1634
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1645
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1641
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 1653
    return-void
.end method
