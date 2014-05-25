.class public Lcom/android/server/LightsService;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LightsService$Light;
    }
.end annotation


# static fields
.field public static final BRIGHTNESS_MODE_SENSOR:I = 0x1

.field public static final BRIGHTNESS_MODE_USER:I = 0x0

.field private static final DEBUG:Z = false

.field public static final LIGHT_FLASH_HARDWARE:I = 0x2

.field public static final LIGHT_FLASH_NONE:I = 0x0

.field public static final LIGHT_FLASH_TIMED:I = 0x1

.field public static final LIGHT_ID_ATTENTION:I = 0x5

.field public static final LIGHT_ID_AUDIO:I = 0xc

.field public static final LIGHT_ID_BACKLIGHT:I = 0x0

.field public static final LIGHT_ID_BATTERY:I = 0x3

.field public static final LIGHT_ID_BLUETOOTH:I = 0x6

.field public static final LIGHT_ID_BUTTONS:I = 0x2

.field public static final LIGHT_ID_BUTTONS2:I = 0x8

.field public static final LIGHT_ID_COUNT:I = 0xf

.field public static final LIGHT_ID_KEYBOARD:I = 0x1

.field public static final LIGHT_ID_NOTIFICATIONS:I = 0x4

.field public static final LIGHT_ID_PATTERN_1:I = 0xb

.field public static final LIGHT_ID_PATTERN_2:I = 0xa

.field public static final LIGHT_ID_PATTERN_3:I = 0x9

.field public static final LIGHT_ID_RGB_BTN:I = 0xd

.field public static final LIGHT_ID_THEME:I = 0xe

.field public static final LIGHT_ID_WIFI:I = 0x7

.field private static final MSG_BBL_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LightsService"


# instance fields
.field private mButtonBrightness:I

.field private mButtonLightEnable:Z

.field private mButtonLightTimeout:I

.field private final mContext:Landroid/content/Context;

.field private mH:Landroid/os/Handler;

.field private final mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

.field private mLightHandler:Landroid/os/Handler;

.field private final mLights:[Lcom/android/server/LightsService$Light;

.field private mNativePointer:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xf

    .line 232
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-array v1, v3, [Lcom/android/server/LightsService$Light;

    iput-object v1, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    .line 76
    iput-object v4, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    .line 174
    new-instance v1, Lcom/android/server/LightsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LightsService$1;-><init>(Lcom/android/server/LightsService;)V

    iput-object v1, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    .line 275
    new-instance v1, Lcom/android/server/LightsService$3;

    invoke-direct {v1, p0}, Lcom/android/server/LightsService$3;-><init>(Lcom/android/server/LightsService;)V

    iput-object v1, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    .line 234
    invoke-static {}, Lcom/android/server/LightsService;->init_native()I

    move-result v1

    iput v1, p0, Lcom/android/server/LightsService;->mNativePointer:I

    .line 235
    iput-object p1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    .line 237
    iget-object v1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/LightsService;->mButtonLightTimeout:I

    .line 240
    iget-object v1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/LightsService;->mButtonLightEnable:Z

    .line 243
    iget-object v1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/LightsService;->mButtonBrightness:I

    .line 246
    new-instance v1, Lcom/android/server/LightsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/LightsService$2;-><init>(Lcom/android/server/LightsService;)V

    iput-object v1, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    .line 259
    const-string v1, "hardware"

    iget-object v2, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 261
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    new-instance v2, Lcom/android/server/LightsService$Light;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;ILcom/android/server/LightsService$1;)V

    aput-object v2, v1, v0

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LightsService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LightsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    return v0
.end method

.method static synthetic access$200(IIIIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 30
    invoke-static/range {p0 .. p6}, Lcom/android/server/LightsService;->setLight_native(IIIIIII)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LightsService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/LightsService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/LightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mButtonLightEnable:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/LightsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/server/LightsService;->mButtonBrightness:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/LightsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/server/LightsService;->mButtonLightTimeout:I

    return v0
.end method

.method private static native finalize_native(I)V
.end method

.method private static native init_native()I
.end method

.method private static native setLight_native(IIIIIII)V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 267
    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    invoke-static {v0}, Lcom/android/server/LightsService;->finalize_native(I)V

    .line 268
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 269
    return-void
.end method

.method public getLight(I)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "id"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public setBrightnessButtonLight(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    const/4 v1, 0x2

    .line 83
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mButtonLightEnable:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_0
.end method

.method public turnOffButtonLight()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/LightsService;->setBrightnessButtonLight(I)V

    .line 92
    return-void
.end method

.method public turnOnButtonLight()V
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/server/LightsService;->mButtonBrightness:I

    invoke-virtual {p0, v0}, Lcom/android/server/LightsService;->setBrightnessButtonLight(I)V

    .line 80
    return-void
.end method
