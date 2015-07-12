.class public final Landroid/hardware/RemoteIrManager$CarrierFrequencyRange;
.super Ljava/lang/Object;
.source "RemoteIrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/RemoteIrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CarrierFrequencyRange"
.end annotation


# instance fields
.field private final mMaxFrequency:I

.field private final mMinFrequency:I

.field final synthetic this$0:Landroid/hardware/RemoteIrManager;


# direct methods
.method public constructor <init>(Landroid/hardware/RemoteIrManager;II)V
    .locals 0
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 480
    iput-object p1, p0, Landroid/hardware/RemoteIrManager$CarrierFrequencyRange;->this$0:Landroid/hardware/RemoteIrManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput p2, p0, Landroid/hardware/RemoteIrManager$CarrierFrequencyRange;->mMinFrequency:I

    .line 482
    iput p3, p0, Landroid/hardware/RemoteIrManager$CarrierFrequencyRange;->mMaxFrequency:I

    .line 483
    return-void
.end method


# virtual methods
.method public getMaxFrequency()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Landroid/hardware/RemoteIrManager$CarrierFrequencyRange;->mMaxFrequency:I

    return v0
.end method

.method public getMinFrequency()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Landroid/hardware/RemoteIrManager$CarrierFrequencyRange;->mMinFrequency:I

    return v0
.end method
