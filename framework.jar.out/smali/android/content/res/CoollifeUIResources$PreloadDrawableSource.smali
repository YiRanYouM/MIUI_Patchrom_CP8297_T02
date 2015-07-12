.class Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;
.super Ljava/lang/Object;
.source "CoollifeUIResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/CoollifeUIResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreloadDrawableSource"
.end annotation


# instance fields
.field public mAssetCookie:I

.field public mIsDefaultTheme:Z

.field public mResourcePath:Ljava/lang/String;

.field public mThemePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "assetCookie"    # I
    .param p2, "resourcePath"    # Ljava/lang/String;
    .param p3, "isDefaultTheme"    # Z
    .param p4, "themePath"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput p1, p0, Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;->mAssetCookie:I

    .line 364
    iput-object p2, p0, Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;->mResourcePath:Ljava/lang/String;

    .line 365
    iput-boolean p3, p0, Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;->mIsDefaultTheme:Z

    .line 366
    iput-object p4, p0, Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    .line 367
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAssetCookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;->mAssetCookie:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mResourcePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;->mResourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mIsDefaultTheme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;->mIsDefaultTheme:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mThemePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/CoollifeUIResources$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
