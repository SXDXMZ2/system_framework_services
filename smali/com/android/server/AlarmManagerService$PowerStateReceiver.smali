.class Lcom/android/server/AlarmManagerService$PowerStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerStateReceiver"
.end annotation


# static fields
.field private static final ACTION_POWER_STATE_CHANGED:Ljava/lang/String; = "com.sonymobile.SUPER_STAMINA_POWER_STATE_CHANGED"

.field private static final EXTRA_POWER_STATE:Ljava/lang/String; = "power_state"


# instance fields
.field private mStaminaController:Lcom/android/server/AlarmManagerService$StaminaController;

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$StaminaController;)V
    .locals 0
    .parameter
    .parameter "controller"

    .prologue
    .line 1517
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$PowerStateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1518
    iput-object p2, p0, Lcom/android/server/AlarmManagerService$PowerStateReceiver;->mStaminaController:Lcom/android/server/AlarmManagerService$StaminaController;

    .line 1519
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$PowerStateReceiver;->mStaminaController:Lcom/android/server/AlarmManagerService$StaminaController;

    const-string v1, "power_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$StaminaController;->setPowerState(I)V

    .line 1524
    return-void
.end method
