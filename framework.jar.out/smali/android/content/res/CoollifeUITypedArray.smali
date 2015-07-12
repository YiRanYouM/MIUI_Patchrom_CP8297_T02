.class public Landroid/content/res/CoollifeUITypedArray;
.super Landroid/content/res/TypedArray;
.source "CoollifeUITypedArray.java"


# instance fields
.field private mIsCoollifeUIResources:Z


# direct methods
.method constructor <init>(Landroid/content/res/Resources;[I[II)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "data"    # [I
    .param p3, "indices"    # [I
    .param p4, "len"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;[I[II)V

    .line 20
    instance-of v0, p1, Landroid/content/res/CoollifeUIResources;

    iput-boolean v0, p0, Landroid/content/res/CoollifeUITypedArray;->mIsCoollifeUIResources:Z

    .line 21
    return-void
.end method

.method private getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-boolean v3, p0, Landroid/content/res/CoollifeUITypedArray;->mIsCoollifeUIResources:Z

    if-nez v3, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-object v2

    .line 47
    :cond_1
    mul-int/lit8 p1, p1, 0x6

    .line 49
    iget-object v3, p0, Landroid/content/res/CoollifeUITypedArray;->mData:[I

    add-int/lit8 v4, p1, 0x0

    aget v1, v3, v4

    .line 50
    .local v1, "type":I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 54
    iget-object v2, p0, Landroid/content/res/CoollifeUITypedArray;->mData:[I

    add-int/lit8 v3, p1, 0x3

    aget v0, v2, v3

    .line 55
    .local v0, "id":I
    invoke-virtual {p0}, Landroid/content/res/CoollifeUITypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    check-cast v2, Landroid/content/res/CoollifeUIResources;

    invoke-virtual {v2, v0}, Landroid/content/res/CoollifeUIResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/content/res/CoollifeUITypedArray;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 26
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/content/res/CoollifeUITypedArray;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 36
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 40
    .end local v0    # "text":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method
