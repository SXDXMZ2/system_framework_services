.class Lcom/android/server/DeviceStorageMonitorService$3;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceStorageMonitorService;)V
    .locals 0
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 563
    const-string v0, "DeviceStorageMonitorService"

    const-string v1, "received: DSMS_test test intent"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/DeviceStorageMonitorService;->access$202(I)I

    .line 565
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #calls: Lcom/android/server/DeviceStorageMonitorService;->dumpFileInfo()V
    invoke-static {v0}, Lcom/android/server/DeviceStorageMonitorService;->access$300(Lcom/android/server/DeviceStorageMonitorService;)V

    .line 566
    return-void
.end method
